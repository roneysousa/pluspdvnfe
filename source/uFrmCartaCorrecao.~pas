unit uFrmCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, ACBrNFe, ACBrNFeUtil,
  pcnConversao, OleCtrls, SHDocVw, ComCtrls, pcnAuxiliar;

type
  TFrmCartaCorrecao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnEnvia: TBitBtn;
    btnCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtDataHora: TEdit;
    edtSequencia: TEdit;
    Label5: TLabel;
    mmnCorrecao: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    dsCadastro: TDataSource;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    MemoResp: TMemo;
    WBResposta: TWebBrowser;
    btnImprimir: TBitBtn;
    lblOrgao: TLabel;
    lblMensagem: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEnviaClick(Sender: TObject);
    procedure mmnCorrecaoExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure ImprimirCarta();
  public
    { Public declarations }
  end;

var
  FrmCartaCorrecao: TFrmCartaCorrecao;
  iCodNFe : Integer;

implementation

uses uDMDados, udmNFe, uFuncoes, DBClient, uFrmPlusPdvNfe, pcnEnvEventoNFe;

{$R *.dfm}

procedure TFrmCartaCorrecao.FormShow(Sender: TObject);
begin
     edtDataHora.Text := DatetimetoStr(Now);
     if (iCodNFe > 0) Then
     begin
          DMDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(iCodNFe));
          if not (dmNFe.cdsNotaFiscal.IsEmpty) Then
           begin
                edtSequencia.Text := InttoStr(dmNFe.cdsNotaFiscalsequencia_cce.AsInteger + 1);
                //
                if not uFuncoes.Empty(dmNFe.cdsNotaFiscalcartao_correcao.AsString) Then
                begin
                     mmnCorrecao.Lines.Text := dmNFe.cdsNotaFiscalcartao_correcao.AsString;
                End;
           End;
     End;
     //
     lblOrgao.Caption := '';
     if (uFrmPlusPdvNfe.idUsuario = 1) Then
         lblOrgao.Caption := 'Cód.Receptor: '+ InttoStr(dmNFe.GetOrgaoReceptorNfe(dmNFe.cdsNotaFiscalemitente_uf.AsString));
     //
     If (dmNFe.cdsNotaFiscalsequencia_cce.AsInteger >= 1) Then
        btnImprimir.Visible := True;
     mmnCorrecao.SetFocus;
end;

procedure TFrmCartaCorrecao.btnCancelarClick(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsEdit]) Then
         dsCadastro.DataSet.Cancel;
end;

procedure TFrmCartaCorrecao.btnEnviaClick(Sender: TObject);
Var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
 aRetorno, NumeroProtocolo, XMLCCe, MotivoStatus : String;
 DataHoraEvento : TDatetime;
 CodigoStatus, iRetorno, idCodOrgaoReceptor : Integer;
begin
     if (uFuncoes.Empty(mmnCorrecao.Lines.Text)) Then
     begin
          Application.MessageBox(PChar('Conteúdo da carta está vazio!!! Digite o conteúdo da carta.'),
                    'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          mmnCorrecao.SetFocus;
          Exit;
     End;
     //
     if (Length(mmnCorrecao.Lines.Text) < 15) Then
     begin
          Application.MessageBox(PChar('Quantidade de caracteres menor que 15.'),
                    'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          mmnCorrecao.SetFocus;
          Exit;
     End;
     //
     if (Length(mmnCorrecao.Lines.Text) > 1000) Then
     begin
          Application.MessageBox(PChar('Quantidade de caracteres maior que 1000.'),
                    'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          mmnCorrecao.SetFocus;
          Exit;
     End;
     //
     iRetorno   := 0;
     // numero do lote de envio
     //NumeroLote := StrToInt(FormatDateTime('yymmddhhmm', NOW));

     idLote     := FormatDateTime('yymmddhhmm', NOW);  // '1';
     Chave      := dsCadastro.DataSet.fieldByName('chave_acesso').AsString;
     CNPJ       := dsCadastro.DataSet.fieldByName('emitente_cnpj').AsString;
     nSeqEvento := edtSequencia.Text;
     mmnCorrecao.Lines.Text := uFuncoes.RemoveAcentos( mmnCorrecao.Lines.Text);
     Correcao   := mmnCorrecao.Lines.Text;
     //
     btnEnvia.Enabled := False;
     lblMensagem.Visible := True;
     Application.ProcessMessages;
     try
          dmNFe.ACBrNFe1.EventoNFe.Evento.Clear;
          //
          with dmNFe.ACBrNFe1.EventoNFe.Evento.Add do
           begin
               infEvento.chNFe    := Chave;
               infEvento.CNPJ     := CNPJ;
               infEvento.dhEvento := now;
               idCodOrgaoReceptor := UFparaCodigo(dmNFe.cdsNotaFiscalemitente_uf.AsString);
               infEvento.cOrgao   := idCodOrgaoReceptor;
               infEvento.tpEvento := teCCe;
               infEvento.nSeqEvento := StrToInt(nSeqEvento);
               infEvento.detEvento.xCorrecao := Correcao;
           end;
          // envio da carta de correção
          if dmNFe.ACBrNFe1.EnviarEventoNFe(StrToInt(idLote)) then
           begin

              MemoResp.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.EnvEvento.RetWS);
              dmNFe.LoadXML(MemoResp, WBResposta);

              with dmNFe.ACBrNFe1.WebServices.EnvEvento do
              begin
                if not(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136]) then
                begin
                  raise Exception.Create(
                    'Ocorreu o seguinte erro ao enviar a carta de correção:'  + sLineBreak +
                    'Código:%d' + sLineBreak +
                    'Motivo: %s'+
                      InttoStr(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat)+' :: '+
                      EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
                end;

                // retornos
                DataHoraEvento  := EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                NumeroProtocolo := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
                XMLCCe          := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
                CodigoStatus    := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
                MotivoStatus    := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
                //
                iRetorno := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
                if (iRetorno in [135, 136]) then
                 begin
                     DMDados.Start;
                     try
                        With dmNFe.cdsNotaFiscal do
                        begin
                             Edit;
                             FieldByName('sequencia_cce').AsInteger := FieldByName('sequencia_cce').AsInteger+ 1;
                             FieldByName('xml_carta').AsString := mmnCorrecao.Lines.Text;
                             ApplyUpdates(0);
                       End;
                       //
                       {GravaCartaCorrecao(iCodNfe, iSeq, iStatus: Integer; aChave,
                       aMotivo, aProtocolo, aHora, aCarta, aRetornoWS: String;
                       aDataMov: TDatetime): Boolean;}
                       dmNFe.GravaCartaCorrecao(iCodNFe, dmNFe.cdsNotaFiscal.FieldByName('sequencia_cce').AsInteger, iRetorno,
                                          dmNFe.cdsNotaFiscal.FieldByName('chave_acesso').asString, MotivoStatus, NumeroProtocolo, uFuncoes.RemoveChar(TimetoStr(Time)),
                                          dmNFe.cdsNotaFiscal.FieldByName('xml_carta').AsString, XMLCCe, Date());
                       //
                       DMDados.Comit(DMDados.Transc);
                       //
                       ModalResult := mrOk;
                     Except
                          on e: exception do
                            begin
                                 DMDados.Rollback(e.Message);
                            End;
                     End;
                     //
                     Application.MessageBox(PChar('Protocolo : '+NumeroProtocolo+#13+
                                                  'Código status : '+InttoStr(CodigoStatus)+#13+
                                                  'Motivo : '+MotivoStatus),
                          'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     //
                     ImprimirCarta;     
                 End
                 else
                 begin
                      with dmNFe.ACBrNFe1.WebServices.EnvEvento do
                      begin
                           raise Exception.Create(
                              'Ocorreram erros ao enviar a Carta de Correção:' + sLineBreak +
                              'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
                              'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
                              'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
                                sLineBreak +
                              'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
                              'Motivo: '   + EventoRetorno.xMotivo);
                       end;
                 End;
           End;
         End;
     Finally
           btnEnvia.Enabled := True;
           lblMensagem.Visible := false;
     End;
     Application.ProcessMessages;
end;

procedure TFrmCartaCorrecao.ImprimirCarta;
Var
   aCaminhoApp, aFileNfe, aFileNfeCarta, wXMLCarta : String;
   wXML : TStringStream;
begin
      aCaminhoApp := ExtractFilePath( Application.ExeName ) +'XML\';
      aFileNfe := dmNFe.cdsNotaFiscalchave_acesso.AsString+'-NFe.xml';
      //
      aCaminhoApp := aCaminhoApp+ aFileNfe;
      dmNFe.ACBrNFe1.NotasFiscais.Clear;
      If not FileExists(aCaminhoApp) then
       Begin
            //ShowMessage('Arquivo não existe');
            wXML := TStringStream.Create(dmNFe.cdsNotaFiscal.FieldByName('NTF_ARQUIVO_XML').AsString);
            //
                if length(wXML.DataString) > 0 then
                begin
                     // Carrega xml nota
                     dmNFe.ACBrNFe1.NotasFiscais.LoadFromStream(wXML);
                End;
       End
       Else
          dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(aCaminhoApp);
      //
      with dmNFe.cdsCartaCorrecao do
      begin
           close;
           Params[0].AsInteger :=  dmNFe.cdsNotaFiscal.FieldByName('id').AsInteger;
           Open;
           //
           if not (IsEmpty) Then
           begin
                Last;
                //  Imprimir Evento
                try
                     //
                     wXMLCarta := dmNFe.cdsCartaCorrecao.FieldByName('retorno_xml').AsString;
                     //
                     //dmNFe.ACBrNFe1.
                     dmNFe.ACBrNFe1.EventoNFe.Evento.Clear;
                     dmNFe.ACBrNFe1.EventoNFe.LerXMLFromString(wXMLCarta) ;
                     // LerXML(OpenDialog1.FileName)
                     dmNFe.ACBrNFe1.ImprimirEvento;
                     //
                Finally
                     wXML.Free;
                End;
           End;
      End;
end;

procedure TFrmCartaCorrecao.mmnCorrecaoExit(Sender: TObject);
begin
    if not uFuncoes.Empty(mmnCorrecao.Lines.Text) Then
      mmnCorrecao.Lines.Text := uFuncoes.RemoveAcentos( mmnCorrecao.Lines.Text);
end;

procedure TFrmCartaCorrecao.btnImprimirClick(Sender: TObject);
begin
     ImprimirCarta;
end;

end.
