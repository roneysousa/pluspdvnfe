unit uFrmLocalizaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  TfrmLocalizarCliente = class(TfrmLocPadrao)
    RadioGroup1: TRadioGroup;
    cdsFornecedores: TClientDataSet;
    dsForn: TDataSource;
    DBGrid1: TDBGrid;
    dspForn: TDataSetProvider;
    dstForn: TSQLDataSet;
    pnlEndereco: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label58: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    cdsConsultarid: TIntegerField;
    cdsConsultarnome_fantasia: TStringField;
    cdsConsultarrazao_social: TStringField;
    cdsConsultarlogradouro: TStringField;
    cdsConsultarnumero: TIntegerField;
    cdsConsultarnome_cidade: TStringField;
    cdsConsultarnome_bairro: TStringField;
    cdsConsultaridentidade_uf: TStringField;
    cdsFornecedoresid: TIntegerField;
    cdsFornecedorestipo_pessoa: TStringField;
    cdsFornecedorescpf_cnpj: TStringField;
    cdsFornecedoresrazao_social: TStringField;
    cdsFornecedoresnome_fantasia: TStringField;
    cdsFornecedoreslogradouro: TStringField;
    cdsFornecedoresnumero: TIntegerField;
    cdsFornecedoresfor_cidade: TStringField;
    cdsFornecedoresfor_bairro: TStringField;
    cdsFornecedoresuf: TStringField;
    cdsConsultarcpf_cnpj: TStringField;
    cdsConsultartipo_pessoa: TStringField;
    cdsConsultarCNPJ_CPF: TStringField;
    cdsFornecedoresCNPJ_CPF: TStringField;
    procedure edtConsultarChange(Sender: TObject);
    procedure cdsConsultarCalcFields(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsFornecedoresCalcFields(DataSet: TDataSet);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarCliente: TfrmLocalizarCliente;
  M_TPCONSULTA : String;

implementation

uses uFuncoes, udmDados;

{$R *.dfm}

procedure TfrmLocalizarCliente.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   If (M_TPCONSULTA = 'C') Then
    Begin
       Texto := 'select CL.id, cl.cpf_cnpj, cl.tipo_pessoa, CL.nome_fantasia, CL.razao_social, CL.logradouro, CL.numero, CI.nome as NOME_CIDADE, ';
       Texto := Texto + ' BA.nome as NOME_BAIRRO, CL.identidade_uf from CLIENTES CL  ';
       Texto := Texto + ' Left Join cidades CI ON CL.id_cidade = CI.id  ';
       Texto := Texto + ' Left Join bairros BA ON CL.id_bairro = BA.id  ';

       //
       If not uFuncoes.Empty(edtConsultar.Text) Then
        begin
            cdsConsultar.Close;
            with dstConsultar do
            begin
                Close;
                Active := False;
                //
                Texto := Texto +'where (UPPER(CL.razao_social) like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
                //
                Texto := Texto +' order by CL.razao_social ';
                //
                CommandText := Texto;
                //
                Active := True;
            end;
            cdsConsultar.FetchParams;
            cdsConsultar.Open;
        End
        Else
            cdsConsultar.Close;
    End;
    //
   If (M_TPCONSULTA = 'F') Then
    Begin
       Texto := ' select F.id, f.tipo_pessoa, f.cpf_cnpj, f.razao_social, f.nome_fantasia, f.logradouro, f.numero, ';
       Texto := Texto + ' ci.nome as FOR_CIDADE, ba.nome as FOR_BAIRRO, ci.uf from FORNECEDORES F ';
       Texto := Texto + ' Left Join cidades CI ON f.id_cidade = CI.id ';
       Texto := Texto + ' Left Join bairros BA ON f.id_bairro = BA.id ';
       //
       If not uFuncoes.Empty(edtConsultar.Text) Then
        begin
            with cdsFornecedores do
            begin
                Close;
                Active := False;
                Texto := Texto +' where (UPPER(f.razao_social) like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
                Texto := Texto +' order by f.razao_social ';
                CommandText := Texto;
                //
                Open;
            end;
        End
        Else
            cdsFornecedores.Close;
    End;
end;

procedure TfrmLocalizarCliente.cdsConsultarCalcFields(DataSet: TDataSet);
begin
  inherited;
    If not uFuncoes.Empty(cdsConsultarcpf_cnpj.AsString) Then
      if (cdsConsultartipo_pessoa.AsString = 'J') Then
          cdsConsultarCNPJ_CPF.AsString := uFuncoes.FormataCNPJ(cdsConsultarcpf_cnpj.AsString)
      Else
          cdsConsultarCNPJ_CPF.AsString := uFuncoes.FormataCPF(cdsConsultarcpf_cnpj.AsString);
end;

procedure TfrmLocalizarCliente.RadioGroup1Click(Sender: TObject);
begin
  inherited;
      if (RadioGroup1.ItemIndex = 0) Then
        Begin
          M_TPCONSULTA := 'C';
          grdConsultar.Visible := true;
          DBGrid1.Visible      := false;
          pnlEndereco.Visible  := True;
        End
       Else
        begin
          M_TPCONSULTA := 'F';
          DBGrid1.Visible      := true;
          DBGrid1.Align := alClient;
          pnlEndereco.Visible  := False;
          grdConsultar.Visible := False;
        End;
      //
      edtConsultar.Clear;
      edtConsultar.SetFocus;
end;

procedure TfrmLocalizarCliente.FormShow(Sender: TObject);
begin
  inherited;
     M_TPCONSULTA := 'C';
end;

procedure TfrmLocalizarCliente.cdsFornecedoresCalcFields(
  DataSet: TDataSet);
begin
  inherited;
      if NOT uFuncoes.Empty(cdsFornecedorescpf_cnpj.AsString) Then
          cdsFornecedoresCNPJ_CPF.AsString := cdsFornecedorescpf_cnpj.AsString;
end;

procedure TfrmLocalizarCliente.edtConsultarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if not (cdsFornecedores.IsEmpty) Then
     begin
          If (Key = vk_Up) and not (cdsFornecedores.Bof) Then
              cdsFornecedores.Prior;
          If (Key = vk_down) and not (cdsFornecedores.Eof) Then
              cdsFornecedores.Next;
     End;
end;

procedure TfrmLocalizarCliente.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //
   If (key = #13) and not uFuncoes.Empty(edtConsultar.Text) Then
    begin
       key := #0;
       If not (cdsFornecedores.IsEmpty) Then
        begin
           ModalResult := mrOk;
           Close;
        End;
    End;
end;

procedure TfrmLocalizarCliente.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
       If not (cdsFornecedores.IsEmpty) Then
        begin
           ModalResult := mrOk;
           Close;
        End;
end;

end.
