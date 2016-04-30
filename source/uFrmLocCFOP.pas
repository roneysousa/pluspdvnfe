unit uFrmLocCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmLocCFOP = class(TfrmLocPadrao)
    cdsConsultarid: TIntegerField;
    cdsConsultardescricao: TStringField;
    procedure edtConsultarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocCFOP: TfrmLocCFOP;

implementation

uses uFuncoes, udmDados;

{$R *.dfm}

procedure TfrmLocCFOP.edtConsultarChange(Sender: TObject);
begin
 // inherited;
// Select CFOP_CODIGO, CFOP_DESCRICAO from TABELA_CFOP
   if not (cdsConsultar.IsEmpty) and not uFuncoes.Empty(edtConsultar.Text) Then
      cdsConsultar.Locate('descricao', edtConsultar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmLocCFOP.FormShow(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select id, descricao from cfop';
   //
      cdsConsultar.Close;
        with dstConsultar do
        begin
            Close;
            Active := False;
            CommandText := Texto;
            Active := True;
        end;
        cdsConsultar.Open;
end;

end.
