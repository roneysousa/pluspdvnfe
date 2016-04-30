unit uFrmLocVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, Grids, DBGrids,
  ToolEdit, CurrEdit, FMTBcd, DBClient, Provider, SqlExpr, Menus, uFrmPlusPdvNfe;

type
  TFrmLocVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtVenda: TEdit;
    btnConsulta: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dsConsulta: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    grdConsultar: TDBGrid;
    btnConfirma: TBitBtn;
    BitBtn2: TBitBtn;
    edtCFOP: TEdit;
    Label5: TLabel;
    spCFOP: TSpeedButton;
    edtCPFCGC: TEdit;
    Label6: TLabel;
    edtTabela: TCurrencyEdit;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsVenda: TClientDataSet;
    cdsVendaid: TIntegerField;
    cdsVendadata_venda: TSQLTimeStampField;
    cdsVendasituacao: TStringField;
    cdsVendanumero_nfe: TIntegerField;
    procedure btnConsultaClick(Sender: TObject);
    procedure edtVendaChange(Sender: TObject);
    procedure edtVendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVendaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtCFOPExit(Sender: TObject);
    procedure edtCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure edtTabelaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVendaEnter(Sender: TObject);
  private
    { Private declarations }
    Function GetNumeroVenda(iVenda : Integer): Boolean;
    Function VerificarNCMProdutos(aCDS: TClientDataSet): Boolean; 
  public
    { Public declarations }
  end;

var
  FrmLocVenda: TFrmLocVenda;

implementation

uses uFuncoes, uDMDados, uFrmNFENew, udmNFe;

{$R *.dfm}

procedure TFrmLocVenda.btnConsultaClick(Sender: TObject);
Var
   aCFGCGC, aCFOP, aUFEmitente : String;
   fValorTabela : Double;
   iNumVenda : Integer;
begin
     If Not uFuncoes.Empty(edtVenda.Text) Then
      begin
          btnConsulta.Enabled := False;
          edtCPFCGC.Clear;
          //
          try
            Screen.Cursor := crHourGlass;
            If not (GetNumeroVenda(StrtoInt(edtVenda.Text))) Then
             begin
                  Application.MessageBox('Venda não encontrada.','ATENÇÃO',
                      MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  edtVenda.SetFocus;
                  Exit;
             End
             Else
              begin
                  iNumVenda := StrtoInt(edtVenda.Text);
                  //
                  If (dmNFe.VerificaNumeroVendaNFe(iNumVenda)) Then
                     Raise Exception.Create('Número de venda já importada!!!Tente outro número.');
                  //
                  dmNFe.GetAbrirVenda(iNumVenda);
                  //
                  If not (dmNFe.cdsVendaItensNFE.IsEmpty) Then
                  begin
                     aCFGCGC := dmNFe.GetCPFCNPJCliente(dmNFe.cdsVendaItensNFE.FieldByName('id_cliente').asInteger);
                     If Length(aCFGCGC)= 11 Then
                         edtCPFCGC.Text := uFuncoes.FormataCPF(aCFGCGC)
                     Else
                         edtCPFCGC.Text := uFuncoes.FormataCNPJ(aCFGCGC);
                     //
                     if (edtTabela.Value = 0) Then
                         fValorTabela := 1
                     Else
                      if (edtTabela.Value > 1) Then
                         fValorTabela := 1
                      Else
                         fValorTabela := edtTabela.Value;
                     //
                     DMDados.FilterCDS(DMDados.CdsEmpresa, fsInteger, dmNFe.cdsNotaFiscalid_empresa.AsString);
                     //
                     if not (dmDados.cdsEmpresa.IsEmpty) then
                      begin
                           aUFEmitente  := dmDados.GetUFEmitente(dmNFe.cdsNotaFiscalid_empresa.AsInteger);
                           aCFOP        := dmNFe.GetCFOPVendaImportacao(aCFGCGC, aUFEmitente);
                           edtCFOP.Text := aCFOP;
                      End;
                  End;
                  edtCFOP.SetFocus;
              End;
          Finally
              Screen.Cursor := crDefault;
              btnConsulta.Enabled := True;
          End;
          Application.ProcessMessages;
      End
      Else
         edtVenda.SetFocus;
end;

procedure TFrmLocVenda.edtVendaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtVenda.Text) Then
      begin
        dsConsulta.DataSet.Close;
        edtCPFCGC.Clear;
      End;
end;

procedure TFrmLocVenda.edtVendaKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
    //
    If (key = #13) and not uFuncoes.Empty(edtVenda.Text) Then
     begin
          Key := #0;
          btnConsulta.SetFocus;
     End;
end;

procedure TFrmLocVenda.edtVendaExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtVenda.Text) Then
        edtVenda.Text := uFuncoes.StrZero(edtVenda.Text,7);
end;

procedure TFrmLocVenda.FormShow(Sender: TObject);
begin
     dmNFe.cdsVendaItensNFE.Close;
     dstConsulta.CommandText := '';
end;

procedure TFrmLocVenda.btnConfirmaClick(Sender: TObject);
begin
     If uFuncoes.Empty(edtVenda.text) Then
      begin
           edtVenda.SetFocus;
           Exit;
      End;
     //
     If not (VerificarNCMProdutos(dmNFe.cdsVendaItensNFE)) Then
         Exit;
     if not (dmNFe.cdsVendaItensNFE.IsEmpty) Then
      begin
           If uFuncoes.Empty(edtCFOP.Text) Then
            begin
                 Application.MessageBox(PChar('Digite o código do CFOP.'),
                        'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 edtCFOP.SetFocus;
                 Exit;
            End;
            //
           //uFrmNFENew.fValorTabela := edtTabela.Value;
           ModalResult := mrOk;
      End;
end;

procedure TFrmLocVenda.edtCFOPExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtCFOP.Text) Then
      begin
          If not (dmdados.ProcurarValorInt(edtCFOP.Text, 'id', 'cfop')) Then
           begin
                Application.MessageBox(PChar('Código CFOP não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtCFOP.Clear;
                edtCFOP.SetFocus;
                Exit;
           End;
      End;
end;

procedure TFrmLocVenda.edtCFOPKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (key = #13) and not uFuncoes.Empty(edtCFOP.Text) Then
      begin
           key  := #0;
            if (btnConfirma.Enabled) Then
              btnConfirma.SetFocus;
      End;
end;

procedure TFrmLocVenda.edtTabelaKeyPress(Sender: TObject; var Key: Char);
begin
{    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;}
end;

function TFrmLocVenda.GetNumeroVenda(iVenda: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
     Result := false;
     texto := 'Select M.id, m.data_venda , m.situacao, m.numero_nfe from vendas m where (m.id = :pvenda) ';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := dmDados.sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pvenda').AsInteger := iVenda;
         Open;
         //
         if not (IsEmpty) Then
             Begin
                  if (FieldByName('situacao').AsString = 'C') Then
                     raise Exception.Create('Venda cancelada!!!');
                  if not uFuncoes.Empty(FieldByName('numero_nfe').AsString) Then
                     raise Exception.Create('Venda da NF-e :'+FieldByName('numero_nfe').AsString);
                  Result := True;
             End;
       finally
         free;
       end;

end;

function TFrmLocVenda.VerificarNCMProdutos(aCDS: TClientDataSet): Boolean;
Var
   bFluxoOK : Boolean;
begin
     bFluxoOK := True;
     With aCDS do
     begin
          First;
          While not (Eof) do
          begin
              if uFuncoes.Empty(FieldByName('id_ncm').AsString) Then
               begin
                    Application.MessageBox(PChar('Produto: '+FieldByName('id_produto').AsString+' está sem código NCM.'),
                         'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                    bFluxoOK := false;
                    Break;
               End;
              //
              Next;
          End;
          //
          If (bFluxoOK) Then
              Result := true
          Else
              Result := false;
     End;
end;

procedure TFrmLocVenda.edtVendaEnter(Sender: TObject);
begin
     if not (dsConsulta.DataSet.IsEmpty) then
        dsConsulta.DataSet.Close;
end;

end.
