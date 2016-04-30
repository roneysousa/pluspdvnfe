unit uFrmLocTransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFrmLocTransportadora = class(TfrmLocPadrao)
    cdsConsultarid: TIntegerField;
    cdsConsultarnome_fantasia: TStringField;
    cdsConsultarrazao_social: TStringField;
    cdsConsultartipo_pessoa: TStringField;
    cdsConsultarcpf_cnpj: TStringField;
    cdsConsultartransportadora: TBooleanField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocTransportadora: TFrmLocTransportadora;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TFrmLocTransportadora.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'select id, nome_fantasia, razao_social, tipo_pessoa, cpf_cnpj, transportadora from fornecedores ';
   Texto := Texto + 'where (transportadora = :ptransportadora) ';
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        with cdsConsultar do
        begin
            Close;
            Active := False;
            //
            Texto := Texto +' and (UPPER(nome_fantasia) like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
            //
            Texto := Texto +' order by nome_fantasia ';
            //
            CommandText := Texto;
            Params[0].AsBoolean := true;
            //
            Open;
        end;
   End;

end;

end.
