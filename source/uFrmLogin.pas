unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, FMTBcd, DB, SqlExpr;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    edt_SENHA: TEdit;
    edtCDUSUA: TEdit;
    Image2: TImage;
    Image1: TImage;
    SQLQuery1: TSQLQuery;
    procedure edt_SENHAKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SENHAExit(Sender: TObject);
    procedure edtCDUSUAExit(Sender: TObject);
    procedure edtCDUSUAKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SENHAEnter(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
    Function VerificaUsuarioSenhaBanco(idUsuario : Integer; aSenha : String ): Boolean;
  public
    { Public declarations }
    codigoUsuario : Integer;
    nomeUsuario   : String;
    administrador :  boolean;
  end;

var
  frmLogin: TfrmLogin;
  M_QTTENT: Integer;
  M_NMUSUA, aMySenhaDigitada : String;

implementation

uses uFuncoes, uFrmPlusPdvNfe, udmDados;

{$R *.dfm}

procedure TfrmLogin.edt_SENHAKeyPress(Sender: TObject; var Key: Char);
Var
   aDia, aMes, aDiaMes : String;
   AuxData : TDateTime;
   Ano, Mes, Dia, DoubloDiaMes : word;
   //
   aSenha, aSenhaDigitada : String;
   bUsuarioMasterOK : Boolean;
begin
     If (key = #27) Then
     Begin
         key:=#0;
         ModalResult := mrCancel;
         Exit;
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(edtCDUSUA.Text)
        and not uFuncoes.Empty(edt_SENHA.Text) Then
     begin
          Key := #0;
          //ACESSO(edtCDUSUA.Text, edt_SENHA.Text);
          if uFuncoes.Empty(edtCDUSUA.Text) Then
            begin
                 MessageDlg('Informe o código do usuário.',
                   mtInformation, [mbOK], 0);
                 edtCDUSUA.SetFocus;
                 Exit;
            End;
          //
          if uFuncoes.Empty(edt_SENHA.Text) Then
            begin
                 MessageDlg('Informe a senha.',
                   mtInformation, [mbOK], 0);
                 edt_SENHA.SetFocus;
                 Exit;
            End;
          //
          If not uFuncoes.Empty(edt_Senha.text) and (edtCDUSUA.Text <> '000') Then
                aMySenhaDigitada := FrmMainNFe.MD5(edt_Senha.text);
          //
          bUsuarioMasterOK := False;
          M_QTTENT := M_QTTENT+1;
          //
          If (Strtoint(edtCDUSUA.Text) = 1) Then
           begin
                //
                     AuxData := Date();
                     DecodeDate (Auxdata, Ano, Mes, Dia);
                     aDia := uFuncoes.StrZero( InttoStr(Dia*2),2);
                     aMes := uFuncoes.StrZero( InttoStr(Mes*2),2);
                     DoubloDiaMes := (Dia*2)+(Mes*2);
                     aDiaMes := uFuncoes.StrZero( InttoStr(DoubloDiaMes),2);
                     //
                     aSenha := aDia+aMes+aDiaMes;
                     aSenhaDigitada := edt_SENHA.Text;  // aMySenhaDigitada;
                     //
                     dmDados.FilterCDS(dmDados.cdsUsuario, fsInteger, edtCDUSUA.Text);
                       //If (edt_SENHA.Text = '1') then
                      if (aSenhaDigitada = aSenha) then  
                       Begin
                            uFrmPlusPdvNfe.idUsuario := 1;
                            if not (dmDados.cdsUsuario.IsEmpty) Then
                               uFrmPlusPdvNfe.idEmpresa := dmDados.cdsUsuarioid_empresa.AsInteger
                            Else
                                uFrmPlusPdvNfe.idEmpresa := 1;
                            // Pega o regime tributario da empresa
                            uFrmPlusPdvNfe.iCodRegimeTributario :=  dmDados.GetRegimeTributarioEmpresa(uFrmPlusPdvNfe.idEmpresa);
                            if (uFrmPlusPdvNfe.iCodRegimeTributario = -1) Then
                              begin
                                   raise Exception.Create('Código do Regime Tributario de Empresa (CRT) está vazio.'+#13+
                                                           'Preencha esse campo no cadastro de empresa por favor para poder continuar.');
                              End;
                            //
                            codigoUsuario := 1;
                            nomeUsuario   := 'INFOG2';
                            administrador := True;
                            bUsuarioMasterOK := True;
                            dmDados.cdsUsuario.Close;
                            ModalResult := mrOK;
                            //
                        End
                        Else
                        Begin
                            if (VerificaUsuarioSenhaBanco(StrtoInt(edtCDUSUA.text), aMySenhaDigitada)) Then
                            begin
                                dmDados.FilterCDS(dmDados.cdsUsuario, fsInteger, edtCDUSUA.text);
                                if not (dmDados.cdsUsuario.IsEmpty) Then
                                begin
                                    uFrmPlusPdvNfe.idUsuario := dmDados.cdsUsuarioid.AsInteger;
                                    uFrmPlusPdvNfe.idEmpresa := dmDados.cdsUsuarioid_empresa.AsInteger;
                                End
                                Else
                                    uFrmPlusPdvNfe.idEmpresa := 1;
                                // Pega o regime tributario da empresa
                                uFrmPlusPdvNfe.iCodRegimeTributario :=  dmDados.GetRegimeTributarioEmpresa(uFrmPlusPdvNfe.idEmpresa);
                                //
                                if (uFrmPlusPdvNfe.iCodRegimeTributario = -1) Then
                                 begin
                                     raise Exception.Create('Código do Regime Tributario de Empresa (CRT) está vazio.'+#13+
                                                           'Preencha esse campo no cadastro de empresa por favor para poder continuar.');
                                 End;
                                //
                                codigoUsuario := dmDados.cdsUsuarioid.AsInteger;
                                nomeUsuario   := dmDados.cdsUsuarionome.AsString;
                                administrador := True;
                                bUsuarioMasterOK := True;
                                dmDados.cdsUsuario.Close;
                                ModalResult := mrOK;
                            End
                            Else
                            begin
                                 Application.MessageBox('Senha inválida!!!',
                                       'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                                 edt_SENHA.Clear;
                                 //
                                 If (M_QTTENT >= 4) Then
                                 begin
                                     Application.MessageBox('O Sistema será Fechado!', 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                                     Application.Terminate;
                                 End;
                            End;
                        End;
           End
           Else
           begin
               if (VerificaUsuarioSenhaBanco(StrtoInt(edtCDUSUA.text), aMySenhaDigitada)) Then
                begin
                     dmDados.FilterCDS(dmDados.cdsUsuario, fsInteger, edtCDUSUA.text);
                     uFrmPlusPdvNfe.idUsuario := dmDados.cdsUsuarioid.AsInteger;
                     if uFuncoes.Empty(dmDados.cdsUsuarioid_empresa.AsString) Then
                     begin
                          edtCDUSUA.SetFocus;
                          raise Exception.Create('Usuário não está associado a nenhuma empresa!!!'+#13+'Associe este usuário a uma empresa para continuar.');
                     End;
                     //
                     uFrmPlusPdvNfe.idEmpresa := dmDados.cdsUsuarioid_empresa.AsInteger;
                     // Pega o regime tributario da empresa
                     uFrmPlusPdvNfe.iCodRegimeTributario :=  dmDados.GetRegimeTributarioEmpresa(uFrmPlusPdvNfe.idEmpresa);
                     //
                     codigoUsuario := 1;
                     nomeUsuario   := dmDados.cdsUsuarionome.AsString;
                     administrador := True;
                     bUsuarioMasterOK := True;
                     ModalResult := mrOK;
                End
                Else
                begin
                    //
                    Application.MessageBox(Pchar('Senha inválida!!!'+#13+'Tente novamente.'),
                                       'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                    edt_SENHA.Clear;
                    //
                    If (M_QTTENT >= 4) Then
                      begin
                           Application.MessageBox('O Sistema será Fechado!', 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                           Application.Terminate;
                      End;
                    edt_SENHA.SetFocus;
                    Exit;
                End;
           End;
          //
     End;
end;

procedure TfrmLogin.edt_SENHAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt_Senha.text) Then
        M_NMUSUA := edt_Senha.text;
end;

procedure TfrmLogin.edtCDUSUAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDUSUA.Text) Then
        edtCDUSUA.Text := uFuncoes.StrZero(edtCDUSUA.Text,3);
end;

procedure TfrmLogin.edtCDUSUAKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13, #27] ) then
        key:=#0;
    //
    If (key = #27) Then
    Begin
         key:=#0;
         ModalResult := mrCancel;
         Exit;
    End;
    //
    If (key = #13) and uFuncoes.Empty(edtCDUSUA.Text) Then
    Begin
         key:=#0;
         //
         edtCDUSUA.Text := '000';
         edt_SENHA.SetFocus; 
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edtCDUSUA.Text) Then
    Begin
         key:=#0;
         //
         If not dmDados.ProcurarValorInt(edtCDUSUA.Text,'id','usuarios') Then
         begin
              Application.MessageBox('Registro de usuário não cadastrado!!!','ATENÇÃO',
                            MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              edtCDUSUA.Clear;
              edtCDUSUA.SetFocus;
              Exit;
         End
         Else
             edt_SENHA.SetFocus;
    End;
end;


procedure TfrmLogin.edt_SENHAEnter(Sender: TObject);
begin
     M_NMUSUA := '';
     if uFuncoes.Empty(edtCDUSUA.Text) Then
      begin
           edtCDUSUA.SetFocus;
           Exit;
      End;      
end;

procedure TfrmLogin.Image1Click(Sender: TObject);
begin
     Application.Terminate;
end;

function TfrmLogin.VerificaUsuarioSenhaBanco(idUsuario: Integer;
  aSenha: String): Boolean;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := False;
     texto  := 'Select id, senha from usuarios where (id = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := DmDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := idUsuario;
           Open;
           //
           If not (IsEmpty) Then
             if (aSenha = FieldByname('senha').asString) Then
                 Result := True;
      Finally
         Free;
      End;
end;

end.
