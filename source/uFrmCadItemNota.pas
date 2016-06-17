unit uFrmCadItemNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ComCtrls,
  ToolEdit, RXDBCtrl;

type
  TFrmCadItemNota = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnOK: TBitBtn;
    btnCancela: TBitBtn;
    Label1: TLabel;
    edtCodigo1: TDBEdit;
    dsCadastroItem: TDataSource;
    Label2: TLabel;
    dbeDescricaoProduto: TDBEdit;
    Label3: TLabel;
    dbeCFOP: TDBEdit;
    spCFOP: TSpeedButton;
    Label4: TLabel;
    dbeNCM: TDBEdit;
    spLocalizarNCM: TSpeedButton;
    Label5: TLabel;
    edtUnidade: TDBEdit;
    Label6: TLabel;
    edtQTDE: TDBEdit;
    Label7: TLabel;
    edtValorUnitario: TDBEdit;
    Label8: TLabel;
    edtDesconto: TDBEdit;
    Label9: TLabel;
    edtSubTotal: TDBEdit;
    spLocProduto: TSpeedButton;
    PageControl1: TPageControl;
    tsbICMS: TTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    cmbCstICMS: TDBLookupComboBox;
    Label11: TLabel;
    cmbOrigem1: TDBLookupComboBox;
    gbxIcms: TGroupBox;
    gbxIcmsSt: TGroupBox;
    Label12: TLabel;
    dbeBCIcms: TDBEdit;
    Label13: TLabel;
    edtAliquotaICMS: TDBEdit;
    Label14: TLabel;
    dbeValorIcms: TDBEdit;
    tsbSimples: TTabSheet;
    Label15: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label16: TLabel;
    cmbOrigem2: TDBLookupComboBox;
    Label18: TLabel;
    dbeMargemICMS_ST: TDBEdit;
    Label19: TLabel;
    dbeBaseICMS_ST: TDBEdit;
    Label20: TLabel;
    dbeAliquotaICMS_ST: TDBEdit;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    tsbIPI: TTabSheet;
    tsbPIS: TTabSheet;
    tsbCofins: TTabSheet;
    tsMedicamento: TTabSheet;
    Label21: TLabel;
    cmbCstIpi: TDBLookupComboBox;
    Label22: TLabel;
    dbeBCIPI: TDBEdit;
    Label23: TLabel;
    dbeAliquotaIPI: TDBEdit;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    Label26: TLabel;
    cmbCstPIS: TDBLookupComboBox;
    Label27: TLabel;
    dbeBasePis: TDBEdit;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    Label30: TLabel;
    cmbCstCofins: TDBLookupComboBox;
    Label31: TLabel;
    dbeValorBsCofins: TDBEdit;
    Label32: TLabel;
    DBEdit3: TDBEdit;
    Label33: TLabel;
    DBEdit9: TDBEdit;
    Label25: TLabel;
    dbeLote: TDBEdit;
    Label34: TLabel;
    dbeDataFab: TDBDateEdit;
    Label35: TLabel;
    dbeDataVct: TDBDateEdit;
    Label36: TLabel;
    dbeICMSDesonerado: TDBEdit;
    Label37: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    lblReducao: TLabel;
    dbeReducaoICMS: TDBEdit;
    edtCodigo: TEdit;
    spDescValor: TSpeedButton;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtCodigo1KeyPress(Sender: TObject; var Key: Char);
    procedure spLocProdutoClick(Sender: TObject);
    procedure edtCodigo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spCFOPClick(Sender: TObject);
    procedure dbeCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCFOPExit(Sender: TObject);
    procedure spLocalizarNCMClick(Sender: TObject);
    procedure dbeNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNCMExit(Sender: TObject);
    procedure edtUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtQTDEKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQTDEExit(Sender: TObject);
    procedure edtValorUnitarioExit(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeBCIcmsExit(Sender: TObject);
    procedure edtAliquotaICMSExit(Sender: TObject);
    procedure dbeMargemICMS_STExit(Sender: TObject);
    procedure dbeBaseICMS_STExit(Sender: TObject);
    procedure dbeAliquotaICMS_STExit(Sender: TObject);
    procedure cmbCstICMSExit(Sender: TObject);
    procedure cmbCstIpiExit(Sender: TObject);
    procedure dbeBCIPIExit(Sender: TObject);
    procedure dbeAliquotaIPIExit(Sender: TObject);
    procedure cmbCstCofinsExit(Sender: TObject);
    procedure dbeValorBsCofinsExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure dbeCFOPEnter(Sender: TObject);
    procedure dbeDataFabExit(Sender: TObject);
    procedure dbeDataVctExit(Sender: TObject);
    procedure dsCadastroItemDataChange(Sender: TObject; Field: TField);
    procedure dbeReducaoICMSExit(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure spDescValorClick(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular;
    Function ValidarDataVct(): Boolean;
    Procedure CamposReducaoICMS(bStatus : Boolean);
    Procedure VerificaCST_ICMS_Reducao();
  public
    { Public declarations }
  end;

var
  FrmCadItemNota: TFrmCadItemNota;
  aOpcaoIPIDevolvido : Boolean;
  fMaximoPercentualDesconto : Double;
  aTipoOperacao : String;
  iOpcaoPreco, idNatureza, M_NRITEM : Integer;
  aCNPJCPFDestinatario, aNatureza, aUFEmitente, aCFOP : String;
  bUFDiferente : Boolean;

implementation

uses udmDados, udmNFe, uFuncoes, uFrmLocProdutoServico, uFrmLocCFOP,
  uFrmLocalizarNCM, uFrmPlusPdvNfe, uFrmDescontoValor;

{$R *.dfm}

procedure TFrmCadItemNota.btnCancelaClick(Sender: TObject);
begin
      If (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) then
           dsCadastroItem.DataSet.Cancel;
end;

procedure TFrmCadItemNota.btnOKClick(Sender: TObject);
begin
    Calcular;
    //
    if uFuncoes.Empty(edtCodigo.Text) Then
    begin
         Application.MessageBox('Digite o código produto.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
         edtCodigo.SetFocus;
         Exit;
    End;
   //
   if uFuncoes.Empty(dbeCFOP.Text) Then
    begin
         Application.MessageBox('Digite o CFOP do produto.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
         dbeCFOP.SetFocus;
         Exit;
    End;
    //
   if uFuncoes.Empty(dbeNCM.Text) Then
    begin
         Application.MessageBox('Digite o NCM do produto.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
         dbeNCM.SetFocus;
         Exit;
    End;
   //
   if uFuncoes.Empty(edtUnidade.Text) Then
    begin
         Application.MessageBox('Digite a Unidade do produto.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
         edtUnidade.SetFocus;
         Exit;
    End;
     //  Regime Simples
     if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
      begin
            if uFuncoes.Empty(DBLookupComboBox3.Text) Then
            begin
                 Application.MessageBox('Selecione a situação tributário do simples nacional.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbSimples;
                 DBLookupComboBox3.SetFocus;
                 Exit;
            End;
            //
           if uFuncoes.Empty(cmbOrigem2.Text) Then
            begin
                 Application.MessageBox('Selecione a origem do produto.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbSimples;
                 cmbOrigem2.SetFocus;
                 Exit;
            End;
      End;
      // Regime Normal
      if (uFrmPlusPdvNfe.iCodRegimeTributario = 3) Then
      begin
           if uFuncoes.Empty(cmbCstICMS.Text) Then
            begin
                 Application.MessageBox('Selecione a situação tributário do ICMS.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbICMS;
                 cmbCstICMS.SetFocus;
                 Exit;
            End;
            //
           if uFuncoes.Empty(cmbOrigem1.Text) Then
            begin
                 Application.MessageBox('Selecione a origem do produto.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbICMS;
                 cmbOrigem1.SetFocus;
                 Exit;
            End;
      End;
      //  CST IPI
           if uFuncoes.Empty(cmbCstIpi.Text) Then
            begin
                 Application.MessageBox('Selecione a situação tributário do IPI.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbIPI;
                 cmbCstIpi.SetFocus;
                 Exit;
            End;
      //  CST PIS
           if uFuncoes.Empty(cmbCstPIS.Text) Then
            begin
                 Application.MessageBox('Selecione a situação tributário do PIS.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbPIS;
                 cmbCstPIS.SetFocus;
                 Exit;
            End;
      //  CST COFINS
           if uFuncoes.Empty(cmbCstCofins.Text) Then
            begin
                 Application.MessageBox('Selecione a situação tributário do COFINS.','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 PageControl1.ActivePage := tsbCofins;
                 cmbCstCofins.SetFocus;
                 Exit;
            End;
            // medicamentos
      if (tsMedicamento.TabVisible) Then
      begin
           if not uFuncoes.Empty(dbeLote.text) and (dbeLote.text <> 'GERAL') Then
            begin
                 if uFuncoes.Empty(uFuncoes.RemoveChar(dbeDataFab.text)) Then
                  begin
                        PageControl1.ActivePage := tsMedicamento;
                        Application.MessageBox('Digite a data de Fabricação!','ATENÇÃO',
                             MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                        dbeDataFab.SetFocus;
                        Exit;
                        //raise Exception.Create('');
                  End;
                  //
                 if uFuncoes.Empty(uFuncoes.RemoveChar(dbeDataVct.text)) Then
                  begin
                        PageControl1.ActivePage := tsMedicamento;
                        Application.MessageBox('Digite a data de Vencimento!','ATENÇÃO',
                             MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                        dbeDataVct.SetFocus;
                        //raise Exception.Create('');
                  End;
                  //
                  If not ValidarDataVct() Then
                       Exit;
            end;
      End;
     //
     If (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) then
     begin
          // Regime Normal
          if (uFrmPlusPdvNfe.iCodRegimeTributario = 3) Then
          begin
               if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST').AsString) Then
               begin
                   if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger <> 10) then
                   begin
                       dsCadastroItem.DataSet.FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').Clear;
                       dsCadastroItem.DataSet.FieldByName('CDS_BCICMS_ST').Clear;
                       dsCadastroItem.DataSet.FieldByName('CDS_ALIQUOTA_ICMS_ST').Clear;
                       dsCadastroItem.DataSet.FieldByName('CDS_VLICMS_ST').Clear;
                   End;
               End;
           End;
           // Regime Simples
           if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
           begin
                // IPI
                if (aTipoOperacao = 'S')
                  and ( dsCadastroItem.DataSet.FieldByName('CDS_BC_IPI').AsFloat > 0)
                  and ( dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger = 53) Then
                   begin
                       dsCadastroItem.DataSet.FieldByName('CDS_BC_IPI').AsFloat := 0;
                       dsCadastroItem.DataSet.FieldByName('CDS_BC_IPI_CALC').AsFloat := 0;
                   End;
           End;
           //
           If (dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat  > 0) Then
           begin
                dsCadastroItem.DataSet.FieldByName('CDS_VLDESCONTO').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(
                               (dsCadastroItem.DataSet.FieldByName('CDS_VLUNITARIO').AsFloat *
                               dsCadastroItem.DataSet.FieldByName('CDS_QTDECOM').AsFloat),
                               dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat),2);
           End;
           // imposto
           if ( dmNFe.GetNaturezaVenda( idNatureza )) Then
           begin
               With dmDados.cdsNCM do
                begin
                     close;
                     Params[0].AsString  := aUFEmitente;
                     Params[1].AsString  := dsCadastroItem.DataSet.FieldByName('CDS_NCM').AsString;
                     //DMDados.cdsProdutoid_ncm.AsInteger;
                     Open;
                end;
                //
                if not (dmDados.cdsNCM.IsEmpty) Then
                begin
                     dsCadastroItem.DataSet.FieldByName('CDS_PERC_TRIBUTO').AsFloat   := dmDados.cdsNCMaliquota_nacional.AsFloat;
                     if (dmDados.cdsNCMaliquota_estadual.AsFloat > 0) Then
                        dsCadastroItem.DataSet.FieldByName('CDS_PERC_ESTADUAL').AsFloat  := dmDados.cdsNCMaliquota_estadual.AsFloat;
                     if (dmDados.cdsNCMaliquota_municipal.AsFloat > 0) Then
                        dsCadastroItem.DataSet.FieldByName('CDS_PERC_MUNICIPAL').AsFloat := dmDados.cdsNCMaliquota_municipal.AsFloat;
                End;
                dmDados.cdsNCM.close;
           End;
           //
           If (dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat = 0) Then
                dsCadastroItem.DataSet.FieldByName('CDS_VLDESCONTO').AsFloat := 0;
           //
           dmNFe.cdsItemsNotaFiscal.Post;
     End;
     //
     // ShowMessage('Registro gravado.');
     Close;
end;

procedure TFrmCadItemNota.edtCodigo1KeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
  if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
  begin
     If (key = #13) and uFuncoes.Empty(edtCodigo.Text) and (spLocProduto.Enabled) Then
      begin
           key  := #0;
           spLocProdutoClick(Self);
      End;
      //
     If (key = #13) and not uFuncoes.Empty(edtCodigo.Text) Then
      begin
           key  := #0;
           dbeCFOP.SetFocus;
      End;
  End;
end;

procedure TFrmCadItemNota.spLocProdutoClick(Sender: TObject);
begin
  if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         edtCodigo.SetFocus;
         Application.CreateForm(TfrmLocProdutoServico, frmLocProdutoServico);
         try
             With frmLocProdutoServico do
               ShowModal;
         Finally
            If not (frmLocProdutoServico.cdsConsultar.IsEmpty) Then
             Begin
                 edtCodigo.Text := frmLocProdutoServico.cdsConsultarid.AsString;
                 Perform(WM_NextDlgCtl,1,0);
             End;
            frmLocProdutoServico.Free;
         End;
     End;
end;

procedure TFrmCadItemNota.edtCodigo1Exit(Sender: TObject);
Var
   aProduto : String;
   idTributacao : Integer;
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtCodigo.Text) Then
            begin
                 aProduto := edtCodigo.Text;
                 If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                  begin
                      If not (dmDados.ProcurarValor(aProduto, 'cod_barras', 'produtos')) Then
                      begin
                           Application.MessageBox(PChar('Código produto/serviço não cadastrado.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                           edtCodigo.Clear;
                           edtCodigo.SetFocus;
                           Exit;
                       End  // If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                       Else
                       begin
                           aProduto := dmDados.GetCodigo_CodigoBarras(aProduto);
                           edtCodigo.Text := aProduto;
                       End;
                  End;       // If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                  //
                  dmDados.FilterCDS(dmDados.cdsProduto, fsInteger, aProduto);
                  if not (dmDados.cdsProduto.IsEmpty) Then
                   begin
                        dsCadastroItem.DataSet.FieldByName('CDS_DESCRICAO').AsString := dmDados.cdsProdutodescricao.AsString;
                        if uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_NCM').AsString) Then
                           dsCadastroItem.DataSet.FieldByName('CDS_NCM').AsString       := dmDados.cdsProdutoid_ncm.AsString;
                        //
                        dsCadastroItem.DataSet.FieldByName('CDS_UNDCOM').AsString    := dmDados.cdsProdutoid_unidade.AsString;
                        //
                        dsCadastroItem.DataSet.FieldByName('CDS_VLUNITARIO').AsFloat := dmDados.cdsProdutovalor_venda.AsFloat;
                        fMaximoPercentualDesconto := dmDados.cdsProdutoperc_limite_desconto.AsFloat;
                        //
                        if not uFuncoes.Empty(DMDados.cdsProdutoorigem.AsString) Then
                           dsCadastroItem.DataSet.FieldByName('CDS_ORIGEM_PRODUTO').AsInteger := DMDados.cdsProdutoorigem.AsInteger;
                        //
                        if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
                         begin
                              {if (dsCadastroItem.DataSet.State = dsInsert) Then
                                  dsCadastroItem.DataSet.FieldByName('CDS_CSOSN').AsInteger := 102;}
                              //
                              If (aTipoOperacao  = 'S') Then
                              begin
                                  // IPI
                                  dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger := 53;
                                  // PIS
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger := 99;
                                  // Cofins
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger := 99;
                              End
                              Else
                              begin
                                  // IPI
                                  dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger := 49;
                                  // PIS
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger := 98;
                                  // Cofins
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger := 98;
                              End;
                         End;
                        //
                        if (uFrmPlusPdvNfe.iCodRegimeTributario = 3) Then
                        begin
                             idTributacao := dmDados.cdsProdutoid_tributacao.AsInteger;
                             dmDados.FilterCDS(dmDados.cdsTributacao, fsInteger, InttoStr(idTributacao));
                             //
                             if not (dmDados.cdsTributacao.IsEmpty) Then
                             begin
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger         := dmDados.cdsTributacaocst_icms.AsInteger;
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger     := dmDados.cdsTributacaocst_pis.AsInteger;
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger  := dmDados.cdsTributacaocst_cofins.AsInteger;
                             End;
                             //
                             dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger     := dmDados.cdsProdutocst_ipi.AsInteger;
                        End;
                        //
                        dsCadastroItem.DataSet.FieldByName('CDS_INDTOT').AsInteger := 1;
                        //
                        dbeCFOP.SetFocus;
                  End;
            End;
      End;
end;

procedure TFrmCadItemNota.FormCreate(Sender: TObject);
begin
      fMaximoPercentualDesconto := 0;
end;

procedure TFrmCadItemNota.Calcular;
Var
    M_VLSUBT, M_VLDESC, M_VLACRE, fPercentualAcrescimo : Double;
    M_VLUNIT, M_QTPROD, M_MARGE_LUCRO_ST, M_BCIPI, M_BC_ICMSST, M_VLICMS_ST : Double;
    fPercReducaoBC_ICMS : Double;
begin
     If not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST').asString) Then
     begin
         if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 10) Then
             gbxIcmsSt.Visible := True
         Else
             gbxIcmsSt.Visible := False;
     End
     Else
         gbxIcmsSt.Visible := False;
     //
     fPercReducaoBC_ICMS := 0;
     M_VLSUBT := 0;
     M_VLUNIT := dsCadastroItem.DataSet.fieldByname('CDS_VLUNITARIO').AsFloat;
     M_QTPROD := dsCadastroItem.DataSet.fieldByname('CDS_QTDECOM').AsFloat;
     M_VLDESC := 0;
     if (dsCadastroItem.DataSet.fieldByname('CDS_PEDESC').asFloat > 0) Then
        M_VLDESC := dsCadastroItem.DataSet.fieldByname('CDS_PEDESC').asFloat;
     M_VLACRE := 0;
     fPercentualAcrescimo := 0;
     //
     M_VLSUBT := uFuncoes.Arredondar((M_VLUNIT * M_QTPROD),2);
     if (M_VLDESC > 0) Then
     begin
         dsCadastroItem.DataSet.FieldByName('CDS_VLDESCONTO').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_VLSUBT, M_VLDESC),2);
         M_VLSUBT := uFuncoes.Arredondar(M_VLSUBT - dsCadastroItem.DataSet.FieldByName('CDS_VLDESCONTO').AsFloat, 2);  // + uFuncoes.Gerapercentual(M_VLUNIT, M_VLACRE);

     End
     Else
         dsCadastroItem.DataSet.FieldByName('CDS_VLDESCONTO').AsFloat := 0;
     //
     dsCadastroItem.DataSet.FieldByName('CDS_SUBTOTAL').AsFloat :=  M_VLSUBT;
     //
     if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 20)
       and (dsCadastroItem.DataSet.FieldByName('CDS_PEREDUCAO').AsFloat > 0) Then
            fPercReducaoBC_ICMS := dsCadastroItem.DataSet.FieldByName('CDS_PEREDUCAO').AsFloat;
     //  Valor Icms
     if (dsCadastroItem.DataSet.FieldByName('CDS_ALIQICMS').AsFloat > 0) Then
      begin
          if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST').AsString) Then
           begin
               if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 20) Then
                 begin
                      if (fPercReducaoBC_ICMS > 0) Then
                          dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat := uFuncoes.Arredondar(M_VLSUBT - (M_VLSUBT * (fPercReducaoBC_ICMS/100)),2)
                      Else
                         dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat := M_VLSUBT;
                 End
               Else
                   dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat := M_VLSUBT;
           End;

          //
          dsCadastroItem.DataSet.FieldByName('CDS_VLICMS').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat, dsCadastroItem.DataSet.FieldByName('CDS_ALIQICMS').AsFloat),2);
          //
          {III - nas operações realizadas no território maranhense, sem destinatário certo ou para comércio ambulante,
           ou estabelecimento não cadastrado no CAD-ICMS, o valor indicado na nota fiscal, acrescido de 30% (trinta por cento);
          NR Dec. 20.969/04}
          fPercentualAcrescimo := 0;
          // dmNFe.GetPercAcrescimoICMS(idNatureza);  to-do
          //
          if (fPercentualAcrescimo > 0) then
           begin
                dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat := uFuncoes.Arredondar(M_VLUNIT * M_QTPROD,2);
                dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat := dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat +
                                               uFuncoes.Arredondar(uFuncoes.Gerapercentual(dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat, fPercentualAcrescimo),2);
                dsCadastroItem.DataSet.FieldByName('CDS_VLICMS').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat, dsCadastroItem.DataSet.FieldByName('CDS_ALIQICMS').AsFloat),2);
           End;
      End
     Else
         dsCadastroItem.DataSet.FieldByName('CDS_VLICMS').AsFloat := 0;
     // Valor IPI
     if (dsCadastroItem.DataSet.FieldByName('CDS_ALIQIPI').AsFloat > 0) Then
      begin
          dsCadastroItem.DataSet.FieldByName('CDS_BC_IPI_CALC').AsFloat := uFuncoes.Arredondar(M_VLUNIT * M_QTPROD,2);
          dsCadastroItem.DataSet.FieldByName('CDS_VLIPI').AsFloat       := uFuncoes.Arredondar(uFuncoes.Gerapercentual(dsCadastroItem.DataSet.FieldByName('CDS_BC_IPI_CALC').AsFloat, dsCadastroItem.DataSet.FieldByName('CDS_ALIQIPI').AsFloat),2);
      End
     Else
     begin
         dsCadastroItem.DataSet.FieldByName('CDS_BC_IPI_CALC').AsFloat := 0;
         dsCadastroItem.DataSet.FieldByName('CDS_VLIPI').AsFloat := 0;
     End;
     // Valor PIS
      if (dsCadastroItem.DataSet.FieldByName('CDS_ALIQ_PIS').AsFloat > 0) Then
      begin
          dsCadastroItem.DataSet.FieldByName('CDS_BC_PIS_CALC').AsFloat  := M_VLSUBT;
          dsCadastroItem.DataSet.FieldByName('CDS_VALOR_PIS').AsFloat        := uFuncoes.Arredondar(uFuncoes.Gerapercentual(dsCadastroItem.DataSet.FieldByName('CDS_BC_PIS_CALC').AsFloat, dsCadastroItem.DataSet.FieldByName('CDS_ALIQ_PIS').AsFloat),2);
      End
      Else
          dsCadastroItem.DataSet.FieldByName('CDS_VALOR_PIS').AsFloat := 0;

     // Valor ICMS ST
     If (dsCadastroItem.DataSet.FieldByName('CDS_ALIQUOTA_ICMS_ST').AsFloat > 0) Then
     begin
         if (dsCadastroItem.DataSet.FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').AsFloat > 0) Then
          begin
              M_MARGE_LUCRO_ST := dsCadastroItem.DataSet.FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').AsFloat;
              M_BCIPI     := dsCadastroItem.DataSet.FieldByName('CDS_VLIPI').AsFloat;
              M_BC_ICMSST :=  dsCadastroItem.DataSet.FieldByName('CDS_BCICMS').AsFloat + M_BCIPI ;
              M_BC_ICMSST := M_BC_ICMSST + uFuncoes.Gerapercentual(M_BC_ICMSST, M_MARGE_LUCRO_ST);
              //calculos
              M_VLICMS_ST := uFuncoes.Gerapercentual(M_BC_ICMSST, dsCadastroItem.DataSet.FieldByName('CDS_ALIQUOTA_ICMS_ST').AsFloat);
              M_VLICMS_ST := M_VLICMS_ST - dsCadastroItem.DataSet.FieldByName('CDS_VLICMS').AsFloat;
              //
              dsCadastroItem.DataSet.FieldByName('CDS_IDMODA_CALC_ICMS_ST').AsInteger     := 5;  // margem valor agregado
              // dsCadastroItem.DataSet.FieldByName('CDS_PERC_REDUCAO_BC_ICMS_ST').AsFloat   := 0;
              // dsCadastroItem.DataSet.FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').AsFloat := M_MARGE_LUCRO_ST;
              dsCadastroItem.DataSet.FieldByName('CDS_BCICMS_ST').AsFloat := M_BC_ICMSST;
           End
           Else
           begin
                M_BC_ICMSST := dsCadastroItem.DataSet.FieldByName('CDS_BCICMS_ST').AsFloat;
                dsCadastroItem.DataSet.FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').AsFloat := 0;
                M_VLICMS_ST := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BC_ICMSST, dsCadastroItem.DataSet.FieldByName('CDS_ALIQUOTA_ICMS_ST').AsFloat), 2);
                M_VLICMS_ST := uFuncoes.Arredondar(M_VLICMS_ST - dsCadastroItem.DataSet.FieldByName('CDS_VLICMS').AsFloat,2);
                //
                dsCadastroItem.DataSet.FieldByName('CDS_IDMODA_CALC_ICMS_ST').AsInteger     := 5;  // margem valor agregado

           End;
          // FieldByName('CDS_VLICMS_ST').AsFloat := M_VLICMS_ST;
          dsCadastroItem.DataSet.FieldByName('CDS_VLICMS_ST').AsFloat := M_VLICMS_ST;
     End;
     {Else
     begin
          dsCadastroItem.DataSet.FieldByName('CDS_BCICMS_ST').AsFloat := 0;
          dsCadastroItem.DataSet.FieldByName('CDS_VLICMS_ST').AsFloat := 0;
     End;}

      // Valor COFINS
      if (dsCadastroItem.DataSet.FieldByName('CDS_ALIQ_COFINS').AsFloat > 0) Then
      begin
          dsCadastroItem.DataSet.FieldByName('CDS_BC_COFINS_CALC').AsFloat := M_VLSUBT;
          dsCadastroItem.DataSet.FieldByName('CDS_VALOR_COFINS').AsFloat       := uFuncoes.Arredondar(uFuncoes.Gerapercentual(dsCadastroItem.DataSet.FieldByName('CDS_BC_COFINS_CALC').AsFloat, dsCadastroItem.DataSet.FieldByName('CDS_ALIQ_COFINS').AsFloat),2);
      End
      Else
          dsCadastroItem.DataSet.FieldByName('CDS_VALOR_COFINS').AsFloat := 0;
      //
      if (dsCadastroItem.DataSet.FieldByName('CDS_VLIPI').AsFloat > 0) Then
          dsCadastroItem.DataSet.FieldByName('CDS_SUBTOTAL').AsFloat := M_VLSUBT + dsCadastroItem.DataSet.FieldByName('CDS_VLIPI').AsFloat;
end;

function TFrmCadItemNota.ValidarDataVct: Boolean;
begin
       Result := False;
       try
            dbeDataVct.Date := StrtoDate(dbeDataVct.text);
            if (dbeDataVct.Date <= Date) Then
              begin
                  Application.MessageBox('Data não pode ser inferior ou igual a data atual!','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  PageControl1.ActivePage := tsMedicamento;
                  dbeDataVct.SetFocus;
                  Exit;
              End;
              //
              Result := True;
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inválida!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  PageControl1.ActivePage := tsMedicamento;
                  dbeDataVct.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmCadItemNota.spCFOPClick(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeCFOP.SetFocus;
         Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
         try
             With frmLocCFOP do
               ShowModal;
         Finally
            If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
             Begin
                  dbeCFOP.Text := frmLocCFOP.cdsConsultarid.AsString;
                  dbeNCM.SetFocus;
             End;
            frmLocCFOP.Free;
         End;
     End;
end;

procedure TFrmCadItemNota.dbeCFOPKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
      if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           If (key = #13) and uFuncoes.Empty(dbeCFOP.Text) Then
            begin
                key  := #0;
                spCFOPClick(Self);
            End;
          //
          If (key = #13) and NOT uFuncoes.Empty(dbeCFOP.Text) Then
            begin
                key  := #0;
                dbeNCM.SetFocus;
            End;
      End;

end;

procedure TFrmCadItemNota.dbeCFOPExit(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeCFOP.Text) Then
            begin
                 If not (dmDados.ProcurarValorInt (dbeCFOP.Text, 'id', 'cfop')) Then
                  begin
                       Application.MessageBox(PChar('Código CFOP não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeCFOP.Clear;
                       dbeCFOP.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmCadItemNota.spLocalizarNCMClick(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
      begin
             dbeNCM.SetFocus;
             Application.CreateForm(TFrmLocalizarNCM, FrmLocalizarNCM);
             try
                 With FrmLocalizarNCM do
                   ShowModal;
             Finally
                If not (FrmLocalizarNCM.cdsConsultar.IsEmpty) Then
                 Begin
                      dbeNCM.Text := FrmLocalizarNCM.cdsConsultarid.AsString;
                      edtQTDE.SetFocus;
                 End;
                FrmLocalizarNCM.Free;
             End;
      End;
end;

procedure TFrmCadItemNota.dbeNCMKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (key = #13) and uFuncoes.Empty(dbeNCM.Text) and
         (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         Key := #0;
         spLocalizarNCMClick(Sender);
     End;
     //
     If (key = #13) and not uFuncoes.Empty(dbeNCM.Text) Then
      begin
           key  := #0;
           edtUnidade.SetFocus;
      End;
end;

procedure TFrmCadItemNota.dbeNCMExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
   begin
      if not uFuncoes.Empty(dbeNCM.Text)
        and (Length(dbeNCM.Text) < 8) Then
      begin
           Application.MessageBox(PChar('Código NCM não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNCM.SetFocus;
           Exit;
      End;
      //
           if not uFuncoes.Empty(dbeNCM.Text) Then
            begin
                 dbeNCM.Text := uFuncoes.StrZero(dbeNCM.Text,8);
                 If not (dmDados.ProcurarValor(dbeNCM.Text, 'id', 'ncm')) Then
                  begin
                       Application.MessageBox(PChar('Código NCM não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeNCM.Clear;
                       dbeNCM.SetFocus;
                       Exit;
                  End;
            End;
   End;
end;

procedure TFrmCadItemNota.edtUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
   If (key = #13) and not uFuncoes.Empty(edtUnidade.Text) Then
      begin
           key  := #0;
           edtQTDE.SetFocus;
      End;
end;

procedure TFrmCadItemNota.edtQTDEKeyPress(Sender: TObject; var Key: Char);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) and not uFuncoes.Empty(edtQTDE.Text) Then
        begin
             key  := #0;
             edtValorUnitario.SetFocus;
        End;

end;

procedure TFrmCadItemNota.edtValorUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
     If (key = #13) and not uFuncoes.Empty(edtValorUnitario.Text) Then
      begin
           key  := #0;
           edtDesconto.SetFocus;
      End;
end;

procedure TFrmCadItemNota.edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
      If (key = #13) Then
       begin
            key := #0;
            //
           { if (PageControl1.ActivePageIndex = 0) Then
             begin
                  if uFuncoes.Empty(cmbCstICMS.Text) Then
                      cmbCstICMS.SetFocus
                  Else
                      btnOK.SetFocus;
             End;

             if (PageControl1.ActivePageIndex = 1) Then
             begin
                  if uFuncoes.Empty(cmbSimples.Text) Then
                      cmbSimples.SetFocus
                  Else
                      btnOK.SetFocus;
             End;    }
       End;

end;

procedure TFrmCadItemNota.edtQTDEExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.FieldByName('CDS_QTDECOM').AsFloat < 0 ) Then
         dsCadastroItem.DataSet.FieldByName('CDS_QTDECOM').AsFloat := 1;
      Calcular;
end;

procedure TFrmCadItemNota.edtValorUnitarioExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.FieldByName('CDS_VLUNITARIO').AsFloat < 0 ) Then
         dsCadastroItem.DataSet.FieldByName('CDS_VLUNITARIO').AsFloat := 1;
     Calcular;
end;

procedure TFrmCadItemNota.edtDescontoExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat < 0 )
      or (dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat > 99.99) Then
         dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat := 0;

    Calcular;
end;

procedure TFrmCadItemNota.FormShow(Sender: TObject);
begin
     dmDados.RefreshCDS(dmDados.cdsConfig);
     //
     dmNFe.CarregarlistaCST_ICMS();
     dmNFe.CarregarlistaCST_IPI();
     dmNFe.CarregarlistaCST_PIS();
     dmNFe.CarregarlistaCST_COFINS();
     dmNFe.CarregarlistaCST_SIMPLES();
     dmNFe.CarregarlistaOrigemProduto();
     //
     dmNFe.CarregarListaModalidadesBC_ICMS();
     dmNFe.CarregarListaModalidadesBC_ICMS_ST();
     //edtDescricao.Text := dm.GetNomeProduto(dmNFe.cdsItensNotaNFI_PRODUTO.AsString);
     tsbSimples.TabVisible    := False;
     tsMedicamento.TabVisible := False;
     //
     if (dmDados.cdsConfigfarma.AsBoolean) Then
        tsMedicamento.TabVisible := True;
     //gbxIcmsSt.Enabled := False;
     gbxIcmsSt.Visible := False;
     if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
     begin
          tsbSimples.TabVisible := True;
          tsbICMS.TabVisible    := False;
          //
          if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
          begin
             If (aTipoOperacao  = 'S') Then
             begin
                 // IPI
                 dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger := 53;
                 // PIS
                 dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger := 99;
                 // Cofins
                 dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger := 99;
             End
             Else
             begin
                 // IPI
                 dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger := 49;
                 // PIS
                 dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger := 98;
                 // Cofins
                 dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger := 98;
             End;
          End;
          //
          PageControl1.ActivePageIndex := 1;
     End
     Else
        PageControl1.ActivePageIndex := 0;
     //
     if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST').AsString) Then
         dmDados.RefreshCDS(dmNFe.cdsListaCstICMS);
     if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_ORIGEM_PRODUTO').AsString) Then
         dmDados.RefreshCDS(dmNFe.cdsListaOrigemProduto);
     if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsString) Then
         dmDados.RefreshCDS(dmNFe.cdsListaCstIPI);
     if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsString) Then
         dmDados.RefreshCDS(dmNFe.cdsListaPIS);
     if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsString) Then
         dmDados.RefreshCDS(dmNFe.cdsListaCofins);
     if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CSOSN').AsString) Then
         dmDados.RefreshCDS(dmNFe.cdsListaCstSimples);
     //
     spLocProduto.Visible := false;
     edtCodigo.Enabled := False;
     //
     if (dsCadastroItem.DataSet.State in [dsInsert]) Then
      begin
           spLocProduto.Visible := true;
           edtCodigo.Enabled := true;
           edtCodigo.Visible := true;
           if not uFuncoes.Empty(aCFOP) Then
              dbeCFOP.Text := aCFOP;
           dsCadastroItem.DataSet.FieldByName('CDS_QTDECOM').AsFloat := 1;
           //
           edtCodigo.SetFocus;
      End ;
      if (dsCadastroItem.DataSet.State in [dsEdit]) Then
      begin
           edtCodigo.Text := uFuncoes.StrZero( dsCadastroItem.DataSet.FieldByName('CDS_CDPROD').AsString, 9);
           edtCodigo.Enabled := False;
           edtCodigo.Visible := true;
           VerificaCST_ICMS_Reducao();
           dsCadastroItem.DataSet.FieldByName('CDS_INDTOT').AsInteger := 1;
           dbeCFOP.SetFocus;
      End;
end;

procedure TFrmCadItemNota.dbeBCIcmsExit(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.edtAliquotaICMSExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.dbeMargemICMS_STExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.dbeBaseICMS_STExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
     Calcular;
end;

procedure TFrmCadItemNota.dbeAliquotaICMS_STExit(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
     Calcular;
end;

procedure TFrmCadItemNota.cmbCstICMSExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
   begin
     VerificaCST_ICMS_Reducao();
     Calcular;
   End;
end;

procedure TFrmCadItemNota.cmbCstIpiExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TFrmCadItemNota.dbeBCIPIExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TFrmCadItemNota.dbeAliquotaIPIExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.cmbCstCofinsExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.dbeValorBsCofinsExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TFrmCadItemNota.DBEdit3Exit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.dbeCFOPEnter(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert]) and not uFuncoes.Empty(aCFOP) Then
          dbeCFOP.Text := aCFOP;
end;

procedure TFrmCadItemNota.dbeDataFabExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit])
      And (dbeLote.Text <> 'GERAL') 
      and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDataFab.text)) Then
       try
            dbeDataFab.Date := StrtoDate(dbeDataFab.text);
            if (dbeDataFab.Date > Date) Then
              begin
                  Application.MessageBox('Data não pode ser superior a data atual!','ATENÇÃO',
                     MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeDataFab.SetFocus;
                  Exit;
              End;
              //
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inválida!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDataFab.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmCadItemNota.dbeDataVctExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit])
      and (dbeLote.Text <> 'GERAL') 
      and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDataVct.text)) Then
     begin
           ValidarDataVct();
     End;
end;

procedure TFrmCadItemNota.dsCadastroItemDataChange(Sender: TObject;
  Field: TField);
begin
    edtCodigo.ReadOnly := dsCadastroItem.DataSet.State in [dsEdit];
end;

procedure TFrmCadItemNota.CamposReducaoICMS(bStatus: Boolean);
begin
    lblReducao.Visible := bStatus;
    dbeReducaoICMS.Visible := bStatus;
end;

procedure TFrmCadItemNota.VerificaCST_ICMS_Reducao;
begin
     CamposReducaoICMS(false);
     if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 20) Then
          CamposReducaoICMS(True)
     Else
         if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit])
            and (dsCadastroItem.DataSet.FieldByName('CDS_PEREDUCAO').AsFloat > 0)  Then
                dsCadastroItem.DataSet.FieldByName('CDS_PEREDUCAO').AsFloat := 0;
end;

procedure TFrmCadItemNota.dbeReducaoICMSExit(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
        Calcular;
end;

procedure TFrmCadItemNota.edtCodigoExit(Sender: TObject);
Var
   aProduto : String;
   idTributacao : Integer;
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtCodigo.Text) Then
            begin
                 aProduto := edtCodigo.Text;
                 //
                 if Length(aProduto) > 9 Then
                 begin
                      If not (dmDados.ProcurarValor(aProduto, 'cod_barras', 'produtos')) Then
                      begin
                           Application.MessageBox(PChar('Código produto/serviço não cadastrado.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                           edtCodigo.Clear;
                           dbeDescricaoProduto.Text := '';
                           edtCodigo.SetFocus;
                           Exit;
                       End;  // If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                       //
                       aProduto := dmDados.GetCodigo_CodigoBarras(aProduto);
                       edtCodigo.Text := uFuncoes.StrZero( aProduto, 9);
                 End;
                 //
                 If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                  begin
                      If not (dmDados.ProcurarValor(aProduto, 'cod_barras', 'produtos')) Then
                      begin
                           Application.MessageBox(PChar('Código produto/serviço não cadastrado.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                           edtCodigo.Clear;
                           dbeDescricaoProduto.Text := '';
                           edtCodigo.SetFocus;
                           Exit;
                       End  // If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                       Else
                       begin
                           aProduto := dmDados.GetCodigo_CodigoBarras(aProduto);
                           //edtCodigo.Text := aProduto;
                           edtCodigo.Text := uFuncoes.StrZero( aProduto, 9);
                       End;
                  End;       // If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                  //
                  dmDados.FilterCDS(dmDados.cdsProduto, fsInteger, aProduto);
                  if not (dmDados.cdsProduto.IsEmpty) Then
                   begin
                        dsCadastroItem.DataSet.FieldByName('CDS_DESCRICAO').AsString := dmDados.cdsProdutodescricao.AsString;
                        if uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_NCM').AsString) Then
                           dsCadastroItem.DataSet.FieldByName('CDS_NCM').AsString       := dmDados.cdsProdutoid_ncm.AsString;
                        //
                        dsCadastroItem.DataSet.FieldByName('CDS_UNDCOM').AsString    := dmDados.cdsProdutoid_unidade.AsString;
                        //
                        dsCadastroItem.DataSet.FieldByName('CDS_VLUNITARIO').AsFloat := dmDados.cdsProdutovalor_venda.AsFloat;
                        fMaximoPercentualDesconto := dmDados.cdsProdutoperc_limite_desconto.AsFloat;
                        //
                        if not uFuncoes.Empty(DMDados.cdsProdutoorigem.AsString) Then
                           dsCadastroItem.DataSet.FieldByName('CDS_ORIGEM_PRODUTO').AsInteger := DMDados.cdsProdutoorigem.AsInteger;
                        //
                        if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
                         begin
                              {if (dsCadastroItem.DataSet.State = dsInsert) Then
                                  dsCadastroItem.DataSet.FieldByName('CDS_CSOSN').AsInteger := 102;}
                              //
                              If (aTipoOperacao  = 'S') Then
                              begin
                                  // IPI
                                  dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger := 53;
                                  // PIS
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger := 99;
                                  // Cofins
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger := 99;
                              End
                              Else
                              begin
                                  // IPI
                                  dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger := 49;
                                  // PIS
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger := 98;
                                  // Cofins
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger := 98;
                              End;
                         End;
                        //
                        if (uFrmPlusPdvNfe.iCodRegimeTributario = 3) Then
                        begin
                             idTributacao := dmDados.cdsProdutoid_tributacao.AsInteger;
                             dmDados.FilterCDS(dmDados.cdsTributacao, fsInteger, InttoStr(idTributacao));
                             //
                             if not (dmDados.cdsTributacao.IsEmpty) Then
                             begin
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger         := dmDados.cdsTributacaocst_icms.AsInteger;
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_PIS').AsInteger     := dmDados.cdsTributacaocst_pis.AsInteger;
                                  dsCadastroItem.DataSet.FieldByName('CDS_CST_COFINS').AsInteger  := dmDados.cdsTributacaocst_cofins.AsInteger;
                             End;
                             //
                             dsCadastroItem.DataSet.FieldByName('CDS_IPI_CST').AsInteger     := dmDados.cdsProdutocst_ipi.AsInteger;
                        End;
                        //
                        edtCodigo.Text := uFuncoes.StrZero( edtCodigo.Text, 9);
                        dsCadastroItem.DataSet.FieldByName('CDS_CDPROD').AsString := edtCodigo.Text;
                        dsCadastroItem.DataSet.FieldByName('CDS_INDTOT').AsInteger := 1;
                        //

                        dbeCFOP.SetFocus;
                  End;
            End;
      End;
end;

procedure TFrmCadItemNota.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
  if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
  begin
     If (key = #13) and uFuncoes.Empty(edtCodigo.Text) and (spLocProduto.Enabled) Then
      begin
           key  := #0;
           spLocProdutoClick(Self);
      End;
      //
     If (key = #13) and not uFuncoes.Empty(edtCodigo.Text) Then
      begin
           key  := #0;
           dbeCFOP.SetFocus;
      End;
  End;
end;

procedure TFrmCadItemNota.spDescValorClick(Sender: TObject);
Var
     FSubtotal : Double;
begin
     if uFuncoes.Empty(edtQTDE.Text) Then
     begin
         edtQTDE.SetFocus;
         Exit;
     End;
     //
     if uFuncoes.Empty(edtValorUnitario.Text) Then
     begin
         edtValorUnitario.SetFocus;
         Exit;
     End;
     //
     if (edtDesconto.CanFocus) then
        edtDesconto.SetFocus;
     Application.CreateForm(TFrmDescontoValor,FrmDescontoValor);
     Try
          FSubtotal := dsCadastroItem.DataSet.FieldByName('CDS_QTDECOM').AsFloat * dsCadastroItem.DataSet.FieldByName('CDS_VLUNITARIO').AsFloat;
          uFrmDescontoValor.fValorTotal := FSubtotal;
          if (FrmDescontoValor.ShowModal = mrOk) Then
          begin
              if (uFrmDescontoValor.FResultado > 0) Then
                  dsCadastroItem.DataSet.FieldByName('CDS_PEDESC').AsFloat := uFrmDescontoValor.FResultado;
          End;
     Finally
          FrmDescontoValor.Free;
     End;
end;

end.


