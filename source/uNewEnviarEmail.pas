unit uNewEnviarEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Menus,
  DB, DBClient,  uEmailSynalist,  uInterfaceEmail, BmsXPProgressBar,
  ComCtrls, Buttons;

  // uEmailIndy, uEmailClever,

type
  TFrmNewEmailSend = class(TForm)
    Label1: TLabel;
    edtPara: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    memTexto: TMemo;
    edtAssunto: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtPorta: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtSMTP: TEdit;
    rgEmail: TRadioGroup;
    Label4: TLabel;
    edtDe: TEdit;
    edtArquivoAnexo: TEdit;
    Edit2: TEdit;
    StatusBar1: TStatusBar;
    BmsXPProgressBar1: TBmsXPProgressBar;
    btnEnviar: TBitBtn;
    lblMens: TLabel;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtParaExit(Sender: TObject);
  public
  end;

var
  FrmNewEmailSend: TFrmNewEmailSend;
  idLoja, iLista, idCliente, idFornecedor : Integer;
  aEmail, aArquivoAnexo : String;

implementation

uses uFuncoes, udmDados, udmNFe;

{$R *.dfm}

procedure TFrmNewEmailSend.btnEnviarClick(Sender: TObject);
var
  objEmail: IEmail;
  objEstrategia: IEstrategiaEnvio;
  bFechar, bSSL : Boolean;
begin
     if uFuncoes.Empty(edtSMTP.Text) Then
     begin
          edtSMTP.SetFocus;
          Exit;
     End;
     //
    if uFuncoes.Empty(edtPorta.Text) Then
     begin
          edtPorta.SetFocus;
          Exit;
     End;
     //
    if uFuncoes.Empty(edtUsuario.Text) Then
     begin
          Application.MessageBox(PChar('Digite seu endereço de email.'),
               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION);
          edtUsuario.SetFocus;
          Exit;
     End;
     //
    if uFuncoes.Empty( edtSenha.Text) Then
     begin
          Application.MessageBox(PChar('Digite sua senha de email.'),
               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION);
          edtSenha.SetFocus;
          Exit;
     End;
     //
    if uFuncoes.Empty( edtDe.Text) Then
     begin
          edtDe.SetFocus;
          Exit;
     End;
     //
    if uFuncoes.Empty( edtPara.Text) Then
     begin
          edtPara.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(edtAssunto.Text) then
      begin
          edtAssunto.SetFocus;
          Exit;
      End;
     //
     BmsXPProgressBar1.Position := 0;
     lblMens.Visible := True;
     btnEnviar.Enabled := False;
     BmsXPProgressBar1.Position := 10;
     bFechar := True;
     //
     if (udmdados.aEmail_Requer_Autenticacao = 'S') Then
         bSSL := True
     Else
         bSSL := False;
     //
     Application.ProcessMessages;
     Try
        Screen.Cursor := crHourGlass;
        Try
          objEmail := EmailContexto.Create;
          objEmail.RemetenteEmail    := edtUsuario.Text;
          objEmail.DestinatarioEmail := edtPara.Text;
          objEmail.Assunto           := edtAssunto.Text;
          objEmail.Host              := edtSMTP.Text;
          objEmail.Usuario := edtUsuario.Text;
          objEmail.Senha := edtSenha.Text;
          objEmail.Porta := StrToInt(edtPorta.Text);
          objEmail.Mensagem := memTexto.Text;
          if (edtArquivoAnexo.Text <> '') and ((iLista <> 1))  Then
              objEmail.Anexo := edtArquivoAnexo.Text;
          if (iLista = 1) and (aArquivoAnexo <> '') Then
           begin
              objEmail.ListaAnexos := aArquivoAnexo;
           End;
          {if (Edit2.Text <> '') Then
              objEmail.Anexo2 := Edit2.Text;}

          case rgEmail.ItemIndex of
            0 :
                begin
                // objEstrategia := TEmailIndy.Create(Self);
                End;
            1 : objEstrategia := TEmailSynalist.Create(Self);
            2 :
              begin
                  //  objEstrategia := TEmailClever.Create(Self);
              End;
          end;
          BmsXPProgressBar1.Position := 30;
          Application.ProcessMessages;
          objEmail.Enviar(objEstrategia, bSSL);
          BmsXPProgressBar1.Position := 70;
          Application.ProcessMessages;
          BmsXPProgressBar1.Position := 100;
          lblMens.Caption := 'Concluído.';
        Except
              on e: exception do
              begin
                   lblMens.Caption := 'Erro ao tentar enviou de email!!!';
                    Application.MessageBox(PChar('Não foi possível o enviou de e-mail.'+#13+
                           'Verifique sua senha por favor.'+#13+
                           e.Message),
                   'ATENÇÃO', MB_OK+MB_ICONWARNING);
                   //
                   If Application.MessageBox('Tentar novamente?',
                       'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                      begin
                            bFechar := False;
                            //btnEnviarClick(Sender);
                            Exit;
                      End;
              End;
        End;
     Finally
          btnEnviar.Enabled := True;
          BmsXPProgressBar1.Position := 100;
          Screen.Cursor := crDefault;
          if not (bFechar) Then
             BmsXPProgressBar1.Position := 0;
          //     lblMens.Caption := 'Concluído.';
     End;
     Application.ProcessMessages;
     if (bFechar) Then
     begin
          Sleep(1000);
          Close;
     End;
end;

procedure TFrmNewEmailSend.FormShow(Sender: TObject);
Var
    aNomePasta, aNomeArquivo , aArquivo : String;
begin
     edtSMTP.Text    := uDMDados.aEmail_Host_Smtp;
     edtPorta.Text   := uDMDados.aEmail_Porta;
     edtUsuario.Text := uDMDados.aEmail_Endereco;
     edtSenha.Text   := uDMDados.aEmail_Password;    // uFuncoes.Criptografia(DM.CdsConfigCFG_EMAIL_PASSWORD.AsString, uFuncoes.chave);
     edtDe.Text      := uDMDados.aEmail_Endereco;
     //DM.GetNomeEmpresa(idLoja);
     edtPara.CLEAR;
     If not uFuncoes.Empty(aEmail) Then
        edtPara.Text := aEmail;
     //
     if (idCliente > 0) Then
        edtPara.Text := DMDados.GetEMailCliente(idCliente);
     if (idFornecedor > 0) Then
        edtPara.Text := DMDados.GetEMailFornecedor(idFornecedor);

     //
     if uFuncoes.Empty(aArquivoAnexo) Then
     begin
         if (iLista = 1) Then
         begin

         End
         Else
         begin
              aNomePasta := ExtractFilePath( Application.ExeName );
              aNomeArquivo := 'Email_Licitacao.PDF';
              aArquivo := aNomePasta + aNomeArquivo;
              if FileExists(aArquivo) Then
                 edtArquivoAnexo.Text := aArquivo;
         End;
     End
     Else
     begin
          if FileExists(aArquivoAnexo) Then
            edtArquivoAnexo.Text := aArquivoAnexo;
     End;
     //
     Panel2.Visible := False;
     edtPara.SetFocus;    
end;

procedure TFrmNewEmailSend.edtParaExit(Sender: TObject);
begin
     if not uFuncoes.empty(edtPara.Text) Then
       begin
             if not uFuncoes.ValidarEMail(edtPara.Text) Then
              begin
                   Application.MessageBox(PChar('Endereço de Email inválido.'),
                            'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                   edtPara.SetFocus;
                   Exit;
              End;
       End;
end;

end.
