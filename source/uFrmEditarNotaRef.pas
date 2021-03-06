unit uFrmEditarNotaRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, Clipbrd, pcnNFeRTXT;

type
  TFrmEditarNotaReferencia = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOk: TBitBtn;
    BitBtn2: TBitBtn;
    rgTipo: TRadioGroup;
    gbxNfe: TGroupBox;
    gbxNota: TGroupBox;
    Label1: TLabel;
    edtChaveAcesso: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtSerie: TMaskEdit;
    edtNumero: TEdit;
    edtModelo: TEdit;
    cmbUf: TComboBox;
    edtCNPJ: TMaskEdit;
    edtMesAno: TMaskEdit;
    spFornecedor: TSpeedButton;
    OpenDialog: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure edtCNPJExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure edtChaveAcessoKeyPress(Sender: TObject; var Key: Char);
    procedure edtChaveAcessoExit(Sender: TObject);
    procedure edtSerieKeyPress(Sender: TObject; var Key: Char);
    procedure cmbUfKeyPress(Sender: TObject; var Key: Char);
    procedure edtMesAnoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure spFornecedorClick(Sender: TObject);
    procedure edtMesAnoExit(Sender: TObject);
  private
    { Private declarations }
    Procedure Limpar();
    Function ValidarCampos(): Boolean;
    Procedure Opcao();
    Procedure ValidarChaveAcesso();
  public
    { Public declarations }
  end;

var
  FrmEditarNotaReferencia: TFrmEditarNotaReferencia;
  aOpcao : String;
  idItem : Integer;

implementation

uses udmNFe, uFuncoes, DB, DBClient, udmDados;

{$R *.dfm}

procedure TFrmEditarNotaReferencia.FormShow(Sender: TObject);
Var
   I : Integer;
begin
     Limpar;   
     //
     if (aOpcao = 'A') Then
      begin
           if (dmNFe.cdsListaNT_RefCDR_TIPO_NOTA.AsInteger = 3 ) Then
            begin
                 edtSerie.text    := dmNFe.cdsListaNT_RefCDR_SERIE.AsString;
                 edtNumero.text   := dmNFe.cdsListaNT_RefCDR_NUMERO.AsString;
                 edtModelo.text   := dmNFe.cdsListaNT_RefCDR_MODELO.AsString;
                 //
                 I := cmbUf.Items.IndexOf(dmNFe.cdsListaNT_RefCDR_UF.AsString);
                 if (I <> -1) then
                     CmbUf.ItemIndex := I;
                 // cmbUf.Text       := dmNFe.cdsListaNT_RefCDR_UF.AsString;
                 edtCNPJ.text     := dmNFe.cdsListaNT_RefCDR_CNPJ.AsString;
                 edtMesAno.text   := dmNFe.cdsListaNT_RefCDR_MESANO.AsString;
                 rgTipo.ItemIndex := 2;
            End
            Else
            begin
                edtChaveAcesso.Text := dmNFe.cdsListaNT_RefCDR_CHAVE.AsString;
                case  dmNFe.cdsListaNT_RefCDR_TIPO_NOTA.AsInteger of
                   1 : rgTipo.ItemIndex := 0;
                   2 : rgTipo.ItemIndex := 1;
                End;
            End;
      End;

     Opcao();
end;

procedure TFrmEditarNotaReferencia.Limpar;
begin
    edtChaveAcesso.Clear;
    edtSerie.clear;
    edtNumero.clear;
    edtModelo.clear;
    cmbUf.ItemIndex := -1;
    edtCNPJ.clear;
    edtMesAno.clear;
end;

procedure TFrmEditarNotaReferencia.edtCNPJExit(Sender: TObject);
Var
  aCNPJ : String;
begin
     if not uFuncoes.Empty(uFuncoes.RemoveChar(edtCNPJ.Text)) Then
      begin
          aCNPJ :=  uFuncoes.RemoveChar(edtCNPJ.Text);
          If not (uFuncoes.CGC(aCNPJ)) Then
           Begin
               MessageDlg('CNPJ inv�lido!!!', mtWarning, [mbOk], 0);
               edtCNPJ.SetFocus;
               Exit;
          End;
          //
          If  (uFuncoes.RemoveChar(aCNPJ) = '00000000000000') Then
           Begin
               MessageDlg('CNPJ inv�lido!!!', mtWarning, [mbOk], 0);
               edtCNPJ.SetFocus;
               Exit;
          End;
      End;
end;

procedure TFrmEditarNotaReferencia.btnOkClick(Sender: TObject);
Var
   iItem,  iTipoNF : Integer;
   aCNPJ : String;
begin
     if (ValidarCampos()) Then
     begin
         //
         Case rgTipo.ItemIndex of
           0 :  iTipoNF := 1;
           1 :  iTipoNF := 2;
           2 :  iTipoNF := 3;
         End;
         //
         if (rgTipo.ItemIndex = 2) Then
         begin
              aCNPJ :=  uFuncoes.RemoveChar(edtCNPJ.Text);
              If not (uFuncoes.CGC(aCNPJ)) Then
              Begin
                  MessageDlg('CNPJ inv�lido!!!', mtWarning, [mbOk], 0);
                  edtCNPJ.SetFocus;
                  Exit;
             End;
             //
             If  (uFuncoes.RemoveChar(aCNPJ) = '00000000000000') Then
              Begin
                  MessageDlg('CNPJ inv�lido!!!', mtWarning, [mbOk], 0);
                  edtCNPJ.SetFocus;
                  Exit;
             End;
          End;
         //
         if (dmNFe.cdsListaNT_Ref.Active) and (dmNFe.cdsListaNT_Ref.RecordCount = 0) Then
             iItem := 1
         Else
          begin
               dmNFe.cdsListaNT_Ref.Last;
               iItem := dmNFe.cdsListaNT_RefCDR_ITEM.AsInteger + 1;
          End;
         //
         if (aOpcao = 'I') Then
          begin
               dmNFe.AddRegistroNotaReferencia(dmNFe.cdsNotaFiscalid.AsInteger, iItem,
                  iTipoNF,  edtChaveAcesso.Text, edtSerie.Text, edtNumero.Text,
                  edtModelo.Text, cmbUf.Text, edtMesAno.Text, edtCNPJ.Text );
          End;

         if (aOpcao = 'A') Then
          begin
               With dmNFe.cdsListaNT_Ref do
                begin
                     Edit;
                     FieldByName('CDR_TIPO_NOTA').AsInteger := iTipoNF;

                     if (rgTipo.ItemIndex = 2) Then
                     begin
                          FieldByName('CDR_SERIE').AsString  := edtSerie.Text;
                          FieldByName('CDR_NUMERO').AsString := edtNumero.Text;
                          FieldByName('CDR_MODELO').AsString := edtModelo.Text;
                          FieldByName('CDR_UF').AsString     := cmbUf.Text;
                          FieldByName('CDR_MESANO').AsString := edtMesAno.Text;
                          FieldByName('CDR_CNPJ').AsString   := edtCNPJ.Text;
                          FieldByName('CDR_CHAVE').Clear;
                     End
                     Else
                     begin
                          FieldByName('CDR_SERIE').Clear;
                          FieldByName('CDR_NUMERO').Clear;
                          FieldByName('CDR_MODELO').Clear;
                          FieldByName('CDR_UF').Clear;
                          FieldByName('CDR_MESANO').Clear;
                          FieldByName('CDR_CNPJ').Clear;
                          FieldByName('CDR_CHAVE').AsString      := edtChaveAcesso.Text;
                     End;
                     //
                     Post;
                End;
          End;
         //
         ModalResult := mrOk;
     End;
end;

function TFrmEditarNotaReferencia.ValidarCampos: Boolean;
begin
      Result := False;
      if (rgTipo.ItemIndex = 2) Then
      begin
          if uFuncoes.Empty(uFuncoes.RemoveChar(edtSerie.Text)) Then
           begin
               edtSerie.SetFocus;
               raise Exception.Create('Digite o n�mero de s�rie.');
           End;
           //
          if uFuncoes.Empty(uFuncoes.RemoveChar(edtNumero.Text)) Then
           begin
               edtNumero.SetFocus;
               raise Exception.Create('Digite o n�mero da nota.');
           End;
           //
          if uFuncoes.Empty(cmbUf.Text) Then
           begin
               cmbUf.SetFocus;
               raise Exception.Create('Selecione a UF.');
           End;
           //
          if uFuncoes.Empty(uFuncoes.RemoveChar(edtMesAno.Text)) Then
           begin
               edtMesAno.SetFocus;
               raise Exception.Create('Digite o M�s e ano de emiss�o da nota.');
           End;
           //
          if uFuncoes.Empty(uFuncoes.RemoveChar(edtCNPJ.Text)) Then
           begin
               edtCNPJ.SetFocus;
               raise Exception.Create('Digite o CNPJ.');
           End;
      End
      Else
      begin
           //
          if uFuncoes.Empty(uFuncoes.RemoveChar(edtChaveAcesso.Text)) Then
           begin
               edtChaveAcesso.SetFocus;
               raise Exception.Create('Digite a chave de acesso da nota.');
           End;
           //
           ValidarChaveAcesso;
      End;
      Result := True;
end;

procedure TFrmEditarNotaReferencia.rgTipoClick(Sender: TObject);
begin
     Opcao();
end;

procedure TFrmEditarNotaReferencia.Opcao;
begin
     if (rgTipo.ItemIndex = 2) Then
      begin
            gbxNota.Enabled := True;
            gbxNfe.Enabled  := False;
            edtModelo.Text  := '01';
            edtChaveAcesso.Enabled := False;
            edtSerie.SetFocus;
      End
      Else
      begin
            gbxNota.Enabled := False;
            gbxNfe.Enabled  := True;
            edtModelo.Clear;
            edtChaveAcesso.Enabled := true;
            edtChaveAcesso.SetFocus;
      End;
end;

procedure TFrmEditarNotaReferencia.edtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;

     If (key = #13) Then
      begin
          key := #0;
          cmbUf.SetFocus;
      End;

end;

procedure TFrmEditarNotaReferencia.edtChaveAcessoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEditarNotaReferencia.ValidarChaveAcesso;
Var
  aValorDig : string;
begin
     if not uFuncoes.Empty(edtChaveAcesso.Text) Then
      begin
           if (Length(edtChaveAcesso.Text) < 44) Then
           begin
                edtChaveAcesso.SetFocus;
                raise Exception.Create('Tamanho da Chave de acesso est� inferior a 44 digitos!'+#13+
                         'Por favor verifique novamente a chave de acesso digitada.');
           End;
           //
           aValorDig := uFuncoes.Alltrim(uFuncoes.RemoveChar(edtChaveAcesso.Text));
           if not uFuncoes.ValidarChaveNFe( aValorDig ) Then
            begin
                 edtChaveAcesso.SetFocus;
                 raise Exception.Create('Chave de acesso digitada est� incorreta!'+#13+
                         'Por favor verifique novamente a chave de acesso digitada.');
            End;
      End;
end;

procedure TFrmEditarNotaReferencia.edtChaveAcessoExit(Sender: TObject);
begin
      ValidarChaveAcesso;
end;

procedure TFrmEditarNotaReferencia.edtSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) Then
      begin
          key := #0;
          edtNumero.SetFocus;
      End;
end;

procedure TFrmEditarNotaReferencia.cmbUfKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) Then
      begin
          key := #0;
          edtMesAno.SetFocus;
      End;

end;

procedure TFrmEditarNotaReferencia.edtMesAnoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) Then
      begin
          key := #0;
          edtCNPJ.SetFocus;
      End;

end;

procedure TFrmEditarNotaReferencia.edtCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) Then
      begin
          key := #0;
          btnOk.SetFocus;
      End;

end;

procedure TFrmEditarNotaReferencia.spFornecedorClick(Sender: TObject);
var
  i, j, k, n, idNatOpe, inNF, iCodigoTranspontadora : Integer;
  NFeRTXT: TNFeRTXT;
  aOrigem, aProduto, aCNPJ, aCodigoForn : String;
begin
     OpenDialog.FileName := '';
     OpenDialog.Title := 'Selecione a NFE';
     OpenDialog.DefaultExt := '*-nfe.XML';
     OpenDialog.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML';
     OpenDialog.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

   try
     if OpenDialog.Execute then
     begin
       dmNFe.ACBrNFe1.NotasFiscais.Clear;
       // tenta TXT
       dmNFe.ACBrNFe1.NotasFiscais.Add;
       NFeRTXT := TNFeRTXT.Create(dmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe);
       NFeRTXT.CarregarArquivo(OpenDialog.FileName);
       if NFeRTXT.LerTxt then
         NFeRTXT.Free
       else
       begin
            NFeRTXT.Free;
            // tenta XML
            dmNFe.ACBrNFe1.NotasFiscais.Clear;
            try
              dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog.FileName);
            except
              Application.MessageBox('Arquivo NF-e Inv�lido.', 'Mensagem do Sistema', MB_OK + MB_ICONINFORMATION);
              Exit;
            end;
       end;
       //
       { TODO -oT2Ti -cEstoque : Esse la�o pega varias notas. Precisamos dele? }
       For n := 0 to dmNFe.ACBrNFe1.NotasFiscais.Count - 1 do
        begin
             With dmNFe.ACBrNFe1.NotasFiscais.Items[n].NFe do
             begin
                 //
                 inNF := Ide.nNF;
                 //
                 aCNPJ := Emit.CNPJCPF;
                 aCodigoForn := InttoStr(dmDados.GetCodigoFornecedorPorCNPJ(aCNPJ));
                 // NFe Cabe�alho
                 edtChaveAcesso.Text  := uFuncoes.RemoveChar(infNFe.ID);
            End;
        End;
       //
       dmNFe.ACBrNFe1.NotasFiscais.Clear;
     End;
   Except

   End;
end;

procedure TFrmEditarNotaReferencia.edtMesAnoExit(Sender: TObject);
Var
  aValor, aAno : String;
begin
      if not uFuncoes.Empty(uFuncoes.RemoveChar(edtMesAno.Text)) Then
       begin
            aValor := uFuncoes.RemoveChar(edtMesAno.Text);
            if Length(aValor) < 4 Then
             begin
                  edtMesAno.SetFocus;
                  raise Exception.Create('Tamanho do campo inv�lido!');
             End;
             //
             aAno := Copy(aValor, 1,2);
             //
             if StrtoInt(aAno) > 12 Then
             begin
                  edtMesAno.SetFocus;
                  raise Exception.Create('Valor correpondente ao m�s est� inv�lido!'+#13+
                                          'Digite de 01 a 12.');
             End;
       End;
end;

end.
