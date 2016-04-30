unit uFrmPlusPdvNfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, Menus, ExtCtrls, Wcrypt2, Buttons, ImgList,
  jpeg;

type
  TFrmMainNFe = class(TForm)
    StatusBar1: TStatusBar;
    mmPrincipal: TMainMenu;
    mnuMovimento: TMenuItem;
    ActionList1: TActionList;
    actEmissaoNFe: TAction;
    actGerenciamento: TAction;
    actSair: TAction;
    EmissaodeNFe1: TMenuItem;
    Gerenciamento1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    mnuAjuda: TMenuItem;
    Sobre1: TMenuItem;
    N2: TMenuItem;
    actConfig: TAction;
    Configuraes1: TMenuItem;
    Panel1: TPanel;
    spEmissao: TSpeedButton;
    sbGerenciamento: TSpeedButton;
    spSair: TSpeedButton;
    ImageList1: TImageList;
    Image1: TImage;
    actSobre: TAction;
    procedure FormShow(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actEmissaoNFeExecute(Sender: TObject);
    procedure actGerenciamentoExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actConfigExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Image_Logo;
    procedure SetJustify(Menu: TMenu; MenuItem: TMenuItem; Justify: Byte);
  public
    { Public declarations }
    function MD5(const Input: string): string;
    Procedure AtualizarAmbienteNFe();
  end;

var
  FrmMainNFe: TFrmMainNFe;
  idEmpresa, idUsuario, iCodRegimeTributario : Integer;
  aImageLogo, aImageRelatorios : String;

implementation

uses uFuncoes, udmDados, uFrmNFENew, uFrmGerenciarNotas, uFrmConfig,
  uSobreNFe;

{$R *.dfm}

procedure TFrmMainNFe.FormShow(Sender: TObject);
begin
     sbGerenciamento.Caption := '';
     spEmissao.Caption       := '';
     spSair.Caption := '';
     //
     dmDados.FilterCDS(dmDados.cdsUsuario, fsInteger, Inttostr(idUsuario));
     if not (dmDados.cdsUsuario.IsEmpty) Then
        StatusBar1.Panels[0].Text := uFuncoes.StrZero(Inttostr(idUsuario),3)+' :: '+dmDados.cdsUsuarionome.AsString
     Else
        StatusBar1.Panels[0].Text := '';
     //
     AtualizarAmbienteNFe;
     //
     dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, Inttostr(idEmpresa));
     if not (dmDados.cdsEmpresa.IsEmpty) Then
        StatusBar1.Panels[1].Text := 'CNPJ: '+uFuncoes.FormataCNPJ(dmDados.cdsEmpresacnpj.AsString)+' :: '+dmDados.cdsEmpresarazao_social.AsString
     Else
        StatusBar1.Panels[1].Text := ''; 
end;

procedure TFrmMainNFe.actSairExecute(Sender: TObject);
begin
     If Application.MessageBox('Sair do Sistema?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             Application.Terminate;
end;

procedure TFrmMainNFe.actEmissaoNFeExecute(Sender: TObject);
begin
        dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
        if (dmDados.cdsEmpresa.IsEmpty) Then
        begin
             Application.MessageBox(PChar('Usuário não está associado a nenhuma empresa.'+#13
                    +'Vá para cadastro de usuário para associar este usuário.'),
                 'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
             Exit;
        End;
        //
      AtualizarAmbienteNFe;
      //
      Application.CreateForm(TFrmNotaFiscalEletronicaNovo, FrmNotaFiscalEletronicaNovo);
      Try
           FrmNotaFiscalEletronicaNovo.ShowModal;
      Finally
           FrmNotaFiscalEletronicaNovo.Free;
      End;
end;

procedure TFrmMainNFe.actGerenciamentoExecute(Sender: TObject);
begin
      if not (dmDados.VerificaDadosCertificado()) Then
       begin
            Application.MessageBox(PChar('Campo Número de série do certificado digital'+#13
                                        +'está vazio, por favor cadastre o número de '+#13
                                        +'série do certificado.'),
                           'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL );
            actConfigExecute(Sender);
            Exit;
       End;
       //
       AtualizarAmbienteNFe;
       //
      Application.CreateForm(TFrmGerenciarNotas, FrmGerenciarNotas);
      Try
           FrmGerenciarNotas.ShowModal;
      Finally
           FrmGerenciarNotas.Free;
      End;
end;

procedure TFrmMainNFe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    If Application.MessageBox('Sair do Sistema?',
        'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
            Canclose := False;
end;

function TFrmMainNFe.MD5(const Input: string): string;
var
  hCryptProvider: HCRYPTPROV;
  hHash: HCRYPTHASH;
  bHash: array[0..$7f] of Byte;
  dwHashLen: DWORD;
  pbContent: PByte;
  i: Integer;
begin
  dwHashLen := 16;
  pbContent := Pointer(PChar(Input));
  Result := '';

  if CryptAcquireContext(@hCryptProvider, nil, nil, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT or CRYPT_MACHINE_KEYSET) then
  begin
    if CryptCreateHash(hCryptProvider, CALG_MD5, 0, 0, @hHash) then
    begin
      if CryptHashData(hHash, pbContent, Length(Input), 0) then
      begin
        if CryptGetHashParam(hHash, HP_HASHVAL, @bHash[0], @dwHashLen, 0) then
        begin
          for i := 0 to dwHashLen - 1 do
          begin
            Result := Result + Format('%.2x', [bHash[i]]);
          end;
        end;
      end;
      CryptDestroyHash(hHash);
    end;
    CryptReleaseContext(hCryptProvider, 0);
  end;
  Result := AnsiLowerCase(Result);
end;

procedure TFrmMainNFe.FormResize(Sender: TObject);
begin
  Image1.Left := (FrmMainNFe.Width Div 2) - (Image1.Width Div 2);
  Image1.Top := (FrmMainNFe.Height Div 2) - (Image1.Height Div 2 + StatusBar1.Height);
end;

procedure TFrmMainNFe.FormCreate(Sender: TObject);
begin
  ShortDateFormat := 'dd/mm/yyyy';
  Image1.Left := (FrmMainNFe.Width Div 2) - (Image1.Width Div 2);
  Image1.Top := (FrmMainNFe.Height Div 2) - (Image1.Height Div 2 + StatusBar1.Height);
  //
  SetJustify(mmPrincipal,mnuAjuda,1);
  //
  aImageLogo := '';
  aImageRelatorios := '';
  If FileExists(ExtractFilePath( Application.ExeName )+'logo.bmp') Then
      aImageLogo := ExtractFilePath( Application.ExeName )+'logo.bmp';

  If FileExists(ExtractFilePath( Application.ExeName )+'logo2.bmp') Then
      aImageRelatorios := ExtractFilePath( Application.ExeName )+'logo2.bmp'; 
end;

procedure TFrmMainNFe.Image_Logo;
begin

end;

procedure TFrmMainNFe.SetJustify(Menu: TMenu; MenuItem: TMenuItem;
  Justify: Byte);
var
    ItemInfo: TMenuItemInfo;
    Buffer: array[0..80] of Char;
begin
     ItemInfo.cbSize := SizeOf(TMenuItemInfo);
     ItemInfo.fMask := MIIM_TYPE;
     ItemInfo.dwTypeData := Buffer;
     ItemInfo.cch := SizeOf(Buffer);
     //
     GetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
     if Justify = 1 then
        ItemInfo.fType := ItemInfo.fType or MFT_RIGHTJUSTIFY;
     SetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
end;

procedure TFrmMainNFe.actConfigExecute(Sender: TObject);
begin
      dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
        if (dmDados.cdsEmpresa.IsEmpty) Then
        begin
            Application.MessageBox(PChar('Usuário não está associado a nenhuma empresa.'+#13
                    +'Vá para cadastro de usuário para associar este usuário.'),
                 'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
             Exit;
        End;
      Application.CreateForm(TFrmConfig, FrmConfig);
      Try
           FrmConfig.ShowModal;
      Finally
           FrmConfig.Free;
      End;
      //
      AtualizarAmbienteNFe;
end;

procedure TFrmMainNFe.AtualizarAmbienteNFe;
begin
     dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(idEmpresa));
     if not (dmDados.cdsEmpresa.IsEmpty) Then
        udmDados.aHambienteNFe := dmDados.cdsEmpresaambiente_nfe.AsString;
     dmDados.cdsEmpresa.close;
     //
     if (udmDados.aHambienteNFe = '1') Then
         StatusBar1.Panels[2].Text := 'AMBIENTE: PRODUÇÃO'
     Else
         StatusBar1.Panels[2].Text := 'AMBIENTE: HOMOLOGAÇÃO';
end;

procedure TFrmMainNFe.actSobreExecute(Sender: TObject);
begin
      Application.CreateForm(TfrmSobre, frmSobre);
      Try
           frmSobre.ShowModal;
      Finally
           frmSobre.Free;
      End;
end;

end.
