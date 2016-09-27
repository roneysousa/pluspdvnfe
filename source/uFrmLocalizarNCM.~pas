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
   End
   Else
       cdsConsultar.Close;
end;

end.
