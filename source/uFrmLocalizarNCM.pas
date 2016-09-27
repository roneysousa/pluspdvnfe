unit uFrmLocalizarNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadraoNFe, FMTBcd, DBClient, Provider, DB, SqlExpr,
  Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls;

type
  TFrmLocalizarNCM = class(TfrmLocPadraoNFe)
    cdsConsultarid: TStringField;
    cdsConsultardescricao: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PesquisarNCM(aDescricao : String);
  end;

var
  FrmLocalizarNCM: TFrmLocalizarNCM;

implementation

uses uFuncoes, udmDados;

{$R *.dfm}

procedure TFrmLocalizarNCM.edtConsultarChange(Sender: TObject);
begin
  inherited;
  If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
       with cdsConsultar do
        begin
            Close;
            Params[0].AsString := edtConsultar.Text+'%';
            Open;
        end;
        //PesquisarNCM(edtConsultar.Text);
   End
   Else
       cdsConsultar.Close;
end;

procedure TFrmLocalizarNCM.PesquisarNCM(aDescricao: String);
var qraux : TSQLquery;
    texto, aDescricaoNCM : string;
begin
    texto := 'Select id, descricao from ncm where (descricao like :pdescricao) ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
       SQLConnection := dmDados.sqlConexao;
       sql.Add(texto);
       Params[0].AsString := aDescricao+'%';
       Open;
       //
       if not (IsEmpty) Then
          begin
               first;
               While not (Eof) do
               begin
                   aDescricaoNCM := Utf8ToAnsi(FieldByName('descricao').AsString);
                   //
                   Next;
               End;
          End;
       finally
         free;
       end;
end;

end.
