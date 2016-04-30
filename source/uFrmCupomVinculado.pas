unit uFrmCupomVinculado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFrmCupomVinculado = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    dbeNumECF: TDBEdit;
    Label2: TLabel;
    dbeNumCOO: TDBEdit;
    Label3: TLabel;
    cmbModDocFiscal: TDBComboBox;
    Label4: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure dbeNumECFKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumCOOKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumECFExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCupomVinculado: TFrmCupomVinculado;

implementation

uses uFrmNFENew, udmNFe, uFuncoes;

{$R *.dfm}

procedure TFrmCupomVinculado.btnOKClick(Sender: TObject);
begin
     if uFuncoes.Empty(dbeNumECF.Text) Then
      begin
           Application.MessageBox(PChar('Digite o n�mero do ECF.'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeNumECF.SetFocus;
           Exit;
      End;
      //
     if uFuncoes.Empty(dbeNumCOO.Text) Then
      begin
           Application.MessageBox(PChar('Digite o n�mero do COO.'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeNumCOO.SetFocus;
           Exit;
      End;
     //
     if uFuncoes.Empty(cmbModDocFiscal.Text) Then
      begin
           Application.MessageBox(PChar('Selecione o Modelo do Documento Fiscal.'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           cmbModDocFiscal.SetFocus;
           Exit;
      End;
      //
      ModalResult :=  mrOk;
end;

procedure TFrmCupomVinculado.dbeNumECFKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCupomVinculado.dbeNumCOOKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCupomVinculado.dbeNumECFExit(Sender: TObject);
begin
     if not uFuncoes.Empty(dbeNumECF.Text) Then
        if (StrtoInt(dbeNumECF.Text) > 0) Then
             dbeNumECF.Text := uFuncoes.StrZero(dbeNumECF.Text,3);
end;

end.
