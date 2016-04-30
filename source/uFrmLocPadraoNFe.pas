unit uFrmLocPadraoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, FMTBcd, DBClient,
  Provider, DB, SqlExpr;

type
  TfrmLocPadraoNFe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtConsultar: TEdit;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    grdConsultar: TDBGrid;
    dsConsultar: TDataSource;
    dstConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    procedure grdConsultarDblClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure edtConsultarChange(Sender: TObject);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     procedure FecharJanela;
  public
    { Public declarations }
  end;

var
  frmLocPadraoNFe: TfrmLocPadraoNFe;

implementation

uses Udmdados, uFuncoes;

{$R *.dfm}

procedure TfrmLocPadraoNFe.FecharJanela;
begin
     If not (cdsConsultar.IsEmpty) Then
       begin
          ModalResult := mrOk;
          Close;
       End;
end;

procedure TfrmLocPadraoNFe.grdConsultarDblClick(Sender: TObject);
begin
    FecharJanela;
end;

procedure TfrmLocPadraoNFe.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (key = #13) and not uFuncoes.Empty(edtConsultar.Text) Then
    begin
       key := #0;
       FecharJanela;
    End;
end;

procedure TfrmLocPadraoNFe.edtConsultarChange(Sender: TObject);
begin
    if uFuncoes.Empty(edtConsultar.Text) Then
        cdsConsultar.Close;
end;

procedure TfrmLocPadraoNFe.edtConsultarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if not (cdsConsultar.IsEmpty) Then
     begin
          If (Key = vk_Up) and not (cdsConsultar.Bof) Then
              cdsConsultar.Prior;
          If (Key = vk_down) and not (cdsConsultar.Eof) Then
              cdsConsultar.Next;
     End;
end;

procedure TfrmLocPadraoNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key = VK_ESCAPE) Then
        Close;
end;

procedure TfrmLocPadraoNFe.FormShow(Sender: TObject);
begin
     KeyPreview := True;
end;

end.
