unit uEmailSynalist;

interface

uses
  uInterfaceEmail, Classes, SysUtils, blcksock, pop3send, smtpsend,
  ssl_openssl, mimemess, mimepart, synachar, Forms, Windows;

type
  TEmailSynalist = class(TInterfacedObject, IEstrategiaEnvio)
  private
    _smtp : TSMTPSend;
    _MimeMsg : TMimemess;
    _MimePart : TMimepart;
    FAssunto : String;
    FDestinatarioEmail : String;
    FDestinatarioNome : String;
    FSenha : String;
    FPorta : Integer;
    FRemetenteEmail : String;
    FRemetenteNome : String;
    FUsuario : String;
    FMensagem : String;
    FHost : String;
    FAnexo : String;
    FAnexo2 : String;
    FListaAnexos : String;
    procedure SetAssunto(const Value: String);
    procedure SetDestinatarioEmail(const Value: String);
    procedure SetDestinatarioNome(const Value: String);
    procedure SetSenha(const Value: String);
    procedure SetPorta(const Value: Integer);
    procedure SetRemetenteEmail(const Value: String);
    procedure SetRemetenteNome(const Value: String);
    procedure SetUsuario(const Value: String);
    procedure SetMensagem(const Value: String);
    procedure SetHost(const Value: String);
    procedure SetAnexo(const Value: String);
    procedure SetAnexo2(const Value: String);
    procedure SetListaAnexos(const Value : String);
    function GetAssunto           : String;
    function GetDestinatarioNome  : String;
    function GetDestinatarioEmail : String;
    function GetRemetenteEmail    : String;
    function GetRemetenteNome     : String;
    function GetMensagem          : String;
    function GetSenha             : String;
    function GetHost              : String;
    function GetUsuario           : String;
    function GetPorta             : Integer;
    function GetAnexo             : String;
    function GetAnexo2            : String;
    Function GetListaAnexos       : String;
  public
    constructor Create(AOwner : TComponent);
    destructor Destroy;
    property RemetenteEmail    : String  read GetRemetenteEmail    write SetRemetenteEmail;
    property DestinatarioEmail : String  read GetDestinatarioEmail write SetDestinatarioEmail;
    property RemetenteNome     : String  read GetRemetenteNome     write SetRemetenteNome;
    property DestinatarioNome  : String  read GetDestinatarioNome  write SetDestinatarioNome;
    property Assunto           : String  read GetAssunto           write SetAssunto;
    property Mensagem          : String  read GetMensagem          write SetMensagem;
    property Usuario           : String  read GetUsuario           write SetUsuario;
    property Senha             : String  read GetSenha             write SetSenha;
    property Host              : string  read GetHost              write SetHost;
    property Porta             : Integer read GetPorta             write SetPorta;
    property Anexo             : String read GetAnexo write SetAnexo;
    property Anexo2            : String read GetAnexo2 write SetAnexo2;
    property ListaAnexos       : String read GetListaAnexos write SetListaAnexos;
    procedure Enviar(email: IEmail; SSL : Boolean = True; aFileAnexo : String = ''); overload;
  end;

implementation



{ TEmailSynapse }

constructor TEmailSynalist.Create(AOwner: TComponent);
begin
  _MimeMsg := TMimeMess.Create;
  _MimePart := TMimePart.Create;
  _smtp := TSMTPSend.Create;
end;

destructor TEmailSynalist.Destroy;
begin

end;

procedure TEmailSynalist.Enviar(email: IEmail; SSL : Boolean = True; aFileAnexo : String = '');
var
  stList, msg_lines : TStringList;
  arq: TextFile;
  linha : String;
begin
  RemetenteEmail    := email.RemetenteEmail;
  DestinatarioEmail := email.DestinatarioEmail;
  Assunto := email.Assunto;
  Host := email.Host;
  Usuario := email.Usuario;
  Senha := email.Senha;
  Porta := email.Porta;
  Mensagem := email.Mensagem;
  Anexo    := email.Anexo;
  Anexo2   := email.Anexo2;
  ListaAnexos := email.ListaAnexos;
  try
    msg_lines := TStringList.Create;
    stList := TStringList.Create;
    _MimePart := _MimeMsg.AddPartMultipart('mixed', nil);

    stList.Text := FMensagem;
    _MimeMsg.AddPartText(stList, _MimePart);
    _MimeMsg.header.ToList.Add(FDestinatarioEmail);
    _MimeMsg.header.From :=  FRemetenteEmail;
    _MimeMsg.header.subject := FAssunto;
    if (Anexo <> '') then
        _MimeMsg.AddPartBinaryFromFile(Anexo, _MimePart);
    if (Anexo2 <> '') then
        _MimeMsg.AddPartBinaryFromFile(Anexo2, _MimePart);
    if (ListaAnexos <> '') Then
     begin
          AssignFile ( arq, FListaAnexos );
          Try
                Reset ( arq );
                ReadLn ( arq, linha );
                if (linha <> '') Then
                   _MimeMsg.AddPartBinaryFromFile(linha, _MimePart);
                while not Eof ( arq ) do
                begin
                     { Processe a linha lida aqui. }
                     { Para particionar a linha lida em pedaços, use a função Copy. }
                     ReadLn ( arq, linha );
                     if (linha <> '') Then
                        _MimeMsg.AddPartBinaryFromFile(linha, _MimePart);
                end;
           Finally
                 CloseFile ( arq );
           End;
     End;
    _MimeMsg.EncodeMessage;
    msg_lines.Add(_MimeMsg.Lines.Text);
    _smtp.UserName := FUsuario;
    _smtp.Password := FSenha;
    _smtp.TargetHost := FHost;
    _smtp.TargetPort := inttostr(FPorta);
    _smtp.AutoTLS := True;
    //
    if not _smtp.Login then
      raise Exception.Create('Erro de SMTP: Login: ' + _smtp.EnhCodeString+ sLineBreak + _smtp.FullResult.Text);
    if not _smtp.MailFrom(FRemetenteEmail, Length(FRemetenteEmail)) then
      raise Exception.Create('Erro de SMTP: E-mail de: ' + _smtp.EnhCodeString+sLineBreak + _smtp.ResultString);
    if not _smtp.MailTo(DestinatarioEmail) then
      raise Exception.Create('Erro de SMTP: E-mail para: ' + _smtp.EnhCodeString+sLineBreak+_smtp.ResultString);
    if not _smtp.MailData(msg_lines) then
      raise Exception.Create('Erro de SMTP: Mensagem: ' + _smtp.EnhCodeString+sLineBreak + _smtp.FullResult.Text);
    if not _smtp.Logout then
      raise Exception.Create('Erro de SMTP: Logout: ' + _smtp.EnhCodeString+sLineBreak+ _smtp.FullResult.Text);
    Application.messageBox('E-mail enviado com sucesso!', 'Confirmação!', MB_ICONINFORMATION + MB_OK);
  finally
    msg_lines.Free;
    stList.Free;
  end;
end;

function TEmailSynalist.GetAssunto: String;
begin
  Result := FAssunto;
end;

function TEmailSynalist.GetDestinatarioEmail: String;
begin
  Result := FDestinatarioEmail;
end;

function TEmailSynalist.GetDestinatarioNome: String;
begin
  Result := FDestinatarioNome;
end;

function TEmailSynalist.GetMensagem: String;
begin
  Result := FMensagem;
end;

function TEmailSynalist.GetPorta: Integer;
begin
  Result := FPorta;
end;

function TEmailSynalist.GetRemetenteEmail: String;
begin
  Result := FRemetenteEmail;
end;

function TEmailSynalist.GetRemetenteNome: String;
begin
  Result := FRemetenteNome;
end;

function TEmailSynalist.GetSenha: String;
begin
  Result := FSenha;
end;

function TEmailSynalist.GetHost: String;
begin
  Result := FHost;
end;

function TEmailSynalist.GetUsuario: String;
begin
  Result := FUsuario;
end;

procedure TEmailSynalist.SetAssunto(const Value: String);
begin
  FAssunto := Value;
end;

procedure TEmailSynalist.SetDestinatarioEmail(const Value: String);
begin
  FDestinatarioEmail := Value;
end;

procedure TEmailSynalist.SetDestinatarioNome(const Value: String);
begin
  FDestinatarioNome := Value;
end;

procedure TEmailSynalist.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

procedure TEmailSynalist.SetPorta(const Value: Integer);
begin
  FPorta := Value;
end;

procedure TEmailSynalist.SetRemetenteEmail(const Value: String);
begin
  FRemetenteEmail := Value;
end;

procedure TEmailSynalist.SetRemetenteNome(const Value: String);
begin
  FRemetenteNome := Value;
end;

procedure TEmailSynalist.SetSenha(const Value: String);
begin
  FSenha := Value;
end;

procedure TEmailSynalist.SetHost(const Value: String);
begin
  FHost := Value;
end;

procedure TEmailSynalist.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;


function TEmailSynalist.GetAnexo: String;
begin
     Result := FAnexo;
end;

procedure TEmailSynalist.SetAnexo(const Value: String);
begin
     FAnexo := value;
end;

function TEmailSynalist.GetAnexo2: String;
begin
      Result := FAnexo2;
end;

procedure TEmailSynalist.SetAnexo2(const Value: String);
begin
     FAnexo2 := Value;
end;

function TEmailSynalist.GetListaAnexos: String;
begin
     Result := FListaAnexos;
end;

procedure TEmailSynalist.SetListaAnexos(const Value: String);
begin
     FListaAnexos := Value;
end;

end.
