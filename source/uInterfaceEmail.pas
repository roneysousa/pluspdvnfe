unit uInterfaceEmail;

interface


type
  IEmail = interface;

  IEstrategiaEnvio = Interface
     ['{354DBF1C-7BBB-40C0-82B8-999BB4BB6B02}']
     procedure Enviar(email: IEmail; SSL : Boolean = True; aFileAnexo : String = '');
  end;

  IEmail = Interface
    ['{8A3E0D05-AC6D-4ED0-BBF7-616A66B1C49C}']
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
    function GetAssunto : String;
    function GetDestinatarioNome : String;
    function GetDestinatarioEmail : String;
    function GetRemetenteEmail : String;
    function GetRemetenteNome : String;
    function GetMensagem : String;
    function GetSenha : String;
    function GetHost : String;
    function GetUsuario : String;
    function GetPorta : Integer;
    function GetAnexo : String;
    function GetAnexo2 : String;
    Function GetListaAnexos : String;
    property RemetenteEmail : String read GetRemetenteEmail write SetRemetenteEmail;
    property DestinatarioEmail : String read GetDestinatarioEmail write SetDestinatarioEmail;
    property RemetenteNome : String read GetRemetenteNome write SetRemetenteNome;
    property DestinatarioNome  : String read GetDestinatarioNome write SetDestinatarioNome;
    property Assunto : String read GetAssunto write SetAssunto;
    property Mensagem : String read GetMensagem write SetMensagem;
    property Usuario : String read GetUsuario write SetUsuario;
    property Senha : String read GetSenha write SetSenha;
    property Host : String read GetHost write SetHost;
    property Porta : Integer read GetPorta write SetPorta;
    property Anexo : String read GetAnexo write SetAnexo;
    property Anexo2 : String read GetAnexo2 write SetAnexo2;
    property ListaAnexos : String read GetListaAnexos write SetListaAnexos;
    procedure Enviar(EstrategiaDeEnvio:IEstrategiaEnvio; SSL : Boolean = True; aFileAnexo : String = '');
  end;

  EmailContexto = class(TInterfacedObject, IEmail)
  private
    FEstrategiaDeEnvio: IEstrategiaEnvio;
    FDestinatarioEmail: String;
    FRemetenteNome: String;
    FPorta: Integer;
    FRemetenteEmail: String;
    FAssunto: String;
    FSenha : String;
    FDestinatarioNome: String;
    FMensagem : String;
    FHost : String;
    FUsuario : String;
    FAnexo : String;
    FAnexo2 : String;
    FListaAnexos : String;
    function GetAssunto: String;
    function GetDestinatarioEmail: String;
    function GetDestinatarioNome: String;
    function GetHost: String;
    function GetMensagem: String;
    function GetPorta: Integer;
    function GetRemetenteEmail: String;
    function GetRemetenteNome: String;
    function GetSenha: String;
    function GetUsuario: String;
    function GetAnexo : String;
    function GetAnexo2 : String;
    Function GetListaAnexos : String;
    procedure SetAssunto(const Value: String);
    procedure SetDestinatarioEmail(const Value: String);
    procedure SetDestinatarioNome(const Value: String);
    procedure SetHost(const Value: String);
    procedure SetMensagem(const Value: String);
    procedure SetPorta(const Value: Integer);
    procedure SetRemetenteEmail(const Value: String);
    procedure SetRemetenteNome(const Value: String);
    procedure SetSenha(const Value: String);
    procedure SetUsuario(const Value: String);
    procedure SetGetAnexo(const Value: String);
    procedure SetAnexo(const Value: String);
    procedure SetAnexo2(const Value: String);
    procedure SetListaAnexos(const Value : String);
  public
    property RemetenteEmail : String read GetRemetenteEmail write SetRemetenteEmail;
    property DestinatarioEmail : String read GetDestinatarioEmail write SetDestinatarioEmail;
    property RemetenteNome : String read GetRemetenteNome write SetRemetenteNome;
    property DestinatarioNome  : String read GetDestinatarioNome write SetDestinatarioNome;
    property Assunto : String read GetAssunto write SetAssunto;
    property Mensagem : String read GetMensagem write SetMensagem;
    property Usuario : String read GetUsuario write SetUsuario;
    property Senha : String read GetSenha write SetSenha;
    property Host : String read GetHost write SetHost;
    property Porta : Integer read GetPorta write SetPorta;
    property Anexo : String read GetAnexo write SetAnexo;
    property Anexo2 : String read GetAnexo2 write SetAnexo2;
    property ListaAnexos : String read GetListaAnexos write SetListaAnexos;
    procedure Enviar(EstrategiaDeEnvio:IEstrategiaEnvio; SSL : Boolean = True; aFileAnexo : String = '');

  end;

implementation

{ EmailContexto }


procedure EmailContexto.Enviar(EstrategiaDeEnvio: IEstrategiaEnvio;
  SSL: Boolean; aFileAnexo : String);
begin
  FEstrategiaDeEnvio := EstrategiaDeEnvio;
  FEstrategiaDeEnvio.Enviar(self, SSL);
end;

function EmailContexto.GetAnexo: String;
begin
      Result := FAnexo;
end;

function EmailContexto.GetAnexo2: String;
begin
     Result := FAnexo2;
end;

function EmailContexto.GetAssunto: String;
begin
  result := FAssunto;
end;

function EmailContexto.GetDestinatarioEmail: String;
begin
  result := FDestinatarioEmail;
end;

function EmailContexto.GetDestinatarioNome: String;
begin
  result := FDestinatarioNome;
end;

function EmailContexto.GetHost: String;
begin
  result := FHost;
end;

function EmailContexto.GetListaAnexos: String;
begin
    Result := FListaAnexos;
end;

function EmailContexto.GetMensagem: String;
begin
  result := FMensagem;
end;

function EmailContexto.GetPorta: Integer;
begin
  result := FPorta;
end;

function EmailContexto.GetRemetenteEmail: String;
begin
  result := FRemetenteEmail;
end;

function EmailContexto.GetRemetenteNome: String;
begin
  result := FRemetenteNome;
end;

function EmailContexto.GetSenha: String;
begin
  result := FSenha;
end;

function EmailContexto.GetUsuario: String;
begin
  result := FUsuario;
end;

procedure EmailContexto.SetAnexo(const Value: String);
begin
     FAnexo := Value;
end;

procedure EmailContexto.SetAnexo2(const Value: String);
begin
    FAnexo2 := Value;
end;

procedure EmailContexto.SetAssunto(const Value: String);
begin
  FAssunto := value;
end;

procedure EmailContexto.SetDestinatarioEmail(const Value: String);
begin
  FDestinatarioEmail := value;
end;

procedure EmailContexto.SetDestinatarioNome(const Value: String);
begin
  FDestinatarioNome := value;
end;

procedure EmailContexto.SetGetAnexo(const Value: String);
begin
    FAnexo := Value;
end;

procedure EmailContexto.SetHost(const Value: String);
begin
  FHost := value;
end;

procedure EmailContexto.SetListaAnexos(const Value: String);
begin
     FListaAnexos := Value;
end;

procedure EmailContexto.SetMensagem(const Value: String);
begin
  FMensagem := value;
end;

procedure EmailContexto.SetPorta(const Value: Integer);
begin
  FPorta := value;
end;

procedure EmailContexto.SetRemetenteEmail(const Value: String);
begin
  FRemetenteEmail := value;
end;

procedure EmailContexto.SetRemetenteNome(const Value: String);
begin
  FRemetenteNome := value;
end;

procedure EmailContexto.SetSenha(const Value: String);
begin
  FSenha := Value;
end;

procedure EmailContexto.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;

end.
