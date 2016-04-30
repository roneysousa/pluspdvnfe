unit uFrmLocProdutoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadraoNFe, FMTBcd, DBClient, Provider, DB, SqlExpr,
  Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls;

type
  TfrmLocProdutoServico = class(TfrmLocPadraoNFe)
    cdsConsultarid: TIntegerField;
    cdsConsultarcod_barras: TStringField;
    cdsConsultardescricao: TStringField;
    cdsConsultarid_ncm: TStringField;
    cdsConsultarid_unidade: TStringField;
    cdsConsultarvalor_venda: TFMTBCDField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocProdutoServico: TfrmLocProdutoServico;

implementation

uses uFuncoes, udmDados;

{$R *.dfm}

procedure TfrmLocProdutoServico.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'select id, cod_barras, descricao, id_ncm, id_unidade, valor_venda from PRODUTOS ';
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        with cdsConsultar do
        begin
            Close;
            Texto := Texto +'where (UPPER(descricao) like '+QuotedStr(Copy(edtConsultar.Text,1,59)+'%')+') ';
            Texto := Texto +' order by descricao ';
            CommandText := Texto;
            Open;
        end;
   End
   Else
       cdsConsultar.close;
end;

end.
