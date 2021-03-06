unit uFrmDescontoValor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit;

type
  TFrmDescontoValor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtValor: TCurrencyEdit;
    edtDesconto: TCurrencyEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescontoExit(Sender: TObject);
  private
    { Private declarations }
    Procedure FormatarCamposCasasDecimais();
    Function ValidarValor(): Boolean;
  public
    { Public declarations }
  end;

var
  FrmDescontoValor: TFrmDescontoValor;
  fValorTotal, FResultado : Double;

implementation

uses uFuncoes, udmDados;

{$R *.dfm}

procedure TFrmDescontoValor.btnOKClick(Sender: TObject);
begin
     if uFuncoes.Empty(edtDesconto.Text) Then
      begin
           Application.MessageBox('Digite o valor do desconto.','ATEN��O',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          edtDesconto.SetFocus;
          Exit;
      End;
      //
      if not (ValidarValor) Then
         Exit;
     //
     FResultado := 0;
     if (edtDesconto.Value > 0) Then
      begin
           FResultado := uFuncoes.ConverterValorPercentual(fValorTotal, edtDesconto.Value);
           ModalResult := mrOk;
      End;
end;

procedure TFrmDescontoValor.FormatarCamposCasasDecimais;
Var
    idQuantCasas : Integer;
begin
    idQuantCasas := udmDados.iCasasDecimais;

    Case idQuantCasas of
      1 :
         begin
              edtValor.DecimalPlaces := 2;
              edtValor.DisplayFormat := ',0.00;';
             //
         End;
      2 :
         begin
              edtValor.DecimalPlaces := 2;
              edtValor.DisplayFormat := ',0.00;';
             //
         End;
      3 :
         begin
              edtValor.DecimalPlaces := 3;
              edtValor.DisplayFormat := ',0.000;';
         End;
      4 :
        begin
              edtValor.DecimalPlaces := 4;
              edtValor.DisplayFormat := ',0.0000;';
         End;
      5 :
        begin
              edtValor.DecimalPlaces := 5;
              edtValor.DisplayFormat := ',0.00000;';
         End;
      Else
      begin
              edtValor.DecimalPlaces := 6;
              edtValor.DisplayFormat := ',0.000000;';
      End;
    End;
end;

procedure TFrmDescontoValor.FormShow(Sender: TObject);
begin
    FormatarCamposCasasDecimais;
    //
    edtValor.Value := fValorTotal;
end;

function TFrmDescontoValor.ValidarValor: Boolean;
begin
     Result := False;
     if not ufuncoes.Empty(edtDesconto.Text) then
     begin
          if (edtDesconto.Value < fValorTotal) then
              Result := True
          Else
          begin
               Application.MessageBox('Valor do desconto n�o pode ser igual ou superior ao do Sub-Total!!!','ATEN��O',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
               edtDesconto.SetFocus;
          End;
     End;
end;

procedure TFrmDescontoValor.edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) then
     begin
         key := #0;
         btnOK.SetFocus;
     End;
end;

procedure TFrmDescontoValor.edtDescontoExit(Sender: TObject);
begin
     if not ufuncoes.Empty(edtDesconto.Text) then
        if (edtDesconto.Value < 0) Then
           edtDesconto.Value := abs(edtDesconto.Value);
end;

end.
