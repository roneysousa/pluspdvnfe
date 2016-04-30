unit uFrmInutilizarNum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmInutilizarNum = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtAno: TEdit;
    edtModelo: TEdit;
    edtSerie: TEdit;
    edtNumInicial: TEdit;
    edtNumFinal: TEdit;
    edtJustificativa: TEdit;
    Label7: TLabel;
    edtRazaoSocial: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSerieKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumInicialKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumFinalKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtNumFinalExit(Sender: TObject);
    procedure edtNumInicialExit(Sender: TObject);
    procedure edtAnoExit(Sender: TObject);
    procedure edtJustificativaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure CarregarLoja(aCmb : TComboBox);
  public
    { Public declarations }
  end;

var
  frmInutilizarNum: TfrmInutilizarNum;

implementation

uses uFuncoes, udmNFe, udmDados, uFrmPlusPdvNfe;

{$R *.dfm}

procedure TfrmInutilizarNum.btnOKClick(Sender: TObject);
begin
     // Ano
     If uFuncoes.Empty(edtAno.Text) Then
      begin
           Application.MessageBox(PChar('Digite os dois �ltimos digitos do ano.'),
            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtAno.SetFocus;
           Exit;
      End;
      //   S�rie
     If uFuncoes.Empty(edtSerie.Text) Then
      begin
           Application.MessageBox(PChar('Digite o n�mero de s�rie da NF-e.'),
            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtSerie.SetFocus;
           Exit;
      End;
     // Numera��o Inicial
     If uFuncoes.Empty(edtNumInicial.Text) Then
      begin
           Application.MessageBox(PChar('Digite o n�mero da NF-e inicial a ser inutilizada.'),
            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtNumInicial.SetFocus;
           Exit;
      End;
     // Numera��o Final
     If uFuncoes.Empty(edtNumFinal.Text) Then
      begin
           Application.MessageBox(PChar('Digite o n�mero da NF-e final a ser inutilizada.'),
            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtNumFinal.SetFocus;
           Exit;
      End;
     // Justificativa
     If uFuncoes.Empty(edtJustificativa.Text) Then
      begin
           Application.MessageBox(PChar('Informe a justificativa do pedido de inutiliza��o.'),
            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtJustificativa.SetFocus;
           Exit;
      End;
     // Justificativa
     If (Length(edtJustificativa.Text) < 15) Then
      begin
           Application.MessageBox(PChar('Justificativa deve ter no m�nimo 15 caracteres.'),
              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtJustificativa.SetFocus;
           Exit;
      End;
      //    
      ModalResult := mrOk;
end;

procedure TfrmInutilizarNum.edtAnoKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
     if (key = #13) and not ufuncoes.Empty(edtAno.Text) then
     begin
         edtSerie.SetFocus;
         Exit;
     End;
end;

procedure TfrmInutilizarNum.edtSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
     if (key = #13) and not ufuncoes.Empty(edtSerie.Text) then
     begin
         edtNumInicial.SetFocus;
         Exit;
     End;
end;

procedure TfrmInutilizarNum.edtNumInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;

     if (key = #13) and not ufuncoes.Empty(edtNumInicial.Text) then
     begin
         edtNumFinal.SetFocus;
         Exit;
     End;
end;

procedure TfrmInutilizarNum.edtNumFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;

     if (key = #13) and not ufuncoes.Empty(edtNumFinal.Text) then
     begin
         edtJustificativa.SetFocus;
         Exit;
     End;
end;

procedure TfrmInutilizarNum.CarregarLoja(aCmb: TComboBox);
begin

end;

procedure TfrmInutilizarNum.FormShow(Sender: TObject);
begin
    edtRazaoSocial.Text := dmDados.GetRazaoSocialEmpresa(uFrmPlusPdvNfe.idEmpresa);
end;

procedure TfrmInutilizarNum.edtNumFinalExit(Sender: TObject);
Var
   iNumeracao, idEmitente : Integer;
begin
    { if not uFuncoes.Empty(edtNumInicial.Text) and
        not uFuncoes.Empty(edtNumFinal.Text) then
      begin
           if (StrtoInt(edtNumFinal.Text) < StrtoInt(edtNumInicial.Text)) Then
           begin
                Application.MessageBox(PChar('Numera��o final deve ser maior ou igual a inicial.'),
                 'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNumFinal.Clear;
                edtNumFinal.SetFocus;
                Exit;
           End;
           //
           iNumeracao := (StrtoInt(edtNumFinal.Text) - StrtoInt(edtNumInicial.Text));
           //
           if (iNumeracao > 1000 ) Then
           begin
                Application.MessageBox(PChar('Quantidade m�xima de numera��o a inutilizar ultrapassa '+#13+'o limite (1.000 n�meros).'),
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNumFinal.Clear;
                edtNumFinal.SetFocus;
                Exit;
           End;
      End;   }
     if not uFuncoes.Empty(edtNumInicial.Text) and
        not uFuncoes.Empty(edtNumFinal.Text) then
      begin
           if (StrtoInt(edtNumFinal.Text) < StrtoInt(edtNumInicial.Text)) Then
           begin
                Application.MessageBox(PChar('Numera��o final deve ser maior ou igual a inicial.'),
                 'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                edtNumFinal.Clear;
                edtNumFinal.SetFocus;
                Exit;
           End;
           //
           iNumeracao := (StrtoInt(edtNumFinal.Text) - StrtoInt(edtNumInicial.Text));
           //
           if (iNumeracao > 1000 ) Then
           begin
                Application.MessageBox(PChar('Quantidade m�xima de numera��o a inutilizar ultrapassa '+#13+'o limite (1.000 n�meros).'),
                   'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                edtNumFinal.Clear;
                edtNumFinal.SetFocus;
                Exit;
           End;
           //
           idEmitente := uFrmPlusPdvNfe.idEmpresa;
           if (dmNFe.GetStatusdaNota(StrtoInt(edtNumFinal.Text), idEmitente) = 2) Then
            begin
                Application.MessageBox(PChar('Nota j� autorizada'),
                 'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                edtNumFinal.SetFocus;
                Exit;
            End;
      End;
end;

procedure TfrmInutilizarNum.edtNumInicialExit(Sender: TObject);
Var
    iNumInicial, idEmitente : Integer;
begin

      If not uFuncoes.Empty(edtNumInicial.Text) Then
       begin
        iNumInicial := 0;
        //Dm.GetProximoNumeroNotaFiscal();
        if (StrtoInt(edtNumInicial.Text) <= iNumInicial) Then
          begin
                Application.MessageBox(PChar('Numera��o inicial deve ser maior que '+InttoStr(iNumInicial)),
                 'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                edtNumInicial.SetFocus;
                Exit;
          End;
          //
         idEmitente :=  uFrmPlusPDVNfe.idEmpresa;
        if (dmNFe.GetStatusdaNota(StrtoInt(edtNumInicial.Text), idEmitente) = 2) Then
          begin
                Application.MessageBox(PChar('Nota j� autorizada'),
                 'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                edtNumInicial.SetFocus;
                Exit;
          End;
      End;
end;

procedure TfrmInutilizarNum.edtAnoExit(Sender: TObject);
Var
   M_DTMOVI, aMsg : String;
   iRetorno : Integer;
begin
      if not uFuncoes.Empty(edtAno.Text) Then
      begin
           M_DTMOVI := Copy(DatetoStr(Date()),1,8) + edtAno.Text;
           iRetorno := uFuncoes.ValidaAnoInutilizacaoNumeracao(StrtoDate(M_DTMOVI));
           //
           Case iRetorno of
             0 : aMsg := 'Ano da Inutiliza��o n�o pode ser superior ao Ano atual.';
             1 : aMsg := 'Ano da inutiliza��o n�o pode ser inferior a 2006.';
           End;
           If (iRetorno <> 2) Then
            begin
                 Application.MessageBox(PChar(aMsg),
                   'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 edtAno.Clear;
                 edtAno.SetFocus;
                 Exit;
           End;
      End;
end;

procedure TfrmInutilizarNum.edtJustificativaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and not ufuncoes.Empty(edtJustificativa.Text) then
     begin
         btnOK.SetFocus;
         Exit;
     End;
end;

end.
