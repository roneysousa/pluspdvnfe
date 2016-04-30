unit uFrmCadDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, ToolEdit,
  RXDBCtrl;

type
  TfrmCadDuplicata = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    dbeNumero: TDBEdit;
    dsCadastro: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    dbeValor: TDBEdit;
    dbeDtVencimento: TDBDateEdit;
    procedure dbeDtVencimentoExit(Sender: TObject);
    procedure dbeValorExit(Sender: TObject);
    procedure dbeNumeroExit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dbeNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbeDtVencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeValorKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Function ValidarData(): Boolean;
  public
    { Public declarations }
  end;

var
  frmCadDuplicata: TfrmCadDuplicata;
  aOpcao : String;
  iItem : Integer;

implementation

uses udmNFe, uFuncoes, uDMDados;

{$R *.dfm}

procedure TfrmCadDuplicata.dbeDtVencimentoExit(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDtVencimento.text)) Then
     begin
     End;
end;

procedure TfrmCadDuplicata.dbeValorExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeValor.Text)
     and (dsCadastro.DataSet.FieldByName('DUP_VALOR').AsFloat < 0) Then
      begin
           Application.MessageBox('Valor Inválida!','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeValor.Clear;
           dbeValor.SetFocus;
           Exit;
      End;
end;

procedure TfrmCadDuplicata.dbeNumeroExit(Sender: TObject);
begin
   If (dsCadastro.DataSet.State in [dsInsert])
      and not uFuncoes.Empty(dbeNumero.Text) Then
     begin
          {dsCadastro.DataSet.FieldByName('NFD_NRDUPLICATA').AsString
            := uFuncoes.StrZero(dbeNumero.Text,10);
          //dbeNumero.Text := uFuncoes.StrZero(dbeNumero.Text,10);}
          {If (dmDados.ProcurarValor(dbeNumero.Text, 'NFD_NRDUPLICATA', 'NOTA_FISCAL_DUPLICATA')) Then
            begin
                 Application.MessageBox('Número de duplicata já existe.','ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeNumero.Clear;
                 dbeNumero.SetFocus;
                 Exit;
            End;}
     End;
end;

procedure TfrmCadDuplicata.btnOKClick(Sender: TObject);
begin
      If uFuncoes.Empty(dbeNumero.Text) Then
       begin
           Application.MessageBox('Digite o número da duplicata.','ATENÇÃO',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeNumero.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(uFuncoes.RemoveChar(dbeDtVencimento.Text)) Then
       begin
           Application.MessageBox('Digite a data de vencimento.','ATENÇÃO',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeDtVencimento.SetFocus;
           Exit;
      End;
      //
      if not (ValidarData) then
         Exit;
      //
      If uFuncoes.Empty(dbeValor.Text) Then
       begin
           Application.MessageBox('Digite o valor.','ATENÇÃO',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeValor.SetFocus;
           Exit;
      End;
      //
      if (StrtoFloat(dbeValor.Text) <= 0) Then
       begin
           Application.MessageBox('Valor inválido','ATENÇÃO',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeValor.SetFocus;
           Exit;
      End;

      //
      if (dmNFe.cdsListaDuplicatas.State in [dsInsert]) Then
        begin
            dmNFe.cdsListaDuplicatasDUP_ID_NOTA_FISCAL.AsInteger := dmNFe.cdsNotaFiscalid.AsInteger;
            dmNFe.cdsListaDuplicatasDUP_ITEM.AsInteger           := iItem + 1;
        End;
      //
      dmNFe.cdsListaDuplicatas.Post; 
      //
      Close;
end;

procedure TfrmCadDuplicata.dbeNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
     //If not( key in['0'..'9',#8, #13] ) then
       // key:=#0;
     //
     if (key = #13) and not uFuncoes.Empty(dbeNumero.Text) Then
     begin
          key := #0;
          dbeDtVencimento.SetFocus;
     End;
end;

procedure TfrmCadDuplicata.FormShow(Sender: TObject);
begin
     if (aOpcao = 'I') then
        dsCadastro.DataSet.Append
     Else
        dsCadastro.DataSet.Edit;
end;

procedure TfrmCadDuplicata.dbeDtVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDtVencimento.Text)) Then
     begin
          key := #0;
          dbeValor.SetFocus;
     End;
end;

procedure TfrmCadDuplicata.dbeValorKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and not uFuncoes.Empty(dbeValor.Text) Then
     begin
          key := #0;
          btnOK.SetFocus;
     End;

end;

function TfrmCadDuplicata.ValidarData: Boolean;
begin
      Result := False;
       try
            dbeDtVencimento.Date := StrtoDate(dbeDtVencimento.text);
            if (dbeDtVencimento.Date < Date) Then
              begin
                  Application.MessageBox('Data inferior a data atual!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDtVencimento.Date := Date();
                  dbeDtVencimento.SetFocus;
                  Exit;
              End;
              Result := true;
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inválida!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDtVencimento.SetFocus;
                  Exit;
             End;
       End;

end;

procedure TfrmCadDuplicata.BitBtn2Click(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          dsCadastro.DataSet.Cancel;
end;

end.
