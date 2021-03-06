unit uFrmNFENew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, Grids, DBGrids,
  DBClient, ToolEdit, RXDBCtrl, Mask, DBCtrls, CurrEdit, Menus, DBTables,
  pcnNFeRTXT,  pcnConversao, FMTBcd, SqlExpr, pcnConversaoNFe, JvExDBGrids,
  JvDBGrid;

type
  TFrmNotaFiscalEletronicaNovo = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    BtAdicionar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    tbsDados: TTabSheet;
    tbsDestinatario: TTabSheet;
    tsbTotais: TTabSheet;
    tbsTransportes: TTabSheet;
    dsCadastro: TDataSource;
    pnlTopo: TPanel;
    pnlDados: TPanel;
    pnlDetalheDados: TPanel;
    pnlBotoes: TPanel;
    grdConsultar: TDBGrid;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    dbeCNPJCPF: TDBEdit;
    Label3: TLabel;
    dbeRazaoDestinatario: TDBEdit;
    Label4: TLabel;
    dbeModelo: TDBEdit;
    Label5: TLabel;
    dbeNumero: TDBEdit;
    Label6: TLabel;
    dbeSerie: TDBEdit;
    dbeDTEMIS: TDBDateEdit;
    Label7: TLabel;
    btnNovoItem: TBitBtn;
    btnExcluiItem: TBitBtn;
    btnSalvarItem: TBitBtn;
    btnCancelarItem: TBitBtn;
    pnlTotalItens: TPanel;
    Label8: TLabel;
    dbeCupom: TDBEdit;
    Label9: TLabel;
    cmbNatureza: TDBLookupComboBox;
    rgTipo: TDBRadioGroup;
    Label10: TLabel;
    cmbFormaPaga: TDBLookupComboBox;
    Label11: TLabel;
    cmbEmissao: TDBLookupComboBox;
    Label12: TLabel;
    cmbFinalidadeEmissao: TDBLookupComboBox;
    dsItensNota: TDataSource;
    edtCDPROD: TEdit;
    Label13: TLabel;
    spLocProduto: TSpeedButton;
    edtDescricao: TEdit;
    spCFOP: TSpeedButton;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtCFOP: TEdit;
    edtQTDE: TCurrencyEdit;
    edtValorUnitario: TCurrencyEdit;
    edtDesconto: TCurrencyEdit;
    edtICMS: TCurrencyEdit;
    edtIPI: TCurrencyEdit;
    edtSubTotal: TCurrencyEdit;
    spLocCliente: TSpeedButton;
    Label51: TLabel;
    cmbTipoPessoa: TComboBox;
    tsbInformacoes: TTabSheet;
    Label52: TLabel;
    DBMemo1: TDBMemo;
    Label53: TLabel;
    mmoObservacao: TDBMemo;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    dbeEndTransportadora: TDBEdit;
    TabSheet2: TTabSheet;
    tbsVeiculo: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    dbeTransportadora: TDBEdit;
    spTransportadora: TSpeedButton;
    Label33: TLabel;
    dbeCNPJTransporte: TDBEdit;
    Label34: TLabel;
    dbeTransRazao: TDBEdit;
    Label35: TLabel;
    DBEdit15: TDBEdit;
    Label54: TLabel;
    dbeVeiculoPlaca: TDBEdit;
    Label55: TLabel;
    dbeVeiculoRNTC: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit14: TDBEdit;
    Label58: TLabel;
    DBEdit28: TDBEdit;
    Label59: TLabel;
    DBEdit29: TDBEdit;
    Label60: TLabel;
    cmbUFRetencao: TDBComboBox;
    Label61: TLabel;
    dbeCidadeRetencao: TDBEdit;
    Label62: TLabel;
    dbeCFOPRetencaoICMS: TDBEdit;
    Label63: TLabel;
    dbeICMSRetido: TDBEdit;
    DBGridVolumes: TDBGrid;
    dsVolumes: TDataSource;
    pnlBotoesVolumes: TPanel;
    btnIncVolume: TBitBtn;
    btnEditarVol: TBitBtn;
    btnExcluir: TBitBtn;
    Label64: TLabel;
    dbeRecoquePlaca: TDBEdit;
    Label65: TLabel;
    dbeReboqueRNTC: TDBEdit;
    Label66: TLabel;
    TabSheet6: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label67: TLabel;
    dbeCNPJEmitente: TDBEdit;
    Label68: TLabel;
    dbeRazaoEmitente: TDBEdit;
    Label69: TLabel;
    dbeNomeFantasiaEmitente: TDBEdit;
    Label70: TLabel;
    dbeEmiInsEstadual: TDBEdit;
    Label71: TLabel;
    DBEdit37: TDBEdit;
    Label72: TLabel;
    DBEdit38: TDBEdit;
    Label73: TLabel;
    DBEdit39: TDBEdit;
    Label74: TLabel;
    dbeLogradouroEmitente: TDBEdit;
    Label75: TLabel;
    dbeNumeroEmissor: TDBEdit;
    Label76: TLabel;
    dbeComplementoEmitente: TDBEdit;
    Label77: TLabel;
    dbeCepEmitente: TDBEdit;
    Label78: TLabel;
    dbeBairroEmissor: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    dbeCidadeEmissor: TDBEdit;
    Label81: TLabel;
    dbeFoneEmitente: TDBEdit;
    PageControlImpostos: TPageControl;
    tbsICMS: TTabSheet;
    tbsISSQN: TTabSheet;
    tbsRetencao: TTabSheet;
    Label22: TLabel;
    dbeTotalMercadorias: TDBEdit;
    Label23: TLabel;
    dbeBaseCalculoICMS: TDBEdit;
    Label25: TLabel;
    dbeBaseSubstituicao: TDBEdit;
    Label24: TLabel;
    dbeValorICMS: TDBEdit;
    Label26: TLabel;
    dbeValorSubtituicao: TDBEdit;
    rgTipoFrete: TDBRadioGroup;
    Label27: TLabel;
    dbeTotalFrete: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    dbeTotalSeguro: TDBEdit;
    dbeTotalIPI: TDBEdit;
    Label30: TLabel;
    dbeOutrasDespesas: TDBEdit;
    Label31: TLabel;
    dbeValorNota: TDBEdit;
    Label83: TLabel;
    DBEdit18: TDBEdit;
    Label84: TLabel;
    DBEdit19: TDBEdit;
    Label85: TLabel;
    DBEdit22: TDBEdit;
    Label86: TLabel;
    DBEdit23: TDBEdit;
    Label87: TLabel;
    DBEdit24: TDBEdit;
    Label88: TLabel;
    DBEdit25: TDBEdit;
    Label89: TLabel;
    DBEdit27: TDBEdit;
    Label90: TLabel;
    DBEdit36: TDBEdit;
    Label91: TLabel;
    DBEdit40: TDBEdit;
    Label92: TLabel;
    DBEdit41: TDBEdit;
    Label93: TLabel;
    DBEdit44: TDBEdit;
    Label94: TLabel;
    DBEdit45: TDBEdit;
    spCFOPRetencao: TSpeedButton;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    dbeCNPJCPFDest: TDBEdit;
    dbeRazaoDest: TDBEdit;
    dbeInscricaoEstadual: TDBEdit;
    DBEdit21: TDBEdit;
    dbeEmailDest: TDBEdit;
    GroupBox3: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    dbeLogradouroDest: TDBEdit;
    dbeNumeroDest: TDBEdit;
    dbeBairroDest: TDBEdit;
    edtCepDesc: TDBEdit;
    Panel4: TPanel;
    pcRetiradaEntrega: TPageControl;
    tsDestRetirada: TTabSheet;
    tsDestEntrega: TTabSheet;
    cbxRetirada: TCheckBox;
    cbxEntrega: TCheckBox;
    Label95: TLabel;
    dbeCNPJ: TDBEdit;
    Label96: TLabel;
    dbeRetiradaLogradouro: TDBEdit;
    Label97: TLabel;
    dbeRetiradaNumero: TDBEdit;
    Label98: TLabel;
    dbeRetiradaComp: TDBEdit;
    Label99: TLabel;
    dbeRetiradaBairro: TDBEdit;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    dbeEntregaCNPJ: TDBEdit;
    Label103: TLabel;
    dbeEntregaLogradouro: TDBEdit;
    Label104: TLabel;
    dbeEntregaNumero: TDBEdit;
    Label105: TLabel;
    dbeEntregaComp: TDBEdit;
    Label106: TLabel;
    dbeEntregaBairro: TDBEdit;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    dbeTotalDesconto: TDBEdit;
    BtEditar: TBitBtn;
    tbCobranca: TTabSheet;
    gbxDuplicatas: TGroupBox;
    DBGDuplicata: TDBGrid;
    btnAddDuplicata: TBitBtn;
    btnEdiDuplicata: TBitBtn;
    btnExcDuplicata: TBitBtn;
    dsDuplicatas: TDataSource;
    Label110: TLabel;
    btnVenda: TBitBtn;
    lblTotal: TLabel;
    Label111: TLabel;
    dbeDestTelefone: TDBEdit;
    Label112: TLabel;
    Label113: TLabel;
    dsItens: TDataSource;
    dbeNCM: TEdit;
    lblItens: TLabel;
    Label114: TLabel;
    edtUnidade: TEdit;
    Label18: TLabel;
    dbeValorPis: TDBEdit;
    Label115: TLabel;
    dbeValorCofins: TDBEdit;
    dbeDTEntSai: TDBDateEdit;
    Label116: TLabel;
    btnImportaXML: TBitBtn;
    OpenDialog: TOpenDialog;
    Label117: TLabel;
    EditChaveAcesso: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    btnCupomFiscal: TBitBtn;
    DBText1: TDBText;
    rbConsumidorFinal: TDBRadioGroup;
    Label118: TLabel;
    cmbDestinoOpe: TDBLookupComboBox;
    Label119: TLabel;
    cmbTipoOperacao: TDBLookupComboBox;
    Label120: TLabel;
    cmbTipoContribuinte: TDBLookupComboBox;
    tsNotaReferencias: TTabSheet;
    pnlBotoesRef: TPanel;
    btnNTR_Incluir: TBitBtn;
    btnNTR_Detalhar: TBitBtn;
    btnNTR_Excluir: TBitBtn;
    dbGridNotaReferenciadas: TDBGrid;
    dsListaNotasReferenciadas: TDataSource;
    edtNomeEmpresa: TEdit;
    dbeCidadeDest: TDBLookupComboBox;
    dbeCidadeRetirada: TDBLookupComboBox;
    dbeCidadeEntrega: TDBLookupComboBox;
    dbeCidadeTransportadora: TDBLookupComboBox;
    cmbUFEmitente: TDBLookupComboBox;
    cmbUFDest: TDBLookupComboBox;
    cmbUFRetiratada: TDBLookupComboBox;
    cmbUFEntrega: TDBLookupComboBox;
    cmbUFTransp: TDBLookupComboBox;
    cmbReboqueUF: TDBLookupComboBox;
    Label48: TLabel;
    cmbUFVeiculo: TDBLookupComboBox;
    spDescValor: TSpeedButton;
    dbeDescricaoNaturezas: TDBEdit;
    procedure BtSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure spLocProdutoClick(Sender: TObject);
    procedure dbeDTEMISExit(Sender: TObject);
    procedure dbeSerieKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure edtQTDEExit(Sender: TObject);
    procedure edtQTDEKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioExit(Sender: TObject);
    procedure edtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtAcrescimoExit(Sender: TObject);
    procedure edtAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure edtICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edtICMSExit(Sender: TObject);
    procedure edtIPIExit(Sender: TObject);
    procedure edtIPIKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure spTransportadoraClick(Sender: TObject);
    procedure spLocClienteClick(Sender: TObject);
    procedure dbeCNPJCPFKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure dsItensNotaDataChange(Sender: TObject; Field: TField);
    procedure dbeCNPJCPFExit(Sender: TObject);
    procedure cmbTipoPessoaExit(Sender: TObject);
    procedure spCFOPClick(Sender: TObject);
    procedure edtCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure edtCFOPExit(Sender: TObject);
    procedure dbeTransportadoraKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTransportadoraExit(Sender: TObject);
    procedure dbeTransportadoraChange(Sender: TObject);
    procedure btnIncVolumeClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarVolClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure dbeCFOPRetencaoICMSKeyPress(Sender: TObject; var Key: Char);
    procedure spCFOPRetencaoClick(Sender: TObject);
    procedure dbeCFOPRetencaoICMSExit(Sender: TObject);
    procedure dbeCupomKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCupomExit(Sender: TObject);
    procedure dbeCidadeEmissorExit(Sender: TObject);
    procedure dbeCidadeRetencaoExit(Sender: TObject);
    procedure dbeCNPJExit(Sender: TObject);
    procedure dbeEntregaCNPJExit(Sender: TObject);
    procedure dbeTotalFreteExit(Sender: TObject);
    procedure dbeTotalSeguroExit(Sender: TObject);
    procedure dbeOutrasDespesasExit(Sender: TObject);
    procedure dbeTotalDescontoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtEditarClick(Sender: TObject);
    procedure dbeNumeroExit(Sender: TObject);
    procedure btnAddDuplicataClick(Sender: TObject);
    procedure btnEdiDuplicataClick(Sender: TObject);
    procedure btnExcDuplicataClick(Sender: TObject);
    procedure tbCobrancaShow(Sender: TObject);
    procedure dbeNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDTEMISKeyPress(Sender: TObject; var Key: Char);
    procedure cmbNaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFormaPagaKeyPress(Sender: TObject; var Key: Char);
    procedure cmbEmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFinalidadeEmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipoPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVendaClick(Sender: TObject);
    procedure dbeNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNCMExit(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoFreteChange(Sender: TObject);
    procedure rgTipoFreteClick(Sender: TObject);
    procedure dbeInscricaoEstadualExit(Sender: TObject);
    procedure edtUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtUnidadeExit(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeDTEntSaiKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDTEntSaiExit(Sender: TObject);
    procedure btnImportaXMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCupomFiscalClick(Sender: TObject);
    procedure dbeNumeroDestKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCNPJTransporteExit(Sender: TObject);
    procedure dbeEmailDestExit(Sender: TObject);
    procedure cmbTipoOperacaoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbDestinoOpeKeyPress(Sender: TObject; var Key: Char);
    procedure dsListaNotasReferenciadasDataChange(Sender: TObject;
      Field: TField);
    procedure btnNTR_IncluirClick(Sender: TObject);
    procedure btnNTR_DetalharClick(Sender: TObject);
    procedure btnNTR_ExcluirClick(Sender: TObject);
    procedure dbeInscricaoEstadualKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCNPJCPFChange(Sender: TObject);
    procedure cmbUFDestExit(Sender: TObject);
    procedure cmbUFRetiratadaExit(Sender: TObject);
    procedure cmbUFEntregaExit(Sender: TObject);
    procedure cmbUFTranspExit(Sender: TObject);
    procedure dbeCidadeDestEnter(Sender: TObject);
    procedure dbeCidadeRetiradaEnter(Sender: TObject);
    procedure dbeCidadeEntregaEnter(Sender: TObject);
    procedure dbeCidadeTransportadoraEnter(Sender: TObject);
    procedure dbeVeiculoPlacaExit(Sender: TObject);
    procedure dbeRecoquePlacaExit(Sender: TObject);
    procedure dbeCidadeEntregaExit(Sender: TObject);
    procedure dbeCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure dbeEntregaCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCNPJTransporteKeyPress(Sender: TObject; var Key: Char);
    procedure spDescValorClick(Sender: TObject);
    //procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    procedure TrataBotoes;
    procedure Buscar(aCodigo : String);
    procedure Registro;
    procedure BotoesItem;
    procedure BuscarProduto(aCodigo : String);
    procedure CalcularTotalItens(aCDS : TClientDataSet);
    procedure CalcularTotalNota;
    procedure LimparCampos;
    procedure Calcular;
    Function ValidarCampos() : Boolean;
    Procedure AbrirDetalhesNota(iCodigo : Integer);
    Procedure BuscarTransportadora(aCodigo : String);
    procedure LimpaCamposTransportadora();
    procedure TipoPessoa(aTipo : String);
    Procedure CalcularTotalDuplicata(aCDS : TClientDataSet);
    Procedure DetalhesNota;
    procedure LimparCamposProduto;
    Function VerificarNCMProduto(aCDS : TClientDataSet): Boolean;
    Function VerificarUnidadeProdutos(aCDS : TClientDataSet) : Boolean;
    Function ImportarXML(): boolean;
    Procedure AddRegistroNFeImportada(iNumNota : Integer; aNumeroNFe : String);
    Function TotalDesconto(aCDsItems : TClientDataSet): Double;
    Procedure LimparCaracter();
    Procedure ExcluirItemNotaReferencia();
    Procedure CarregarDadosEmitente(idEmpresa : Integer);
    Procedure FormatarCampoCPF_CNPJ();
    Procedure LimparCamposDestinatario();
    Procedure LancarItem();
    Procedure LancarItemEdit();
    Procedure VerificarNatureza();
  public
    { Public declarations }

  end;

var
  FrmNotaFiscalEletronicaNovo: TFrmNotaFiscalEletronicaNovo;
  M_NRITEM, iNumNota : Integer;
  fValorTabela, fTOTAL_NFe : Double;
  bFluxoEdicao : Boolean;
  M_QTCASA, FNRVENDA : Integer;
  M_MASCARA_FORMATACAO : String;

implementation

uses UdmDados, uFuncoes, Math, uFrmPlusPdvNfe, udmNFe, uFrmLocalizaCliente,
  uFrmLocProdutoServico, uFrmLocCFOP, uFrmLocalizarNCM, uFrmCadDuplicata,
  uFrmCadVolumes, uFrmLocVenda, uFrmCupomVinculado,
  uFrmEditarNotaRef, uFrmCadItemNota, uFrmLocTransportadora, DateUtils,
  pcnNFe, uFrmDescontoValor;

{$R *.dfm}

procedure TFrmNotaFiscalEletronicaNovo.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmNotaFiscalEletronicaNovo.FormShow(Sender: TObject);
begin
     KeyPreview := True;
     tbsISSQN.TabVisible := False;
     tbsRetencao.TabVisible := False;
     //
     dmNFe.CarregarListaFormaPagamento();
     dmNFe.CarregarListaFormaEmissao();
     dmNFe.CarregarListaFinalidadeEmissao();
     dmNFe.CarregarListaTipodeContribuinte();
     //
     dmNFe.CarregarListaDestinoOperacao();
     dmNFe.CarregarListaTipoAtendimento();
     dmNFe.CarregarListaTipodeContribuinte();
     //
     dmDados.RefreshCDS( dmNFe.cdsListaNaturezaOpr );
     if (dmNFe.cdsItemsNotaFiscal.Active) Then
       dmNFe.cdsItemsNotaFiscal.EmptyDataSet;
     //
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
     PageControlImpostos.ActivePageIndex := 0;
     pcRetiradaEntrega.ActivePageIndex   := 0;
     //
     btnVenda.Visible := true;
     {if (DM.CdsConfigcfg_mostrar_botao.AsString = 'S') Then
        btnVenda.Visible := true;}
     //                              
     btnImportaXML.Visible := False;
     //
     lblItens.Caption := '';
     pnlDetalheDados.Enabled := False;
     //
     {if (DM.CdsConfigcfg_fllote.AsString = 'S') Then  to-do
     begin
         grdConsultar.Columns[11].Visible := True;
         grdConsultar.Columns[12].Visible := True;
     End
     Else
     begin}
         grdConsultar.Columns[13].Visible := false;
         grdConsultar.Columns[14].Visible := false;
     //End;
     //
     If (iNumNota = 0) Then
          Registro
     Else
      begin
         dmDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(iNumNota));
         // Destinatario
         if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('destinatario_uf').AsString) then
          begin
             // dmNFe.AbrirListaCidadeUF(dsCadastro.DataSet.fieldByName('destinatario_uf').AsString, dmNFe.cdsListaCidades);  //      UF_EMITENTE
             dmNFe.AbrirListaCidadeUF(cmbUFDest.Text, dmNFe.cdsListaCidades);
          End;
         //
         if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('emitente_retirada_uf').AsString) then
             dmNFe.AbrirListaCidadeUF(dsCadastro.DataSet.fieldByName('UF_EMITENTE_RET').AsString, dmNFe.cdsRetiradaCidade);
         if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('destinatario_entrega_uf').AsString) then
             dmNFe.AbrirListaCidadeUF(dsCadastro.DataSet.fieldByName('UF_DESTINATARIO_ENTREGA').AsString, dmNFe.cdsEntregaCidade);
         //
         cbxRetirada.Checked := false;
         if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('emitente_retirada_cnpjcpf').AsString) Then
              cbxRetirada.Checked := True;
         cbxEntrega.Checked := false;
         if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('destinatario_entrega_cnpjcpf').AsString) Then
              cbxEntrega.Checked := True;
         // Transportes
         if not ufuncoes.Empty(dmNFe.cdsNotaFiscaltransporte_uf.AsString) Then
         begin
             dmNFe.AbrirListaCidadeUF(dmNFe.cdsNotaFiscalUF_TRANSPORTE.AsString, dmNFe.cdsTransportadoraCidade);   // transporte_uf
         End;
         //
         VerificarNatureza;
         //
         DetalhesNota;
      End;
      //
      edtNomeEmpresa.Text := dmDados.GetRazaoSocialEmpresa(uFrmPlusPdvNfe.idEmpresa);
     //
     If (dmNFe.cdsNotaFiscal.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TFrmNotaFiscalEletronicaNovo.BtAdicionarClick(Sender: TObject);
Var
   M_NRNOTA, idNFeEmpresa : Integer;
begin
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          if not (cmbNatureza.Visible) Then
           begin
                cmbNatureza.Visible := True;
                dbeDescricaoNaturezas.Visible := False;
           End;

          edtNomeEmpresa.Clear;
          //
          PageControl1.ActivePageIndex := 0;
          tratabotoes;
          M_NRITEM := 0;
          pnlTotalItens.Caption := '0,00';
          bFluxoEdicao := False;
          //
          FNRVENDA := 0;
          btnVenda.Enabled := True;
          //
          dmNFe.Abrir_Tabela_Itens;
          //
          With dsCadastro.DataSet do
            begin
                 M_NRNOTA     := uFuncoes.mvcodigomax('id','nota_fiscal') +1;
                 //
                 Append;
                 FieldByName('id').AsInteger                   := M_NRNOTA;
                 FieldByName('id_empresa').AsInteger           := uFrmPlusPdvNfe.idEmpresa;
                 edtNomeEmpresa.Text                           := dmDados.GetRazaoSocialEmpresa(FieldByName('id_empresa').AsInteger);
                 FieldByName('numero_nota_fiscal').AsString    := ''; //uFuncoes.StrZero(InttoStr(idNFeEmpresa),9);
                 FieldByName('data_hora_emissao').AsDateTime   := Date();
                 FieldByName('data_saida_entrada').AsDateTime  := Date();
                 FieldByName('indicador_do_emitente').AsString := '0';
                 FieldByName('modelo').AsInteger         := uFuncoes.ConverterModeloDocumento(55);
                 FieldByName('versao_xml').AsString      := '3.10';
                 FieldByName('tipo_operacao').AsInteger  := 1;
                 FieldByName('situacao').AsInteger       := 5;
                 FieldByName('serie').AsInteger          := 1;
                 FieldByName('aamm').AsString            := uFuncoes.GetAnoMesData(Date());
                 //
                 FieldByName('valor_itens').AsFloat  := 0;
                 FieldByName('valor_bc_icms').AsFloat := 0;
                 FieldByName('valor_icms').AsFloat    := 0;
                 FieldByName('valor_bc_icms_st').AsFloat := 0;
                 FieldByName('valor_icms_st').AsFloat  := 0;
                 FieldByName('valor_frete').AsFloat   := 0;
                 FieldByName('valor_ipi').AsFloat     := 0;
                 FieldByName('valor_seguro').AsFloat  := 0;
                 FieldByName('valor_outras_despesas').AsFloat    := 0;
                 FieldByName('valor_desconto').AsFloat := 0;
                 FieldByName('valor_total_nota').AsFloat := 0;
                 {FieldByName('emitente_cod_pais').AsInteger := 1058;
                 FieldByName('emitente_nome_pais').AsString := 'BRASIL';}
                 FieldByName('informacoes_adicionais_contribu').AsString := '';  
                 FieldByName('sequencia_cce').AsInteger := 0;
                 FieldByName('num_lote_evento').AsInteger := 0;
                 FieldByName('nome_computador_digitada').AsString := ufuncoes.Alltrim(Copy(uFuncoes.NomeMaquina(), 1, 40));
                 FieldByName('tipo_danfe').AsInteger := 1;
                 //
                 CarregarDadosEmitente(uFrmPlusPdvNfe.idEmpresa);
                 //
                 cmbTipoPessoa.ItemIndex := 0;
                 dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'J';
                 dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '99.999.999/9999-99;0;_';
                 //
                 dmDados.RefreshCDS( dmNFe.cdsListaDuplicatas );
                 dmNFe.cdsListaDuplicatas.EmptyDataSet;
                 dmDados.RefreshCDS( dmNFe.cdsListaVolumes );
                 dmNFe.cdsListaVolumes.EmptyDataSet;
                 //
                 if (uDmdados.aHambienteNFe = '2') Then
                  begin
                       cmbTipoPessoa.ItemIndex := 1;
                       dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString     := '99999999000191';
                       dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
                       // +Chr(45)+
                  End;
                 //
                 lblTotal.Caption := '0,00';
                 edtCFOP.Clear;
                 //
                 dmDados.RefreshCDS( dmNFe.cdsListaNT_Ref );
                 dmNFe.cdsListaNT_Ref.EmptyDataSet;
                 //
                 cbxRetirada.Checked := False;
                 cbxEntrega.Checked  := False;
                 //
                 LimparCamposProduto;
                 dmNFe.LimparListaVenda;  
                 dmNFe.AbrirTabelaCobranca(M_NRNOTA);
                 //
                 fTOTAL_NFe := 0;
                 //
                 dmNFe.cdsNotaFiscaltipo_emis.AsInteger := 1;
                 dmNFe.cdsNotaFiscalfinalidade.AsInteger  := 1;
                 // Habilitar campos
                 cmbTipoPessoa.Enabled := True;
                 dbeCNPJCPF.Enabled    := True;
                 spLocCliente.Enabled  := True;
                 //
                 dbeCNPJCPF.SetFocus;
            End;
            //
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.AbrirDetalhesNota(iCodigo: Integer);
begin
     dmNFe.CarregarItensNota(iCodigo, dsCadastro.DataSet.FieldByName('emitente_uf').AsString);
     CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
     dmNFe.AbrirVolumesNota(iCodigo); 
     //
     DMdados.RefreshCDS(dmNFe.cdsListaNT_Ref);
     dmNFe.cdsListaNT_Ref.EmptyDataSet;
     //
     dmNFe.CarregarRegistroNotaReferencia(iCodigo,dmNFe.cdsListaNT_Ref);
end;

procedure TFrmNotaFiscalEletronicaNovo.BotoesItem;
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          btnNovoItem.Enabled     := not btnNovoItem.Enabled;
          btnExcluiItem.Enabled   := not btnExcluiItem.Enabled;
          //
          spLocProduto.Enabled    := not spLocProduto.Enabled;
          spCFOP.Enabled          := not spCFOP.Enabled;
          btnSalvarItem.Enabled   := not btnSalvarItem.Enabled;
          btnCancelarItem.Enabled := not btnCancelarItem.Enabled;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.Buscar(aCodigo: String);
begin
     dmDados.FilterCDS(dmNFe.cdsNotaFiscal, fsString, aCodigo);
     //
     If (dmNFe.cdsNotaFiscal.IsEmpty) Then
      begin
          AbrirDetalhesNota(StrtoInt(aCodigo));
          dmNFe.AbrirTabelaCobranca(dmNFe.cdsNotaFiscalid.AsInteger);
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.BuscarProduto(aCodigo: String);
begin
     dmDados.FilterCDS(DMDados.cdsProduto, fsInteger, aCodigo); 
end;

procedure TFrmNotaFiscalEletronicaNovo.Calcular;
Var
    M_VLSUBT, M_VLDESC, M_VLACRE : Double;
    M_VLUNIT, M_QTPROD : Double;
begin
     M_VLSUBT := 0;
     M_VLUNIT := edtValorUnitario.Value;
     M_QTPROD := edtQTDE.Value;
     M_VLDESC := edtDesconto.Value;
     M_VLACRE := 0;
     //
     M_VLSUBT := ((M_VLUNIT * M_QTPROD) - uFuncoes.Gerapercentual((M_VLUNIT * M_QTPROD), M_VLDESC)) + uFuncoes.Gerapercentual((M_VLUNIT * M_QTPROD), M_VLACRE);
     //
     edtSubTotal.Value := M_VLSUBT;
end;

procedure TFrmNotaFiscalEletronicaNovo.CalcularTotalItens(
  aCDS: TClientDataSet);
Var
  M_TOTAL_NOTA, M_VLTOTA, M_BCICMS, M_VLICMS, M_VALIPI, M_VLDESC : Double;
  M_VALOR_PIS, M_VALOR_COFINS, FFOutrasDespesas, FFrete : Double;
  M_BASEST, M_VALORST : Double;
  iQuantDecimais : Integer;
begin
     M_TOTAL_NOTA := 0;
     M_VLTOTA := 0;
     M_BCICMS := 0;
     M_VLICMS := 0;
     M_VALIPI := 0;
     M_VLDESC := 0;
     FFOutrasDespesas := 0;
     FFrete:= 0;
     iQuantDecimais := 2;
     //
     M_BASEST  := 0;
     M_VALORST := 0;
     //
     M_VALOR_PIS    := 0;
     M_VALOR_COFINS := 0;
     //
     With aCDS do
      begin
          DisableControls;
          First;
          While not (Eof) do
            begin
                 //
                 if (FieldByName('CDS_VLOUTRASDESPESAS').AsFloat > 0) then
                   FFOutrasDespesas := FFOutrasDespesas + FieldByName('CDS_VLOUTRASDESPESAS').AsFloat;
                 if (FieldByName('CDS_VLFRETE').AsFloat > 0) then
                   FFrete := FFrete + FieldByName('CDS_VLFRETE').AsFloat;
                 //
                 M_VLDESC := uFuncoes.Arredondar( M_VLDESC + FieldByName('CDS_VLDESCONTO').AsFloat, 2);
                 If (FieldByName('CDS_BCICMS').AsFloat > 0) and (FieldByName('CDS_ALIQICMS').AsFloat > 0) Then
                    M_BCICMS :=  M_BCICMS + Roundto(FieldByName('CDS_BCICMS').AsFloat,-2);
                    //M_BCICMS :=  M_BCICMS + uFuncoes.Arredondar(FieldByName('CDS_BCICMS').AsFloat , iQuantDecimais);
                 If (FieldByName('CDS_VLICMS').AsFloat > 0) and (FieldByName('CDS_BCICMS').AsFloat > 0) Then
                    M_VLICMS := M_VLICMS +Roundto(FieldByName('CDS_VLICMS').AsFloat,-2);
                    //M_VLICMS := M_VLICMS +uFuncoes.Arredondar(FieldByName('CDS_VLICMS').AsFloat, iQuantDecimais);
                 // IPI
                 If (FieldByName('CDS_BC_IPI').AsFloat > 0) and (FieldByName('CDS_ALIQIPI').AsFloat > 0) Then   // CDS_VLIPI
                    M_VALIPI := M_VALIPI + uFuncoes.Arredondar(FieldByName('CDS_VLIPI').AsFloat, iQuantDecimais);

                 // valor Pis
                 if (FieldByName('CDS_VALOR_PIS').AsFloat > 0) and (FieldByName('CDS_ALIQ_PIS').AsFloat > 0) Then
                    M_VALOR_PIS := M_VALOR_PIS + uFuncoes.Arredondar(FieldByName('CDS_VALOR_PIS').AsFloat, iQuantDecimais);
                 // valor Cofins
                 if (FieldByName('CDS_VALOR_COFINS').AsFloat > 0) and (FieldByName('CDS_ALIQ_COFINS').AsFloat > 0 ) Then
                    M_VALOR_COFINS := M_VALOR_COFINS + uFuncoes.Arredondar(FieldByName('CDS_VALOR_COFINS').AsFloat, iQuantDecimais);
                 // ICMS ST
                 if (FieldByName('CDS_BCICMS_ST').AsFloat > 0) and (FieldByName('CDS_ALIQUOTA_ICMS_ST').AsFloat > 0 ) Then
                 begin
                     M_BASEST   := uFuncoes.Arredondar(M_BASEST  + FieldByName('CDS_BCICMS_ST').AsFloat, iQuantDecimais);
                     M_VALORST  := uFuncoes.Arredondar(M_VALORST + FieldByName('CDS_VLICMS_ST').AsFloat, iQuantDecimais);
                 End;
                 //
                 M_TOTAL_NOTA := M_TOTAL_NOTA + uFuncoes.Arredondar((FieldByName('CDS_QTDECOM').AsFloat * FieldByName('CDS_VLUNITARIO').AsFloat),iQuantDecimais);  // M_QTCASA
                 fTOTAL_NFe   := uFuncoes.Arredondar(M_TOTAL_NOTA, iQuantDecimais);
                 //M_VLTOTA     := M_VLTOTA + uFuncoes.Arredondar(FieldByName('CDS_SUBTOTAL').AsFloat,2);
                 M_VLTOTA     := uFuncoes.Arredondar(M_VLTOTA + FieldByName('CDS_SUBTOTAL').AsFloat,iQuantDecimais);
                 // uFuncoes.Arredondar(M_VLTOTA + FieldByName('CDS_SUBTOTAL').AsFloat,M_QTCASA);
                 //
                 Next;
            End;
          //
          First;
          EnableControls;
      End;
      //
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           dmNFe.cdsNotaFiscalvalor_itens.AsFloat         := M_TOTAL_NOTA ;   // M_VLTOTA
           //
           dmNFe.cdsNotaFiscalvalor_bc_icms.AsFloat       := M_BCICMS;
           dmNFe.cdsNotaFiscalvalor_icms.AsFloat          := M_VLICMS;
           dmNFe.cdsNotaFiscalvalor_ipi.AsFloat           := M_VALIPI;
           dmNFe.cdsNotaFiscalvalor_desconto.AsFloat      := M_VLDESC;
           dmNFe.cdsNotaFiscalvalor_outras_despesas.AsFloat := FFOutrasDespesas;
           dmNFe.cdsNotaFiscalvalor_frete.AsFloat         := FFrete;

           dmNFe.cdsNotaFiscalvalor_pis.AsFloat           := M_VALOR_PIS;
           dmNFe.cdsNotaFiscalvalor_cofins.AsFloat        := M_VALOR_COFINS;
           //
           dmNFe.cdsNotaFiscalvalor_bc_icms_st.AsFloat    := M_BASEST;
           dmNFe.cdsNotaFiscalvalor_icms_st.AsFloat       := M_VALORST;
           //
           if (M_VALIPI > 0) Then
               dmNFe.cdsNotaFiscalvalor_total_nota.AsFloat := ((M_TOTAL_NOTA + M_VALIPI) - M_VLDESC)
           Else
               dmNFe.cdsNotaFiscalvalor_total_nota.AsFloat := (M_TOTAL_NOTA - M_VLDESC);
           pnlTotalItens.Caption := FormatFloat('#,###,##0.#0', dmNFe.cdsNotaFiscalvalor_total_nota.AsFloat);
      End
      Else
          pnlTotalItens.Caption := FormatFloat('#,###,##0.#0', dmNFe.cdsNotaFiscalvalor_total_nota.AsFloat);
end;

procedure TFrmNotaFiscalEletronicaNovo.CalcularTotalNota;
Var
   M_VLFRET, M_VLDESC, M_VALOR_ST, M_VALIPI, M_VLOUTRO : Double;
begin
     M_VLOUTRO := dmNFe.cdsNotaFiscalvalor_outras_despesas.AsFloat;
     M_VLFRET := dmNFe.cdsNotaFiscalvalor_frete.AsFloat;
     M_VLDESC := dmNFe.cdsNotaFiscalvalor_desconto.AsFloat;
     M_VALOR_ST := dmNFe.cdsNotaFiscalvalor_icms_st.AsFloat;
     M_VALIPI := 0;
     If (dmNFe.cdsNotaFiscalvalor_ipi.AsFloat > 0) Then
        M_VALIPI := dmNFe.cdsNotaFiscalvalor_ipi.AsFloat;
     //
     dmNFe.cdsNotaFiscalvalor_total_nota.AsFloat  := uFuncoes.Arredondar(
              ((fTOTAL_NFe + M_VALIPI + M_VLFRET +  dmNFe.cdsNotaFiscalvalor_seguro.AsFloat
              + M_VLOUTRO) - M_VLDESC)+M_VALOR_ST, 2);
end;

procedure TFrmNotaFiscalEletronicaNovo.LimparCampos;
begin
     edtDescricao.Clear;
     dbeNCM.clear;
     edtUnidade.Clear;
     edtQTDE.Value := 1;
     edtValorUnitario.Clear;
     edtDesconto.Clear;
     edtSubTotal.Clear;
     edtICMS.Clear;
     edtIPI.Clear;
end;

procedure TFrmNotaFiscalEletronicaNovo.Registro;
Var
   M_CODIGO, iModelo : INTEGER;
begin
     iModelo := uFuncoes.ConverterModeloDocumento(55);
     //
     M_CODIGO := uFuncoes.mvcodigomaxNFeModelo('0', InttoStr(iModelo));
     //
     If (M_CODIGO > 0) Then
     begin
          dmdados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(M_CODIGO));
          //
          if (dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString = 'F') Then
           begin
                cmbTipoPessoa.ItemIndex := 0;
                dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '999.999.999-99;0;_';
           End
           Else
           begin
                cmbTipoPessoa.ItemIndex := 1;
                dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '99.999.999/9999-99;0;_';
           End;
           //
           AbrirDetalhesNota(M_CODIGO);
           // Duplicatas
           dmNFe.AbrirTabelaCobranca(dmNFe.cdsNotaFiscalid.AsInteger);
           if not (dsDuplicatas.DataSet.IsEmpty) Then
              CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas);
           // Volumes
           dmNFe.AbrirVolumesNota(dmNFe.cdsNotaFiscalid.AsInteger);
     End
     Else
         dmDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, '-1');
     //
     edtNomeEmpresa.Text := dmDados.GetRazaoSocialEmpresa(dmNFe.cdsNotaFiscal.FieldByName('id_empresa').AsInteger);
     if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('destinatario_uf').AsString) then
        dmNFe.AbrirListaCidadeUF(dsCadastro.DataSet.fieldByName('UF_DESTINATARIO').AsString, dmNFe.cdsListaCidades);
     //
     cbxRetirada.Checked := false;
     if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('emitente_retirada_cnpjcpf').AsString) Then
          cbxRetirada.Checked := True;
     cbxEntrega.Checked := false;
     if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('destinatario_entrega_cnpjcpf').AsString) Then
          cbxEntrega.Checked := True;
     //
     if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('emitente_retirada_uf').AsString) then
         dmNFe.AbrirListaCidadeUF(dsCadastro.DataSet.fieldByName('UF_EMITENTE_RET').AsString, dmNFe.cdsRetiradaCidade);
     if not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('destinatario_entrega_uf').AsString) then
         dmNFe.AbrirListaCidadeUF(dsCadastro.DataSet.fieldByName('UF_DESTINATARIO_ENTREGA').AsString, dmNFe.cdsEntregaCidade);
     //
     VerificarNatureza;
     // Transportes
     if not ufuncoes.Empty(dmNFe.cdsNotaFiscaltransporte_uf.AsString) Then
         dmNFe.AbrirListaCidadeUF(dmNFe.cdsNotaFiscalUF_TRANSPORTE.AsString, dmNFe.cdsTransportadoraCidade);   // transporte_uf
end;

procedure TFrmNotaFiscalEletronicaNovo.TrataBotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled    := not BtEditar.Enabled;
   //
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

function TFrmNotaFiscalEletronicaNovo.ValidarCampos: Boolean;
begin
     Result := false;
     //
     If uFuncoes.Empty(dbeCNPJCPF.Text) Then
        begin
             Application.MessageBox('Digite o CNPJ/CPF do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             dbeCNPJCPF.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeSerie.Text) Then
        begin
             Application.MessageBox('Digite a s�rie da nota.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             dbeSerie.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(uFuncoes.RemoveChar( dbeDTEMIS.Text) ) Then
        begin
             Application.MessageBox('Digite a data de emiss�o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             dbeDTEMIS.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbNatureza.Text) Then
        begin
             Application.MessageBox('Seleciona a natureza da opera��o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbNatureza.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFormaPaga.Text) Then
        begin
             Application.MessageBox('Selecione a forma de pagamento.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbFormaPaga.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbEmissao.Text) Then
        begin
             Application.MessageBox('Selecione a forma de emiss�o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbEmissao.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFinalidadeEmissao.Text) Then
        begin
             Application.MessageBox('Selecione a finalidade de emiss�o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbFinalidadeEmissao.SetFocus;
             Exit;
        End;
     //    Dados do emitente
     If uFuncoes.Empty(dbeCNPJEmitente.Text) Then
     begin
          Application.MessageBox('Digite o CNPJ do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          PageControl1.ActivePageIndex := 1;
          dbeCNPJEmitente.SetFocus;
          Exit;
     end;
     //
     if uFuncoes.Empty(dbeRazaoEmitente.Text) then
     begin
          Application.MessageBox('Digite a raz�o social do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          PageControl1.ActivePageIndex := 1;
          dbeRazaoEmitente.SetFocus;
          Exit;
     end;
     //
     If uFuncoes.Empty(dbeEmiInsEstadual.Text) Then
        begin
             Application.MessageBox('Digite a inscri��o estadual do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeEmiInsEstadual.SetFocus;
             Exit;
        End;
     //
     if uFuncoes.Empty(dbeLogradouroEmitente.text) Then
        begin
             Application.MessageBox('Digite logradouro do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeLogradouroEmitente.SetFocus;
             Exit;
        End;
     //
     if uFuncoes.Empty(dbeNumeroEmissor.text) Then
        begin
             Application.MessageBox('Digite n�mero do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeNumeroEmissor.SetFocus;
             Exit;
        End;
     //
     if uFuncoes.Empty(dbeBairroEmissor.text) Then
        begin
             Application.MessageBox('Digite bairro do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeBairroEmissor.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbUFEmitente.Text) Then
        begin
             Application.MessageBox('Selecione a UF do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             cmbUFEmitente.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeCidadeEmissor.Text) Then
        begin
             Application.MessageBox('Digite o nome da cidade do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeCidadeEmissor.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeCepEmitente.Text) Then
        begin
             Application.MessageBox('Digite o cep do emissor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeCepEmitente.SetFocus;
             Exit;
        End;
     //   Destinat�rio
     if uFuncoes.Empty(dbeCNPJCPFDest.Text) Then
      begin
             Application.MessageBox('Digite CNPJ/CPF do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeCNPJCPFDest.SetFocus;
             Exit;
      End;
      //
      if uFuncoes.Empty(dbeRazaoDest.Text) Then
        begin
             Application.MessageBox('Digite Raz�o/Nome do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeRazaoDest.SetFocus;
             Exit;
        End;
      //
      if uFuncoes.Empty(dbeLogradouroDest.Text) Then
        begin
             Application.MessageBox('Digite logradouro do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeLogradouroDest.SetFocus;
             Exit;
        End;
      //
      If uFuncoes.Empty(dbeNumeroDest.Text) then
        begin
             Application.MessageBox('Digite n�mero do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeNumeroDest.SetFocus;
             Exit;
        End;
      // bairro
      If ufuncoes.Empty(dbeBairroDest.Text) Then
        begin
             Application.MessageBox('Digite bairro do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeBairroDest.SetFocus;
             Exit;
        End;
      // Uf
      if uFuncoes.Empty(cmbUFDest.Text) Then
        begin
             Application.MessageBox('Selecione a UF do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             cmbUFDest.SetFocus;
             Exit;
        End;
      // Cidade
      if uFuncoes.Empty(dbeCidadeDest.Text) Then
        begin
             Application.MessageBox('Digite o nome da cidade do destinat�rio.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeCidadeDest.SetFocus;
             Exit;
        End;
     //
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
        begin
             //
             If not uFuncoes.Empty(dbeCepEmitente.Text)
                 and (Length(uFuncoes.RemoveChar(dbeCepEmitente.Text)) < 8) Then
             begin
                  PageControl1.ActivePageIndex := 1;
                  Application.MessageBox('Campo CEP do Emitente est� incompleto.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeCepEmitente.SetFocus;
                  Exit;
             End;
             //
             If not uFuncoes.Empty(dbeFoneEmitente.Text)
                 and (Length(uFuncoes.RemoveChar(dbeFoneEmitente.Text)) < 10) Then
             begin
                  PageControl1.ActivePageIndex := 1;
                  Application.MessageBox('Campo Telefone do Emitente est� incompleto.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeFoneEmitente.SetFocus;
                  Exit;
             End;
             //
             If not uFuncoes.Empty(dbeDestTelefone.Text)
                 and (Length(uFuncoes.RemoveChar(dbeDestTelefone.Text)) < 10) Then
             begin
                  PageControl1.ActivePageIndex := 2;
                  Application.MessageBox('Campo Telefone do Destinat�rio/Remetente est� incompleto.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeDestTelefone.SetFocus;
                  Exit;
             End;
             //
             If not uFuncoes.Empty(dbeLogradouroDest.Text) and
                (Length(dbeLogradouroDest.Text) < 3) Then
             begin
                  PageControl1.ActivePageIndex := 2;
                  Application.MessageBox('Campo logradouro do Destinat�rio/Remetente.'+#13
                                        +'Quantidade de caracteres inferior a 3.','ATEN��O',
                      MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeLogradouroDest.SetFocus;
                  Exit;
             End;
             //
             If not uFuncoes.Empty(dbeBairroDest.Text)
                 and (Length(dbeBairroDest.Text) < 3) Then
             begin
                  PageControl1.ActivePageIndex := 2;
                  Application.MessageBox('Campo Bairro do Destinat�rio/Remetente.'+#13
                                        +'Quantidade de caracteres inferior a 3.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeBairroDest.SetFocus;
                  Exit;
             End;
             //
             If not uFuncoes.Empty(edtCepDesc.Text)
                 and (Length(uFuncoes.RemoveChar(edtCepDesc.Text)) < 8) Then
             begin
                  PageControl1.ActivePageIndex := 2;
                  Application.MessageBox('Campo CEP do Destinat�rio/Remetente est� incompleto.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  edtCepDesc.SetFocus;
                  Exit;
             End;
             //
             If not uFuncoes.Empty(dbeCidadeDest.Text)
                 and (Length(dbeCidadeDest.Text) < 3) Then
             begin
                  PageControl1.ActivePageIndex := 2;
                  Application.MessageBox('Campo Cidade do Destinat�rio/Remetente.'+#13
                                        +'Quantidade de caracteres inferior a 3.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeCidadeDest.SetFocus;
                  Exit;
             End;
             // dbeEntregaLogradouro
             If not uFuncoes.Empty(dbeEntregaLogradouro.Text)
                 and (Length(uFuncoes.Alltrim(dbeEntregaLogradouro.Text)) < 3) Then
             begin
                  PageControl1.ActivePageIndex := 2;
                  pcRetiradaEntrega.ActivePageIndex := 1;
                  Application.MessageBox('Campo logradouro de entrega.'+#13
                                        +'Quantidade de caracteres inferior a 3.','ATEN��O',
                    MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                  dbeEntregaLogradouro.SetFocus;
                  Exit;
             End;
        End;
        //
        If (rgTipoFrete.ItemIndex = -1) then
          begin
             Application.MessageBox('Selecione o tipo de frete.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 3;
             PageControlImpostos.ActivePageIndex := 0;
             rgTipoFrete.SetFocus;
             Exit;
          End;
        //  Local de Retirada diferente do emitente
        if (cbxRetirada.Checked) Then
          begin
               //
               if uFuncoes.Empty(dbeRetiradaLogradouro.Text) Then
                begin
                     Application.MessageBox('Digite o logradouro de retirada.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeRetiradaLogradouro.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeRetiradaNumero.Text) Then
                begin
                     Application.MessageBox('Digite o n�mero logradouro de retirada.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeRetiradaNumero.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeRetiradaBairro.Text) Then
                begin
                     Application.MessageBox('Digite o bairro de retirada.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeRetiradaBairro.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(cmbUFRetiratada.Text) Then
                begin
                     Application.MessageBox('Digite o UF de retirada.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     cmbUFRetiratada.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dbeCidadeRetirada.Text) Then
                begin
                     Application.MessageBox('Digite o cidade de retirada.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeCidadeRetirada.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dmNFe.cdsNotaFiscalemitente_retirada_municipio.AsString) Then
                 begin
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeCidadeRetirada.SetFocus;
                     Exit;
                 End;
          End;
          // Local de entrega diferente do destinat�rio
          if (cbxEntrega.Checked) Then
            begin
                if uFuncoes.Empty(dbeEntregaLogradouro.Text) Then
                begin
                     Application.MessageBox('Digite o logradouro de entrega.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeEntregaLogradouro.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeEntregaNumero.Text) Then
                begin
                     Application.MessageBox('Digite o n�mero logradouro de entrega.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeEntregaNumero.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeEntregaBairro.Text) Then
                begin
                     Application.MessageBox('Digite o bairro de entrega.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeEntregaBairro.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(cmbUFEntrega.Text) Then
                begin
                     Application.MessageBox('Digite o UF de entrega.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     cmbUFEntrega.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dbeCidadeEntrega.Text) Then
                begin
                     Application.MessageBox('Digite o cidade de entrega.','ATEN��O',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeCidadeEntrega.SetFocus;
                     Exit;
                End;
                //
                {if uFuncoes.Empty(dmNFe.cdsNotaFiscaldestinatario_entrega_nome_munic.AsString) Then
                 begin
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeCidadeEntrega.SetFocus;
                     Exit;
                 End;}
            End;
        //
       If not (dsItensNota.DataSet.Active) or (dsItensNota.DataSet.RecordCount < 1) Then
        begin
             Application.MessageBox('Cadastre os itens da nota.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             Exit;
        End;
     //
     if (VerificarUnidadeProdutos(dmNFe.cdsItemsNotaFiscal)) Then
     begin
         //dmNFe.cdsItensNota
         Application.MessageBox(PChar('Produto '+dmNFe.cdsItemsNotaFiscalCDS_DESCRICAO.AsString
              +' est� sem unidade cadastrada.'),'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         PageControl1.ActivePageIndex := 0;
         Exit;
     End;
     //
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           If not uFuncoes.Empty(dsCadastro.DataSet.fieldByName('finalidade').AsString) Then
           begin
              If(dsCadastro.DataSet.fieldByName('finalidade').AsInteger = 4) Then
               begin
                   if uFuncoes.Empty(dsCadastro.DataSet.fieldByName('num_ecf').AsString)
                     and uFuncoes.Empty(dsCadastro.DataSet.fieldByName('num_coo').AsString)
                      and uFuncoes.Empty(dsCadastro.DataSet.fieldByName('modelo_ecf').AsString) then
                        begin
                            if ( dmNFe.cdsListaNT_Ref.IsEmpty) Then
                             begin
                                  Application.MessageBox(PChar('Voc� precisa cadastrar pelo menos uma (NF-e/Nota/Cupom Fiscal)'+#13
                                                  +' de refer�ncia para devolu��o.'),'ATEN��O',
                                  MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                                  PageControl1.ActivePageIndex := 7;
                                  btnNTR_Incluir.SetFocus;
                                  Exit;
                             End;
                        End;
               End;
           End;
      End;
     //
     Result := True;
end;

procedure TFrmNotaFiscalEletronicaNovo.BtCancelarClick(Sender: TObject);
Var
   idSeqNota, idNotaFiscal, idEmitente, idUltimaNFe : Integer;
begin
    If Application.MessageBox('Deseja cancelar?',
     'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
    begin
         Exit;
    End;
    //
    If (btnSalvarItem.Enabled) Then
      btnCancelarItemClick(Self);
    //
    tratabotoes;
    LimparCamposProduto;
    //
    idSeqNota    := dsCadastro.DataSet.FieldByName('id').AsInteger;
    if not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('numero_nota_fiscal').AsString) Then
        idNotaFiscal := dsCadastro.DataSet.FieldByName('numero_nota_fiscal').AsInteger;
    if not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('id_empresa').AsString) Then
        idEmitente   := dsCadastro.DataSet.FieldByName('id_empresa').AsInteger;
    idUltimaNFe  := dmDados.GetProximoIdNFeEmpresa(idEmitente);
    //
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         dsCadastro.DataSet.Cancel;
    //
    if (dsCadastro.DataSet.FieldByName('situacao').AsInteger = 5)
       AND (dsCadastro.DataSet.FieldByName('id').AsInteger = idUltimaNFe) Then   // and Not(dmNFe.GetExisteItensNota(idNotaFiscal))  to-do
         Begin
              If Application.MessageBox(PChar('Confirma exclus�o de Nota?'+#13
                    +'H� n�o exclus�o dessa NF-e deixa ela na situa��o de digita��o.'),
                      'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                begin
                     //
                     if (dsCadastro.DataSet.FieldByName('id').AsInteger = idSeqNota) Then
                       begin
                            dmDados.Start;
                            try          
                                   dmNFe.cdsNotaFiscal.Delete;
                                   dmNFe.cdsNotaFiscal.ApplyUpdates(0);
                                   //
                                   dmNFe.ExcluirDuplicatas(idSeqNota);
                                   //
                                   dmNFe.ExcluirVolumes(idSeqNota);
                                   // Verifica se tem venda para NFe
                                   if not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('numero_nota_fiscal').AsString) Then
                                       dmDados.GetVerificaNFeVenda(idNotaFiscal, idEmitente);
                                   //
                                   dmDados.FilterCDS(dmDados.CdsEmpresa, fsInteger, InttoStr(idEmitente));
                                   if  not (dmDados.cdsEmpresa.IsEmpty) Then
                                   begin
                                        dmDados.cdsEmpresa.Edit;
                                        dmDados.cdsEmpresasequencia_nfe.AsInteger := dmDados.cdsEmpresasequencia_nfe.AsInteger - 1;
                                        dmDados.cdsEmpresa.ApplyUpdates(0);
                                        //
                                        idUltimaNFe  := dmDados.cdsEmpresasequencia_nfe.AsInteger;
                                   End;
                                   //
                                   dmDados.Comit(dmDados.Transc);
                                   //
                                   Application.MessageBox(PChar('Nota N�.: '+uFuncoes.StrZero(InttoStr(idNotaFiscal),9)+
                                       ' exclu�da com sucesso.'), 'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                                   //
                                   dmDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(idUltimaNFe));
                            Except
                                  on e: exception do
                                   begin
                                       dmDados.Rollback(e.Message);
                                   End;
                            End;
                       End;
                End;
         End;
    //
    if (dsCadastro.DataSet.IsEmpty) Then
        Close
    Else
    begin
        AbrirDetalhesNota(dsCadastro.DataSet.FieldByName('id').AsInteger);
        lblTotal.Caption := '0,00';
        dmNFe.AbrirTabelaCobranca(dmNFe.cdsNotaFiscalid.AsInteger);
        If not (dsDuplicatas.DataSet.IsEmpty) Then      
            CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas);
    End;
    //
    VerificarNatureza;
    PageControl1.ActivePageIndex := 0;
end;

procedure TFrmNotaFiscalEletronicaNovo.spLocProdutoClick(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         edtCDPROD.SetFocus;
         Application.CreateForm(TfrmLocProdutoServico, frmLocProdutoServico);
         try
             With frmLocProdutoServico do
               ShowModal;
         Finally
            If not (frmLocProdutoServico.cdsConsultar.IsEmpty) Then
             Begin
                 edtCDPROD.Text := frmLocProdutoServico.cdsConsultarid.AsString;
                 Perform(WM_NextDlgCtl,1,0);
             End;
            frmLocProdutoServico.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeDTEMISExit(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDTEMIS.text)) Then
       try
            dbeDTEMIS.Date := StrtoDate(dbeDTEMIS.text);
            if (dbeDTEMIS.Date < Date) Then
              begin
                  Application.MessageBox('Data inferior a data atual!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEMIS.Date := Date();
                  dbeDTEMIS.SetFocus;
                  Exit;
              End;
              //
              If (dbeDTEMIS.Date > Date) Then
              begin
                  Application.MessageBox('Data superior a data atual!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEMIS.Date := Date();
                  dbeDTEMIS.SetFocus;
                  Exit;
              End;
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inv�lida!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEMIS.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
    If (key = #13) and not uFuncoes.Empty(dbeSerie.Text) Then
      begin
           key  := #0;
           dbeDTEMIS.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnSalvarItemClick(Sender: TObject);
Var
   M_BCIMCS, M_ALIQICMS, M_VLICMS, M_BCIPI, M_VALIPI : Double;
   W_VLDESC, W_VLACRE, M_VLDESCONTO : double;
   aProduto, M_CSTPRO, aUnidade : String;
   bFluxoRedicao, aFlMedicamento : boolean ;
   fPercentualReducao : Double;
   aLoteProduto : String;
   idTributacao : Integer;
   aDtFabricacao, aDtVencimento : String;
begin
   if uFuncoes.Empty(edtCDPROD.Text) Then
    begin
         Application.MessageBox('Digite o c�digo produto.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         edtCDPROD.SetFocus;
         Exit;
    End;
   //
   if uFuncoes.Empty(edtCFOP.Text) Then
    begin
         Application.MessageBox('Digite o CFOP do produto.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         edtCFOP.SetFocus;
         Exit;
    End;
    //
   if uFuncoes.Empty(dbeNCM.Text) Then
    begin
         Application.MessageBox('Digite o NCM do produto.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         dbeNCM.SetFocus;
         Exit;
    End;
    //
    if uFuncoes.Empty(edtUnidade.Text) Then
    begin
         Application.MessageBox('Digite a unidade do produto.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         edtUnidade.SetFocus;
         Exit;
    End;
   //
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
   Begin
      M_BCIMCS := 0;
      M_VLICMS := 0;
      W_VLDESC := 0;
      W_VLACRE := 0;
      M_VALIPI := 0;
      M_BCIPI  := 0;
      //
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
            //
            If (edtValorUnitario.Value = 0) Then
             begin
                  edtValorUnitario.SetFocus;
                  Exit;
             End;
            if not uFuncoes.Empty(edtCDPROD.Text) and (edtQTDE.Value > 0) and (edtValorUnitario.Value > 0) Then
               begin
                       aProduto := edtCDPROD.Text;
                       //
                       dmDados.FilterCDS(dmDados.cdsProduto, fsInteger, aProduto);
                       //
                       If not (bFluxoEdicao) Then
                           M_NRITEM := M_NRITEM + 1
                       Else
                           M_NRITEM := dsItensNota.DataSet.RecordCount + 1;
                       //
                       if not (dmDados.cdsProduto.IsEmpty) Then
                        begin
                             if uFuncoes.Empty(dmDados.cdsProdutoid_tributacao.AsString) Then
                                raise Exception.Create('Produto sem tributa��o cadastrada!!!');
                             //
                             idTributacao := dmDados.cdsProdutoid_tributacao.AsInteger;
                             dmDados.FilterCDS(dmDados.cdsTributacao, fsInteger, Inttostr(idTributacao));
                             //
                             M_CSTPRO := dmDados.cdsTributacaocst_icms.AsString;
                             //
                             M_ALIQICMS := 0;
                             If not uFuncoes.Empty(dmDados.cdsTributacaoaliquota_icms.AsString) Then
                                 M_ALIQICMS := dmDados.cdsTributacaoaliquota_icms.AsFloat;
                             //
                             If (edtICMS.Value <> M_ALIQICMS) Then
                                M_ALIQICMS := edtICMS.Value;
                             //
                             bFluxoRedicao := false;
                             fPercentualReducao := 0;
                             if (M_CSTPRO = '020') or (M_CSTPRO = '20') Then
                             begin
                                   bFluxoRedicao := True;
                                   fPercentualReducao := 0;
                                   // dmNFe.GetPercentualReducao(Dm.cdsProdutosTRI_CODIGO.AsString, M_CSTPRO); to-do
                             End;
                             //
                             M_BCIMCS := 0;
                             M_VLICMS := 0;
                             M_VLDESCONTO := 0;
                             //
                             If (edtDesconto.Value > 0) Then
                              BEGIN
                                  W_VLDESC     := edtDesconto.Value;
                                  M_VLDESCONTO := uFuncoes.Gerapercentual((edtValorUnitario.Value * edtQTDE.Value), W_VLDESC);
                              End
                              Else
                                  W_VLDESC := 0;
                                  //uFuncoes.Gerapercentual(edtValorUnitario.Value, edtDesconto.Value);
                              W_VLACRE := 0;
                                  //uFuncoes.Gerapercentual(edtValorUnitario.Value, edtAcrescimo.Value);
                              //
                             //
                             If (edtICMS.Value > 0) Then
                              begin
                                   if not (bFluxoRedicao) Then
                                   begin
                                        M_BCIMCS := uFuncoes.Arredondar((( edtValorUnitario.Value * edtQTDE.Value) - M_VLDESCONTO ),M_QTCASA);
                                        M_VLICMS := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BCIMCS, M_ALIQICMS),M_QTCASA);
                                   End
                                   Else
                                   begin
                                        M_BCIMCS := uFuncoes.Arredondar(((edtValorUnitario.Value * edtQTDE.Value)- M_VLDESCONTO) * (fPercentualReducao/100), M_QTCASA);
                                        M_VLICMS := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BCIMCS, M_ALIQICMS), M_QTCASA);
                                   End;
                              End;
                              //
                              If (M_CSTPRO = '060') Then
                                begin
                                     M_BCIMCS := 0;
                                     M_VLICMS := 0;
                                End;
                              //
                              If (edtIPI.Value > 0) Then
                               begin
                                   M_BCIPI  := uFuncoes.Arredondar((edtValorUnitario.Value * edtQTDE.Value)- M_VLDESCONTO, M_QTCASA);
                                   M_VALIPI := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BCIPI, edtIPI.Value),M_QTCASA);
                               End;
                              //

                              If uFuncoes.Empty(edtUnidade.Text) Then
                                 aUnidade := dmDados.cdsProdutoid_unidade.AsString
                              Else
                                 aUnidade := edtUnidade.Text;
                             //
                             aLoteProduto  := '';
                             aDtFabricacao := '';
                             aDtVencimento := '';
                             //
                             aFlMedicamento := False; // to-do
                             //dm.GetVerificaProdutoEstaLoteHabilatado(aProduto);
                             //
                             {if (aFlMedicamento) and (DM.CdsConfigCFG_FLLOTE.AsString = 'S') Then
                             begin
                                Application.CreateForm(TFrmLotesMedicamento, FrmLotesMedicamento);
                                try
                                     If (FrmLotesMedicamento.ShowModal = mrOk) Then
                                     begin
                                          aLoteProduto  := FrmLotesMedicamento.edtNRLOTE.Text;
                                          aDtFabricacao := FrmLotesMedicamento.edtDtFabricacao.Text;
                                          aDtVencimento := FrmLotesMedicamento.edtDTVENC.Text;
                                     End;
                                Finally
                                     FrmLotesMedicamento.Free;
                                End;
                             End;}
                             // aLoteProduto : String;
                             // aDtFabricacao, aDtVencimento : TDateTime;
                             {Function AddItemNota(pNRITEM : Integer;
                                 pCDPROD, pCODEAN, pDESCRICAO, pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB : String;
                                 pQTDECOM, pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO, pVLACRESCIMO, pVLOUTRASDESPESAS : Double;
                                 pINDTOT : Integer;
                                 pBCICMS, pVLICMS, pVLIPI, pALIQICMS, pALIQIPI : Double) : Boolean;}
                                 // dm.cdsProdutosPRO_CDPROD.AsString
                             dmNFe.AddItemNota(
                                  M_NRITEM,
                                  aProduto,
                                  dmDados.cdsProdutocod_barras.AsString,
                                  edtDescricao.Text,
                                  dbeNCM.Text,
                                  'EX_TIPI',
                                  edtCFOP.text,
                                  aUnidade,
                                  'GENERO',
                                  aUnidade,
                                  edtQTDE.Value, edtValorUnitario.Value,
                                  edtQTDE.Value,
                                  edtValorUnitario.Value,
                                  0, 0, W_VLDESC, W_VLACRE, 0, 1,
                                  M_BCIMCS, M_VLICMS, M_VALIPI, M_ALIQICMS, edtIPI.Value, M_BCIPI, fPercentualReducao, M_CSTPRO, '%',
                                   aLoteProduto, aDtFabricacao, aDtVencimento);
                             //
                             CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                             CalcularTotalNota;
                             BotoesItem;
                             LimparCampos;
                             edtCDPROD.Text := '';
                             //
                             dmNFe.AtualizarQuantidadeVolume(dsCadastro.DataSet.FieldByName('id').AsInteger, dmNFe.cdsItemsNotaFiscal);
                             //
                             If (btnNovoItem.Enabled) Then
                                btnNovoItem.SetFocus;
                        end;
               End;
              //
              pnlDetalheDados.Enabled := False;
       End;
   End;    
end;

procedure TFrmNotaFiscalEletronicaNovo.btnNovoItemClick(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
           /// Simple nacional
           if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
           begin
                If uFuncoes.Empty(cmbNatureza.Text) then
                begin
                     Application.MessageBox('Selecione a natureza da opera��o.','ATEN��O',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     cmbNatureza.SetFocus;
                    Exit;
                End;
                //
                //pnlDetalheDados.Enabled := True;
                BotoesItem;
                //LimparCampos;
                LancarItem;
           End;
           //   Regime normal
           if (uFrmPlusPdvNfe.iCodRegimeTributario = 3) Then
           begin
              pnlDetalheDados.Enabled := True;
              BotoesItem;
              //LimparCampos;
              edtCDPROD.Clear;
              edtCDPROD.SetFocus;
           End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnCancelarItemClick(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
            {If not uFuncoes.Empty(edtCDPROD.Text) Then
             begin}
                 BotoesItem;
                 LimparCampos;
                 //
                 edtCDPROD.Clear;
                 If (btnNovoItem.Enabled) Then
                   btnNovoItem.SetFocus;
             //End;
             //
             pnlDetalheDados.Enabled := False;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtCDPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
  begin
     If (key = #13) and uFuncoes.Empty(edtCDPROD.Text) and (spLocProduto.Enabled) Then
      begin
           key  := #0;
           spLocProdutoClick(Self);
      End;
      //
     If (key = #13) and not uFuncoes.Empty(edtCDPROD.Text) Then
      begin
           key  := #0;
           edtQTDE.SetFocus;
      End;
  End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtCDPRODChange(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and uFuncoes.Empty(edtCDPROD.Text)  Then
            LimparCampos;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtCDPRODExit(Sender: TObject);
Var
   aProduto : String;
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtCDPROD.Text) Then
            begin
                 //
                 aProduto := edtCDPROD.Text;
                 //

                 //
                 If not (dmDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                  begin
                       Application.MessageBox(PChar('C�digo produto/servi�o n�o cadastrado.'),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       edtDescricao.Clear;
                       edtCDPROD.Clear;
                       edtCDPROD.SetFocus;
                       Exit;
                  End
                  Else
                  begin
                       //
                       BuscarProduto(aProduto); //
                       if not (dmDados.cdsProduto.IsEmpty) Then
                       begin
                           edtDescricao.Text      := dmDados.cdsProdutodescricao.AsString;
                           dbeNCM.Text            := dmDados.cdsProdutoid_ncm.AsString;
                           edtUnidade.Text        := dmDados.cdsProdutoid_unidade.AsString;
                           edtValorUnitario.Value := dmDados.cdsProdutovalor_venda.AsFloat;
                           edtICMS.Value          := dmDados.GetAliquotaICMS(dmDados.cdsProdutoid_tributacao.AsInteger);

                           if (dmDados.cdsProdutolimite_desconto_bloqueado.AsBoolean) Then
                              edtDesconto.MaxValue  := dmDados.cdsProdutoperc_limite_desconto.AsFloat
                           Else
                               edtDesconto.MaxValue  := 99;
                           edtQTDE.Value          := 1;
                       End;
                       //
                       edtCDPROD.Text    := uFuncoes.StrZero(aProduto,8);
                       //
                       edtCFOP.SetFocus;
                  end;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtQTDEExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtQTDEKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) and not uFuncoes.Empty(edtQTDE.Text) Then
        begin
             key  := #0;
             edtValorUnitario.SetFocus;
        End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtValorUnitarioExit(
  Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
         if (edtValorUnitario.Value <= 0)  Then
          begin
               If not (dmDados.cdsproduto.IsEmpty) Then
                   edtValorUnitario.Value := dmDados.cdsProdutovalor_venda.AsFloat
               Else
               begin
                   edtValorUnitario.SetFocus;
                   Exit;
               End;
          End;
         Calcular;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtValorUnitarioKeyPress(
  Sender: TObject; var Key: Char);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     If (key = #13) and not uFuncoes.Empty(edtValorUnitario.Text) Then
      begin
           key  := #0;
           edtDesconto.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtDescontoExit(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) Then
        begin
             key  := #0;
             edticms.SetFocus;
        End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtAcrescimoExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          If (key = #13)  Then
          begin
               key := #0;
               edtICMS.SetFocus;
               {if (btnSalvarItem.Enabled) Then
                  btnSalvarItem.SetFocus;}
          End;
          //
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) Then
        begin
             key  := #0;
             edtIPI.SetFocus;
        End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtICMSExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtIPIExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtIPIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          If (key = #13)  Then
          begin
               key := #0;
               //
               if (btnSalvarItem.Enabled) Then
                  btnSalvarItem.SetFocus;
          End;
          //
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
     spLocCliente.Enabled    := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     {spLocProduto.Enabled    := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     spCFOP.Enabled          := dsCadastro.DataSet.State in [dsInsert, dsEdit];}
     spTransportadora.Enabled:= dsCadastro.DataSet.State in [dsInsert, dsEdit];
     spCFOPRetencao.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     btnVenda.Enabled        := dsCadastro.DataSet.State in [dsInsert];  // , dsEdit
     //
     pnlBotoes.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     //BtEditar.Enabled  := (dsCadastro.DataSet.FieldByName('situacao').AsInteger = 5);
     //
     cbxRetirada.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     cbxEntrega.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     btnCupomFiscal.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     //
     gbxDuplicatas.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];

     pnlBotoesVolumes.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];

     btnNTR_Incluir.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     //
     btnImportaXML.Enabled  := dsCadastro.DataSet.State in [dsBrowse];
     pnlBotoesRef.Enabled   := dsCadastro.DataSet.State in [dsInsert, dsEdit];

     //
     spDescValor.Enabled   := dsCadastro.DataSet.State in [dsInsert, dsEdit];
end;

procedure TFrmNotaFiscalEletronicaNovo.spTransportadoraClick(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeTransportadora.SetFocus;
         Application.CreateForm(TFrmLocTransportadora, FrmLocTransportadora);
         try
             With FrmLocTransportadora do
               ShowModal;
         Finally
            If not (FrmLocTransportadora.cdsConsultar.IsEmpty) Then
             Begin
                  dbeTransportadora.Text := uFuncoes.StrZero(FrmLocTransportadora.cdsConsultarid.AsString,5);
                  BuscarTransportadora(FrmLocTransportadora.cdsConsultarid.AsString);
                  dbeCNPJTransporte.SetFocus;
             End;
            FrmLocTransportadora.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.spLocClienteClick(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeCNPJCPF.SetFocus;
         Application.CreateForm(TfrmLocalizarCliente, frmLocalizarCliente);
         try
             With frmLocalizarCliente do
               ShowModal;
         Finally
            If not (frmLocalizarCliente.cdsConsultar.IsEmpty) and (uFrmLocalizaCliente.M_TPCONSULTA = 'C') Then
             Begin
                       dmNFe.cdsNotaFiscalid_cliente.AsInteger    := frmLocalizarCliente.cdsConsultarid.AsInteger;
                       if uFuncoes.Empty(frmLocalizarCliente.cdsConsultarcpf_cnpj.AsString) Then
                          raise Exception.Create('Cliente est� sem CNPJ/CPF.');
                       dbeCNPJCPF.Text := frmLocalizarCliente.cdsConsultarcpf_cnpj.AsString;
                       dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString      := uFuncoes.RemoveChar(frmLocalizarCliente.cdsConsultarcpf_cnpj.AsString);
                       dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString  := frmLocalizarCliente.cdsConsultarrazao_social.AsString;
                       //
                       if (frmLocalizarCliente.cdsConsultartipo_pessoa.AsString = 'F') Then
                           cmbTipoPessoa.ItemIndex := 0
                       Else
                           cmbTipoPessoa.ItemIndex := 1;
                       //
                       FormatarCampoCPF_CNPJ();
                       //
              End;
              //
              If not (frmLocalizarCliente.cdsFornecedores.IsEmpty) and (uFrmLocalizaCliente.M_TPCONSULTA = 'F') Then
                  begin
                       dmNFe.cdsNotaFiscalid_cliente.Clear;
                       dmNFe.cdsNotaFiscalid_fornecedor.AsString     := uFuncoes.StrZero(frmLocalizarCliente.cdsFornecedoresid.AsString,5);
                       if uFuncoes.Empty(frmLocalizarCliente.cdsFornecedorescpf_cnpj.AsString) Then
                          raise Exception.Create('Fornecedor est� sem CNPJ/CPF.');
                       dbeCNPJCPF.Text := frmLocalizarCliente.cdsFornecedorescpf_cnpj.AsString;
                       dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString      := frmLocalizarCliente.cdsFornecedorescpf_cnpj.AsString;
                       dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString  := frmLocalizarCliente.cdsFornecedoresrazao_social.AsString;
                       cmbTipoPessoa.ItemIndex := 1;
                       //
                       FormatarCampoCPF_CNPJ();
                  End;
                  dbeNumero.SetFocus;
                  //
            frmLocalizarCliente.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
  if (dsCadastro.DataSet.State in [dsInsert]) Then
  begin
     If (key = #13) and uFuncoes.Empty(dbeCNPJCPF.Text) and (spLocCliente.Enabled) Then
      begin
           key  := #0;
           spLocClienteClick(Self);
      End;
      //
     If (key = #13) and not uFuncoes.Empty(dbeCNPJCPF.Text) Then
      begin
           key  := #0;
           dbeNumero.SetFocus;
      End;
  End; 
end;

procedure TFrmNotaFiscalEletronicaNovo.btnExcluiItemClick(Sender: TObject);
Var
   iNota, iItem : Integer;
   aProduto : String;
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
            If (dsItensNota.DataSet.Active) and not (dsItensNota.DataSet.IsEmpty)Then
             begin
                 iNota    := dmNFe.cdsNotaFiscal.Fieldbyname('id').AsInteger;
                 iItem    := dsItensNota.DataSet.Fieldbyname('CDS_NRITEM').AsInteger;
                 aProduto := dsItensNota.DataSet.Fieldbyname('CDS_CDPROD').AsString;
                 //
                 dsItensNota.DataSet.Delete;
                 //
                 If (dmNFe.ExcluirItemNota(iNota, iItem, aProduto)) Then
                     dmNFe.AtualizarNumItens(dmNFe.cdsItemsNotaFiscal);
                 //
                 CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                 dmNFe.AtualizarQuantidadeVolume(dsCadastro.DataSet.FieldByName('id').AsInteger, dmNFe.cdsItemsNotaFiscal);
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dsItensNotaDataChange(
  Sender: TObject; Field: TField);
begin
     lblItens.Caption := 'Qtd. Itens: '+ InttoStr(dsItensNota.DataSet.RecNo)+'/'
                                       + InttoStr(dsItensNota.DataSet.RecordCount);
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJCPFExit(Sender: TObject);
Var
  iCodigo, aCNPJCPF, aUF : String;
  iCodigoUF : Integer;
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     Begin
        aCNPJCPF := uFuncoes.Alltrim(uFuncoes.RemoveChar(dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString));
        //
        If (dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString = 'F') and not uFuncoes.Empty(aCNPJCPF) Then
          begin
               if (Length(aCNPJCPF) < 11) Then
                begin
                     MessageDlg('Quantidade de caracteres inv�lidos!', mtWarning, [mbOk], 0);
                     dbeCNPJCPF.SetFocus;
                     Exit;
                End;
          End;
          //
        If (dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString = 'J') and not uFuncoes.Empty(aCNPJCPF) Then
          begin
               if (Length(aCNPJCPF) < 14) Then
                begin
                     MessageDlg('Quantidade de caracteres inv�lidos!', mtWarning, [mbOk], 0);
                     dbeCNPJCPF.SetFocus;
                     Exit;
                End;
          End;
        // dbeCNPJCPF.Text;
        if not (dbeCNPJCPF.Enabled) Then
            Exit;
        //
        if not uFuncoes.Empty(aCNPJCPF) Then
          begin
              If (dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString = 'F') Then
               Begin
                  Try
                    If not (uFuncoes.CPF(aCNPJCPF)) Then
                    Begin
                        MessageDlg('CPF inv�lido!!!', mtInformation, [mbOk], 0);
                        dbeCNPJCPF.Clear;
                        dbeCNPJCPF.SetFocus;
                        Exit;
                    End;
                  Except
                    dbeCNPJCPF.SetFocus;
                    dbeCNPJCPF.Clear;
                  End;
                End
                Else
                begin
                    try
                      If not (uFuncoes.CGC(aCNPJCPF)) and
                          (uFuncoes.RemoveChar(dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString) <> '99999999000191')  Then
                       Begin
                            MessageDlg('CNPJ inv�lido!!!', mtInformation, [mbOk], 0);
                            dbeCNPJCPF.Clear;
                            dbeCNPJCPF.SetFocus;
                            Exit;
                        End;
                    Except
                        dbeCNPJCPF.SetFocus;
                        dbeCNPJCPF.Clear;
                    End;
                End;
               //
               iCodigo := '';
               if (udmDados.aHambienteNFe = '2')
                 and (uFuncoes.RemoveChar(dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString) = '99999999000191')
                 and not uFuncoes.Empty(dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString) Then
               begin
                    //dmNFe.cdsNotaFiscalNTF_RAZAOSOCIAL.AsString := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO � SEM VALOR FISCAL';
                    dbeNumero.SetFocus;
                    Exit;
               End;
               If (dmDados.ProcurarValor(aCNPJCPF,'cpf_cnpj','clientes')) Then
                begin
                     //
                     iCodigo := InttoStr( dmNFe.GetCodigoCNPJCPFint(aCNPJCPF, 'cpf_cnpj', 'id', 'clientes'));
                     If not uFuncoes.Empty(iCodigo) Then
                      Begin
                           dmDados.FilterCDS(dmDados.CdsCliente, fsInteger, iCodigo);
                           //
                           dmNFe.cdsNotaFiscaldestinatario_ie.Clear;
                           //
                           dmNFe.cdsNotaFiscalid_cliente.AsInteger    := StrtoInt(iCodigo);
                           dmNFe.cdsNotaFiscalid_fornecedor.Clear;
                           dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString  := dmDados.cdsClientetipo_pessoa.AsString;
                           dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString     := dmDados.cdsClientecpf_cnpj.AsString;
                           If (dmDados.cdsClientetipo_pessoa.AsString = 'F') Then
                            Begin
                                 cmbTipoPessoa.ItemIndex := 0;
                                 dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString := dmDados.cdsClienterazao_social.AsString;
                            End
                            Else
                            begin
                                 cmbTipoPessoa.ItemIndex := 1;
                                 dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString := dmDados.cdsClienterazao_social.AsString;
                                 if not uFuncoes.Empty(dmDados.cdsClienteinsc_estadual.AsString) Then
                                  begin
                                       if (dmDados.cdsClienteinsc_estadual.AsString <> 'ISENTO') Then
                                          dmNFe.cdsNotaFiscaldestinatario_ie.AsString     := dmDados.cdsClienteinsc_estadual.AsString;
                                  End;
                            End;
                           //
                           {if not uFuncoes.Empty(Dmdados.CdsClientei cli_ind_inscricao_estadual_dest.AsString) Then
                               dmNFe.cdsNotaFiscalntf_ind_inscricao_estadual_dest.AsInteger := Dm.CdsClientescli_ind_inscricao_estadual_dest.AsInteger
                           Else
                           begin}
                                If (dmDados.cdsClientetipo_pessoa.AsString = 'F') Then
                                 begin
                                     dmNFe.cdsNotaFiscalind_inscricao_estadual_dest.AsInteger := 9;
                                     dmNFe.cdsNotaFiscaldestinatario_ie.AsString     := '';
                                 End
                                 Else
                                 begin
                                      if not uFuncoes.Empty(dmDados.cdsClienteinsc_estadual.AsString) Then
                                          dmNFe.cdsNotaFiscalind_inscricao_estadual_dest.AsInteger := 1
                                      Else
                                          dmNFe.cdsNotaFiscalind_inscricao_estadual_dest.AsInteger := 2;
                                 End;
                           //End;
                           //
                           dmNFe.cdsNotaFiscaldestinatario_logradouro.AsString  := DmDados.cdsClientelogradouro.AsString;
                           If not ufuncoes.Empty(dmDados.cdsClientenumero.AsString) Then
                               dmNFe.cdsNotaFiscaldestinatario_end_numero.AsInteger  := dmDados.cdsClientenumero.AsInteger
                           Else
                               dmNFe.cdsNotaFiscaldestinatario_end_numero.AsInteger  := 0;
                           dmNFe.cdsNotaFiscaldestinatario_end_complemento.AsString := dmDados.cdsClientecomplemento.AsString;
                           dmNFe.cdsNotaFiscaldestinatario_cep.AsString    := dmDados.cdsClientecep.AsString;
                           {if not uFuncoes.Empty(dmDados.cdsClienteidentidade_uf.AsString) Then
                               //dmNFe.cdsNotaFiscaldestinatario_uf.AsString := dmDados.cdsClienteidentidade_uf.AsString
                               dmNFe.cdsNotaFiscalUF_DESTINATARIO.AsString  := dmDados.cdsClienteidentidade_uf.AsString;
                           Else
                           begin}
                           if not ufuncoes.Empty(dmDados.cdsClienteid_cidade.AsString) Then
                            begin
                                 // dmNFe.cdsNotaFiscalUF_DESTINATARIO.AsString  := dmDados.GetUFCidade(dmDados.cdsClienteid_cidade.AsInteger);
                                 aUF := dmDados.GetUFCidade(dmDados.cdsClienteid_cidade.AsInteger);
                                 If (dmNFe.cdsListaUFDestinatario.Locate('EUF_SIGLA', aUF,[])) Then
                                 begin
                                     iCodigoUF := dmNFe.cdsListaUFDestinatarioEUF_CODIGO.AsInteger;
                                     //dmNFe.cdsNotaFiscalUF_EMITENTE.AsString             := aUF;
                                     dmNFe.cdsNotaFiscaldestinatario_uf.AsInteger := iCodigoUF;
                                 End;
                            End;
                                  //dmNFe.cdsNotaFiscaldestinatario_uf.AsString := dmDados.GetUFCidade(dmDados.cdsClienteid_cidade.AsInteger);
                           //End;

                           //dmNFe.cdsNotaFiscaldestinatario_nome_municipio.AsString := uFuncoes.GetCidade(dm.CdsClientesCID_CODIGO.AsInteger);
                           if not uFuncoes.Empty(dmDados.cdsClienteid_cidade.AsString) Then
                              dmNFe.cdsNotaFiscaldestinatario_municipio_ibge.AsInteger := dmDados.GetCodigoIBEGCidade(dmDados.cdsClienteid_cidade.AsInteger);

                           //
                           if not uFuncoes.Empty(dmNFe.cdsNotaFiscaldestinatario_uf.AsString) then
                               dmNFe.AbrirListaCidadeUF(dmNFe.cdsNotaFiscalUF_DESTINATARIO.AsString, dmNFe.cdsListaCidades);
                               // dmNFe.cdsNotaFiscaldestinatario_uf.AsString

                           if not uFuncoes.Empty(dmDados.cdsClienteid_cidade.AsString)
                              and not uFuncoes.Empty(dmDados.cdsClienteid_bairro.AsString) Then
                               dmNFe.cdsNotaFiscaldestinatario_end_bairro.AsString := dmDados.GetNomeBairro (dmDados.cdsClienteid_cidade.AsInteger, dmDados.cdsClienteid_bairro.AsInteger)
                           Else
                               dmNFe.cdsNotaFiscaldestinatario_end_bairro.clear;
                           If not uFuncoes.Empty(dmDados.cdsClientefone1.AsString) and (Length(dmDados.cdsClientefone1.AsString) >= 10)  Then
                              dmNFe.cdsNotaFiscaldestinatario_telefone.AsString := dmDados.cdsClientefone1.AsString;

                      End;
                End
                Else
                begin
                    If (dmDados.ProcurarValor(aCNPJCPF,'cpf_cnpj', 'fornecedores')) then
                     begin
                          iCodigo := InttoStr(dmNFe.GetCodigoCNPJCPFInt(aCNPJCPF, 'cpf_cnpj', 'id', 'fornecedores'));
                          If not uFuncoes.Empty(iCodigo) Then
                           Begin
                                dmDados.FilterCDS(dmDados.cdsFornecedor, fsInteger, iCodigo);
                                //
                                dmNFe.cdsNotaFiscaldestinatario_ie.Clear;
                                dmNFe.cdsNotaFiscalid_cliente.Clear; // to-do
                                dmNFe.cdsNotaFiscalid_fornecedor.AsInteger  := StrtoInt(iCodigo);

                                if (dmDados.cdsFornecedortipo_pessoa.AsString = 'J') Then
                                    cmbTipoPessoa.ItemIndex := 1
                                Else
                                    cmbTipoPessoa.ItemIndex := 0;
                                dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString  := dmDados.cdsFornecedortipo_pessoa.AsString;
                                dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString     := dmDados.cdsFornecedorcpf_cnpj.AsString;
                                dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString := dmDados.cdsFornecedorrazao_social.AsString;
                                dmNFe.cdsNotaFiscaldestinatario_logradouro.AsString  := dmDados.cdsFornecedorlogradouro.AsString;
                                If not uFuncoes.Empty(dmDados.cdsFornecedornumero.AsString) Then
                                    dmNFe.cdsNotaFiscaldestinatario_end_numero.AsInteger := dmDados.cdsFornecedornumero.AsInteger
                                Else
                                    dmNFe.cdsNotaFiscaldestinatario_end_numero.AsInteger := 0;
                                dmNFe.cdsNotaFiscaldestinatario_end_complemento.AsString := Dmdados.cdsFornecedorcomplemento.AsString;
                                if not uFuncoes.Empty(dmDados.cdsFornecedorid_cidade.AsString)
                                      and uFuncoes.Empty(dmDados.cdsFornecedorid_bairro.AsString) Then
                                    dmNFe.cdsNotaFiscaldestinatario_end_bairro.AsString := dmDados.GetNomeBairro(dmDados.cdsFornecedorid_cidade.AsInteger, dmDados.cdsFornecedorid_bairro.AsInteger)
                                Else
                                    dmNFe.cdsNotaFiscaldestinatario_end_bairro.Clear;
                                If not uFuncoes.Empty(dmDados.cdsFornecedorfone1.AsString) and (Length(dmDados.cdsFornecedorfone1.AsString) >= 10)  Then
                                    dmNFe.cdsNotaFiscaldestinatario_telefone.AsString := dmDados.cdsFornecedorfone1.AsString;
                                if not uFuncoes.Empty(dmDados.cdsFornecedorcep.AsString) and
                                    (Length(dmDados.cdsFornecedorcep.AsString) = 8) Then
                                   dmNFe.cdsNotaFiscaldestinatario_cep.AsString    := dmDados.cdsFornecedorcep.AsString;
                                dmNFe.cdsNotaFiscaldestinatario_ie.Clear;
                                if not uFuncoes.Empty(dmDados.cdsFornecedorinsc_estadual.AsString) and (dmDados.cdsFornecedortipo_pessoa.AsString = 'J') Then
                                begin
                                    dmNFe.cdsNotaFiscaldestinatario_ie.AsString     := dmDados.cdsFornecedorinsc_estadual.AsString;
                                    dmNFe.cdsNotaFiscalind_inscricao_estadual_dest.AsInteger := 1;
                                End
                                Else
                                    dmNFe.cdsNotaFiscalind_inscricao_estadual_dest.AsInteger := 2;
                                //
                                // dmNFe.cdsNotaFiscalNTF_DEST_NOME_MUNICIPIO.AsString := DM.GetNomeCidade( Dm.cdsFornecedorid_cidade.AsInteger); //
                                if not uFuncoes.Empty(dmDados.cdsFornecedorid_cidade.AsString) Then
                                 begin
                                      dmNFe.cdsNotaFiscaldestinatario_municipio_ibge.AsInteger  :=
                                         dmDados.GetCodigoIBEGCidade(dmDados.cdsFornecedorid_cidade.AsInteger);
                                      aUF := dmDados.GetUFCidade(dmDados.cdsFornecedorid_cidade.AsInteger);
                                      If (dmNFe.cdsListaUFDestinatario.Locate('EUF_SIGLA', aUF,[])) Then
                                      begin
                                          iCodigoUF := dmNFe.cdsListaUFDestinatarioEUF_CODIGO.AsInteger;
                                          dmNFe.cdsNotaFiscaldestinatario_uf.AsInteger := iCodigoUF;
                                      End;
                                      //     dmNFe.cdsNotaFiscaldestinatario_uf.AsString   := dmDados.GetUFCidade(dmDados.cdsFornecedorid_cidade.AsInteger);

                                 End;
                           End;
                     End
                     Else
                     begin
                          Application.MessageBox(PChar('CPF/CNPJ n�o cadastrado.'),
                            'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                          dbeCNPJCPF.SetFocus;
                          Exit;
                     End;
               End;
          End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbTipoPessoaExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
          If not uFuncoes.Empty(cmbTipoPessoa.Text) Then
            begin
                 FormatarCampoCPF_CNPJ();
            End;
    End;
end;

procedure TFrmNotaFiscalEletronicaNovo.spCFOPClick(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         edtCFOP.SetFocus;
         Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
         try
             With frmLocCFOP do
               ShowModal;
         Finally
            If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
             Begin
                  edtCFOP.Text := frmLocCFOP.cdsConsultarid.AsString;
                  dbeNCM.SetFocus;
             End;
            frmLocCFOP.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtCFOPKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
         If (key = #13) and uFuncoes.Empty(edtCFOP.Text) and (spCFOP.Enabled) Then
          begin
               key  := #0;
               spCFOPClick(Self);
          End;
          //
         If (key = #13) and not uFuncoes.Empty(edtCFOP.Text) Then
          begin
               key  := #0;
               dbeNCM.SetFocus;
          End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtCFOPExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtCFOP.Text) Then
            begin
                 If not (dmDados.ProcurarValorInt (edtCFOP.Text, 'id', 'cfop')) Then
                  begin
                       Application.MessageBox(PChar('C�digo CFOP n�o cadastrado.'),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       edtCFOP.Clear;
                       edtCFOP.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeTransportadoraKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     if (key = #13) and (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and uFuncoes.Empty(dbeTransportadora.Text) Then
      begin
           key := #0;
           spTransportadoraClick(Sender);
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.BuscarTransportadora(
  aCodigo: String);
begin
     dmDados.FilterCDS(dmDados.cdsFornecedor, fsInteger, aCodigo);
     if not (dmDados.cdsFornecedor.IsEmpty) Then
     begin
          if not (dmDados.cdsFornecedortransportadora.AsBoolean) Then
           begin
                dbeTransportadora.SetFocus;
                raise Exception.Create('Fornecedor n�o � uma transportadora.');
           End;
          dmNFe.cdsNotaFiscaltransporte_razao.AsString    := dmDados.cdsFornecedorrazao_social.AsString;
          dmNFe.cdsNotaFiscaltransporte_cnpjcpf.AsString  := dmDados.cdsFornecedorcpf_cnpj.AsString;
          dmNFe.cdsNotaFiscaltransporte_ie.AsString       := dmDados.cdsFornecedorinsc_estadual.AsString;
          dmNFe.cdsNotaFiscaltransporte_endereco.AsString := dmDados.cdsFornecedorlogradouro.AsString;
          if not uFuncoes.Empty(dmDados.cdsFornecedorid_cidade.AsString) Then
          begin
               // dmNFe.cdsNotaFiscaltransporte_uf.AsString       :=
               // cmbUFTransp.ItemIndex := uFuncoes.UF_Combo(dmNFe.cdsNotaFiscaltransporte_uf.AsString);
               dmNFe.cdsNotaFiscalUF_TRANSPORTE.AsString       := dmDados.GetUFCidade( dmDados.cdsFornecedorid_cidade.AsInteger);
               dmNFe.cdsNotaFiscaltransporte_nome_municipio.AsString := dmDados.GetNomeCidade(dmDados.cdsFornecedorid_cidade.AsInteger);
          End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeTransportadoraExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeTransportadora.Text) Then
            begin
                 If not (dmDados.ProcurarValorInt(dbeTransportadora.Text, 'id', 'fornecedores')) Then
                  begin
                       Application.MessageBox(PChar('C�digo de transportadora n�o cadastrado.'),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeTransportadora.Clear;
                       dbeTransportadora.SetFocus;
                       Exit;
                  End
                  Else
                   begin
                        BuscarTransportadora(dbeTransportadora.text);
                   End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeTransportadoraChange(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          LimpaCamposTransportadora;
end;

procedure TFrmNotaFiscalEletronicaNovo.LimpaCamposTransportadora;
begin
     dmNFe.cdsNotaFiscaltransporte_cnpjcpf.Clear;
     dmNFe.cdsNotaFiscaltransporte_razao.Clear;
     dmNFe.cdsNotaFiscaltransporte_ie.Clear;
     dmNFe.cdsNotaFiscaltransporte_endereco.Clear;
     dmNFe.cdsNotaFiscaltransporte_uf.Clear;
     dmNFe.cdsNotaFiscaltransporte_nome_municipio.Clear;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnIncVolumeClick(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
      Application.CreateForm(TfrmCadVolumes, frmCadVolumes);
      try
         uFrmCadVolumes.Opcao := 'I';
         uFrmCadVolumes.M_NRITEM := uFrmCadVolumes.M_NRITEM + 1;
         frmCadVolumes.ShowModal;
      Finally
         frmCadVolumes.Free;
      End;
    End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnExcluirClick(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
        If (dmNFe.cdsListaVolumes.Active) and not (dmNFe.cdsListaVolumes.IsEmpty) and (dmNFe.cdsListaVolumes.State in [dsBrowse]) Then
                dmNFe.cdsListaVolumes.Delete;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnEditarVolClick(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
        If (dmNFe.cdsListaVolumes.Active) and not (dmNFe.cdsListaVolumes.IsEmpty) and (dmNFe.cdsListaVolumes.State in [dsBrowse]) Then
        begin
            Application.CreateForm(TfrmCadVolumes, frmCadVolumes);
            try
               uFrmCadVolumes.Opcao := 'A';
               frmCadVolumes.ShowModal;
            Finally
               frmCadVolumes.Free;
            End;
        End;
    End;
end;

procedure TFrmNotaFiscalEletronicaNovo.BtGravarClick(Sender: TObject);
Var
    M_NRNOTA, iUsuario, M_CDCIDDES, M_CDCIDRET, M_CDITEM, idNFeEmpresa : Integer;   // idMaxNFeEmpresa
    M_VLNOTA : Double;
    aOperacao : String;
    M_CODNCM : string[8];
    idClienteTeste, iItemDuplicata, iItemVolumes : Integer;
begin
     If not (ValidarCampos) Then
         Exit;
     //
     If (btnSalvarItem.Enabled) Then
         btnCancelarItemClick(Self);
     //tratabotoes;
     M_VLNOTA := dmNFe.GetValorNotaFiscal(dmNFe.cdsItemsNotaFiscal);
     iUsuario := uFrmPlusPdvNfe.idUsuario;
     // Grava Nota-Fiscal
     if (rgTipoFrete.ItemIndex = 0) Then
         dmNFe.cdsNotaFiscalmodalidade_frete.AsString := '0';
     if (rgTipoFrete.ItemIndex = 1) Then
         dmNFe.cdsNotaFiscalmodalidade_frete.AsString := '1';
     if (rgTipoFrete.ItemIndex = 2) Then
         dmNFe.cdsNotaFiscalmodalidade_frete.AsString := '2';
     if (rgTipoFrete.ItemIndex = 3) Then
         dmNFe.cdsNotaFiscalmodalidade_frete.AsString := '9';
     //
     if (cmbTipoPessoa.ItemIndex = 0) Then
         dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'F'
     Else
         dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'J';
     // nome natureza
     if (cmbNatureza.Visible) Then
        dmNFe.cdsNotaFiscaldescricao_natureza_operacao.AsString := cmbNatureza.Text;
     //
     M_CDCIDRET := dmNFe.cdsNotaFiscalemitente_municipio_ibge.AsInteger;
     //
     If (Dmdados.ProcurarValorInt(InttoStr(M_CDCIDRET),'codigo_ibge', 'cidades')) Then
          dmNFe.cdsNotaFiscalemitente_retirada_municipio.AsInteger := M_CDCIDRET
     Else
      begin
         PageControl1.ActivePageIndex := 2;
         raise Exception.Create('C�digo da cidade n�o encontrado.');
      End;
     // Retirada diferente emitente
     {If (cbxRetirada.Checked) Then to-do
         dmNFe.cdsNotaFiscal NTF_LOCAL_RET_DIF_EMI.AsString := 'S'
     Else
         dmNFe.cdsNotaFiscalNTF_LOCAL_RET_DIF_EMI.AsString := 'N';}
     //
     // Entrega diferente destinat�rio
     {If (cbxEntrega.Checked) Then  to-do
         dmNFe.cdsNotaFiscalNTF_LOCAL_ENT_DIF_DEST.AsString := 'S'
     Else
         dmNFe.cdsNotaFiscalNTF_LOCAL_ENT_DIF_DEST.AsString := 'N';}
     //
     if (rbConsumidorFinal.ItemIndex = -1) Then
     begin
          PageControl1.ActivePageIndex := 0;
          Application.MessageBox(PChar('Selecione uma op��o no campo consumidor final.'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          rbConsumidorFinal.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbDestinoOpe.Text) Then
     begin
          PageControl1.ActivePageIndex := 0;
          Application.MessageBox(PChar('Selecione o destino da opera��o!'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          cmbDestinoOpe.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbTipoOperacao.Text) Then
     begin
          PageControl1.ActivePageIndex := 0;
          Application.MessageBox(PChar('Selecione o tipo de atendimento!'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          cmbTipoOperacao.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbTipoContribuinte.Text) Then
      begin
          PageControl1.ActivePageIndex := 2;
          Application.MessageBox(PChar('Selecione o tipo de contribuinte!'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          cmbTipoContribuinte.SetFocus;
          Exit;
      End;
      //
      if (dsCadastro.DataSet.FieldByName('ind_inscricao_estadual_dest').AsInteger = 1)
        and uFuncoes.Empty(dsCadastro.DataSet.FieldByName('destinatario_ie').AsString) Then
         begin
              PageControl1.ActivePageIndex := 2;
              Application.MessageBox(PChar('Digite a Inscri��o Estadual do Destinat�rio/Remetente!'),
                           'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
              dbeInscricaoEstadual.SetFocus;
              Exit;
         End;
     //                          CDS_NCM
     if not (VerificarNCMProduto(dmNFe.cdsItemsNotaFiscal)) Then
       begin
            PageControl1.ActivePageIndex := 0;
            M_CODNCM := inputbox('C�digo NCM', dmNFe.cdsItemsNotaFiscalCDS_DESCRICAO.AsString,'');
            if not uFuncoes.Empty(M_CODNCM) and
                (Length(M_CODNCM) = 8) then
              begin
                   //
                   If not (dmDados.ProcurarValor(M_CODNCM, 'id', 'ncm')) Then
                    begin
                         Application.MessageBox(PChar('C�digo NCM n�o cadastrado.'),
                           'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         Exit;
                    End;
                   //
                   try
                       StrToInt(M_CODNCM);
                       dmNFe.cdsItemsNotaFiscal.Edit;
                       dmNFe.cdsItemsNotaFiscalCDS_NCM.AsString := M_CODNCM;
                       dmNFe.cdsItemsNotaFiscal.Post;
                   Except
                        SHOWMESSAGE('Dados inv�lidos, tente novamente.');
                   End;
              end
              Else
                  SHOWMESSAGE('Dados inv�lidos, tente novamente.');
            Exit;
       End;
       //
        If not uFuncoes.Empty(dbeVeiculoPlaca.Text) and uFuncoes.Empty(cmbUFVeiculo.Text) Then
        begin
             PageControl1.ActivePage := tbsTransportes;
             PageControl2.ActivePage := tbsVeiculo;
             Application.MessageBox(PChar('Selecione a UF da placa do ve�culo.'),
                           'ATEN��O', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
             cmbUFVeiculo.SetFocus;
             Exit;
        End;
     //
     if not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('destinatario_municipio_ibge').AsString) Then
           dsCadastro.DataSet.FieldByName('destinatario_nome_municipio').AsString :=  dsCadastro.DataSet.FieldByName('CidadeDestinatario').AsString;

     //
     if not uFuncoes.Empty(mmoObservacao.Lines.Text) Then
          mmoObservacao.Lines.Text := stringReplace(uFuncoes.TrocaCaracterEspecial(mmoObservacao.Lines.Text,false), #13#10, ';', [rfReplaceAll]);
     //
     LimparCaracter();
     //
     dmDados.Start;
     Try
          if dsCadastro.DataSet.State in [dsInsert] Then
            begin
                 aOperacao := 'I';
                 M_NRNOTA :=  dmDados.GetIdAutomatico('nota_fiscal_id_seq');
                 //   �ltima NFe na tabela NotasFiscais
                 //idMaxNFeEmpresa := dmDados.GetMaxIdNFeEmpresa(dmNFe.cdsNotaFiscalid_empresa.AsInteger);
                 //
                 dmDados.FilterCDS(dmDados.CdsEmpresa, fsInteger, dmNFe.cdsNotaFiscalid_empresa.AsString);
                 {if not (dmDados.CdsEmpresa.IsEmpty) Then
                   begin
                        if (dmDados.cdsEmpresasequencia_nfe.AsInteger <> idMaxNFeEmpresa) Then
                         begin
                              if (idMaxNFeEmpresa > dmDados.cdsEmpresasequencia_nfe.AsInteger) Then
                                  idNFeEmpresa := idMaxNFeEmpresa + 1
                              Else
                                  idNFeEmpresa := dmDados.cdsEmpresasequencia_nfe.AsInteger + 1;
                         End
                        Else }
                        idNFeEmpresa := dmDados.cdsEmpresasequencia_nfe.AsInteger+1;
                   {End
                 Else
                     idNFeEmpresa := idMaxNFeEmpresa + 1;}
                 //
                 dmNFe.cdsNotaFiscalid.AsInteger                := M_NRNOTA;
                 dmNFe.cdsNotaFiscalnumero_nota_fiscal.AsString := uFuncoes.StrZero(InttoStr(idNFeEmpresa),9);
                 //
                 dmNFe.cdsNotaFiscalid_usuario_cadastro.AsInteger   := iUsuario;
                 // Atualizar id Empresa
                 dmDados.SetProximoIdNFeEmpresa(dmNFe.cdsNotaFiscalid_empresa.AsInteger, idNFeEmpresa);
                 {If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Nota Fiscal : '+uFuncoes.StrZero(dmNFe.cdsNotaFiscalid.AsString,9)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usu�rio.');}
                 //
            End
            Else
            begin
                aOperacao := 'A';
                M_NRNOTA := dmNFe.cdsNotaFiscalid.AsInteger;
                //
                dmNFe.cdsNotaFiscaldata_alteracao.AsDateTime := Date();
                dmNFe.cdsNotaFiscalid_usuario_alteracao.AsInteger  := iUsuario;
                //
                {If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Nota Fiscal : '+uFuncoes.StrZero(dmNFe.cdsNotaFiscalid.AsString,9)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usu�rio.');}
            End;
            //
            If (uDmDados.aHambienteNFe = '2') Then
             begin
                  //dmNFe.cdsNotaFiscalntf_cliente.Clear
                  idClienteTeste := DMDados.GetIdClienteVendaConsumidor;
                  if (idClienteTeste <> 0) Then
                     dmNFe.cdsNotaFiscalid_cliente.AsInteger := idClienteTeste;
             End
            Else
               if not uFuncoes.Empty(dmNFe.cdsNotaFiscalid_fornecedor.AsString) Then
                  dmNFe.cdsNotaFiscalid_cliente.Clear; // AsInteger := DM.GetIdClienteVendaConsumidor();
            //
            If (dmNFe.cdsNotaFiscal.ApplyUpdates(0) <> 0) Then
                  dmDados.Rollback('Erro ao tentar gravar nota.');
            //
            if not (dmNFe.cdsListaNT_Ref.IsEmpty) Then
            begin
                 If not (dmNFe.ExcluiRegistroNotaReferencia(dmNFe.cdsNotaFiscalid.AsInteger)) Then
                    raise Exception.Create('Erro ao tentar gravar nota(s) de refer�ncias.');
            End;
            //
            If (dsCadastro.DataSet.fieldByName('finalidade').AsInteger = 4) Then
             begin
                 If not (dmNFe.ExcluiRegistroNotaReferencia(dmNFe.cdsNotaFiscalid.AsInteger)) Then
                    raise Exception.Create('Erro ao tentar gravar nota(s) de refer�ncias.');
             End;
            //
            pnlTotalItens.Caption := FormatFloat('#,###,##0.#0', dmNFe.cdsNotaFiscalvalor_total_nota.AsFloat);
            //
            If ((aOperacao = 'I') or (aOperacao = 'A')) Then
            begin
                // Grava Itens da Nota
                dmNFe.SetFreteItensNFe(dmNFe.cdsItemsNotaFiscal, dmNFe.cdsNotaFiscalvalor_frete.AsFloat);
                dmNFe.SetOutrasDepesasItensNFe(dmNFe.cdsItemsNotaFiscal, dmNFe.cdsNotaFiscalvalor_outras_despesas.AsFloat);
                // Desconto
                If (dmNFe.cdsNotaFiscalvalor_desconto.AsFloat > 0) and (TotalDesconto(dmNFe.cdsItemsNotaFiscal) = 0) Then
                    dmNFe.SetDescontosItensNFe(dmNFe.cdsItemsNotaFiscal, dmNFe.cdsNotaFiscalvalor_desconto.AsFloat);
                //
                dmNFe.GravarItensNotaFiscal(M_NRNOTA, dmNFe.cdsItemsNotaFiscal); 
                // Vendas importadas
                if not (dmNFe.cdsListaVendasNFe.IsEmpty) Then
                   dmNFe.AtualizarListaVendaNFe(dmNFe.cdsNotaFiscalnumero_nota_fiscal.AsInteger, dmNFe.cdsListaVendasNFe);
                //
                if not (dmNFe.cdsListaNT_Ref.IsEmpty) Then
                begin
                     If not (dmNFe.SalvarRegistroNotaReferencia(dmNFe.cdsNotaFiscalid.AsInteger, dmNFe.cdsListaNT_Ref)) Then
                      begin
                           ShowMessage('Erro ao tentar gravar nota(s) de refer�ncias.');
                           dmDados.Rollback('Erro ao tentar gravar nota(s) de refer�ncias.');
                      End;
                End
                Else
                   dmNFe.ExcluiRegistroNotaReferencia(dmNFe.cdsNotaFiscalid.AsInteger);  // Nota referencia
            End;
            // Volume
            if not (dmNFe.cdsListaVolumes.IsEmpty) Then
              begin
                   if (dmNFe.ExcluirVolumes(dsCadastro.DataSet.FieldByName('id').AsInteger)) Then
                    begin
                         dmDados.FilterCDS(dmNFe.cdsVolumes, fsInteger, '-1');
                         With dmNFe.cdsListaVolumes do
                         begin
                              First;
                              iItemVolumes := 1;
                              While not (Eof) do
                              begin
                                   dmNFe.cdsVolumes.Append;
                                   dmNFe.cdsVolumesid_nota_fiscal.AsInteger := dsCadastro.DataSet.FieldByName('id').AsInteger;
                                   dmNFe.cdsVolumesitem.AsInteger           := iItemVolumes;
                                   dmNFe.cdsVolumesquantidade.AsFloat       := dmNFe.cdsListaVolumesVOL_QUANTIDADE.AsFloat;
                                   dmNFe.cdsVolumesespecie.AsString         := dmNFe.cdsListaVolumesVOL_ESPECIE.AsString;
                                   dmNFe.cdsVolumesmarca.AsString           := dmNFe.cdsListaVolumesVOL_MARCA.AsString;
                                   dmNFe.cdsVolumesnumeracao.AsString       := dmNFe.cdsListaVolumesVOL_NUMERACAO.AsString;
                                   dmNFe.cdsVolumespeso_liquido.AsFloat     := dmNFe.cdsListaVolumesVOL_PESO_LIQUIDO.AsFloat;
                                   dmNFe.cdsVolumespeso_bruto.asFloat       := dmNFe.cdsListaVolumesVOL_PESO_BRUTO.AsFloat;
                                   //
                                   dmNFe.cdsVolumes.Post;
                                   //
                                   iItemVolumes := iItemVolumes + 1;
                                   Next;
                              End;
                              //
                              dmNFe.cdsVolumes.ApplyUpdates(0);
                         End;       // With dmNFe.cdsListaVolumes do
                    End;
              End;

            // Duplicatas
            if not (dmNFe.cdsListaDuplicatas.IsEmpty) Then
              begin
                   if (dmNFe.ExcluirDuplicatas(dsCadastro.DataSet.FieldByName('id').AsInteger)) Then
                   begin
                        dmDados.FilterCDS(dmNFe.cdsDuplicatas, fsInteger, '-1');
                        With dmNFe.cdsListaDuplicatas do
                        begin
                             First;
                             iItemDuplicata := 1;
                             While not (Eof) do
                             begin
                                  dmNFe.cdsDuplicatas.Append;
                                  dmNFe.cdsDuplicatasid_nota_fiscal.AsInteger   := dsCadastro.DataSet.FieldByName('id').AsInteger;
                                  dmNFe.cdsDuplicatasitem.AsInteger             := iItemDuplicata;
                                  dmNFe.cdsDuplicatasnumero_duplicata.AsString  := dmNFe.cdsListaDuplicatasDUP_NUMERO_DUPLICATA.AsString;
                                  dmNFe.cdsDuplicatasdata_vencimento.AsDateTime := dmNFe.cdsListaDuplicatasDUP_DATA_VENCIMENTO.AsDateTime;
                                  dmNFe.cdsDuplicatasvalor.AsFloat              := dmNFe.cdsListaDuplicatasDUP_VALOR.AsFloat;
                                  dmNFe.cdsDuplicatas.Post;
                                  //
                                  iItemDuplicata := iItemDuplicata + 1;
                                  Next;
                             End;
                        End;
                        //
                        dmNFe.cdsDuplicatas.ApplyUpdates(0);
                   End;
              End;
            // Comit
            DmDados.Comit(dmDados.Transc);
            //
            If (aOperacao = 'I') then
            begin
               { if (FNRVENDA <> 0) Then
                  begin
                       If not ( DM.SetNumNfeVenda(dsCadastro.DataSet.FieldByName('numero_nota_fiscal').AsInteger, FNRVENDA, 1)) Then
                             Application.MessageBox(PChar('N�o foi poss�vel associar NF-e a venda selecionada.'),
                                  'ATEN��O', MB_OK+MB_ICONERROR+MB_APPLMODAL);
                       //
                       FNRVENDA := 0;
                  End;   }
            End;
            //
            Application.MessageBox(PChar(uFuncoes.MSG_OK),'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            //
            dmNFe.LimparListaVenda;  
            tratabotoes;
            PageControl1.ActivePageIndex := 0;
     Except
           on Exc:Exception do
            begin
                 BtCancelarClick(Sender);
                 DmDados.Rollback(Exc.Message);
            End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.DBEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCFOPRetencaoICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
      if (dsCadastro.DataSet.State in [dsInsert]) Then
      begin
         If (key = #13) and uFuncoes.Empty(dbeCFOPRetencaoICMS.Text) and (spCFOPRetencao.Enabled) Then
          begin
               key  := #0;
               spCFOPRetencaoClick(Self);
          End;
          //
         If (key = #13) and not uFuncoes.Empty(dbeCFOPRetencaoICMS.Text) Then
          begin
               key  := #0;
               dbeICMSRetido.SetFocus;
          End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.spCFOPRetencaoClick(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeCFOPRetencaoICMS.SetFocus;
         Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
         try
             With frmLocCFOP do
               ShowModal;
         Finally
            If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
             Begin
                  dbeCFOPRetencaoICMS.Text := frmLocCFOP.cdsConsultarid.AsString;
                  dbeICMSRetido.SetFocus;
             End;
            frmLocCFOP.Free;
         End; 
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCFOPRetencaoICMSExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeCFOPRetencaoICMS.Text) Then
            begin
                 If not (dmDados.ProcurarValorInt(dbeCFOPRetencaoICMS.Text, 'id', 'cfop')) Then
                  begin
                       Application.MessageBox(PChar('C�digo CFOP n�o cadastrado.'),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeCFOPRetencaoICMS.Clear;
                       dbeCFOPRetencaoICMS.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCupomKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
    //
    If (key = #13) Then
      begin
           key  := #0;
           cmbNatureza.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCupomExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCupom.Text) Then
       begin
            dbeCupom.Text := uFuncoes.StrZero(dbeCupom.Text,6);
            //
            if (dsCadastro.DataSet.State in [dsInsert]) Then
             begin
                  if (dmDados.ProcurarValor(dbeCupom.Text, 'num_coo','nota_fiscal')) Then
                    begin
                         Application.MessageBox(PChar('N�mero de cupom j� cadastrado.'),
                            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         dbeCupom.SetFocus;
                         dbeCupom.Clear;
                         Exit;
                    End;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeEmissorExit(
  Sender: TObject);
begin
 {  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeEmissor.Text) and not uFuncoes.Empty(cmbUFEmitente.Text) Then
        begin
             if not dmNFe.GetVerificarDescricaoCidade(dbeCidadeEmissor.Text, cmbUFEmitente.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade n�o cadastrado na UF.'),
                            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeEmissor.SetFocus;
                   dbeCidadeEmissor.Clear;
                   Exit;
              End;
        End;     }
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeRetencaoExit(
  Sender: TObject);
begin
     //
  { if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeRetencao.Text) and not uFuncoes.Empty(cmbUFRetencao.Text) Then
        begin
             if not dmNFe.GetVerificarDescricaoCidade(dbeCidadeRetencao.Text, cmbUFRetencao.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade n�o cadastrado na UF.'),
                            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeRetencao.SetFocus;
                   dbeCidadeRetencao.Clear;
                   Exit;
              End;
        End;    }
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dbeCNPJ.Text) Then
       begin
            If (Length( uFuncoes.Alltrim(dbeCNPJ.Text)) < 11) Then
             begin
                   MessageDlg('Tamanho de CNPJ/CPF inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeCNPJ.Clear;
                   dbeCNPJ.SetFocus;
                   Exit;
             End;

            If (Length( uFuncoes.Alltrim(dbeCNPJ.Text)) = 14) Then
            begin
               If not (uFuncoes.CGC(uFuncoes.Alltrim(dbeCNPJ.Text))) Then
                Begin
                   MessageDlg('CNPJ inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeCNPJ.Clear;
                   dbeCNPJ.SetFocus;
                   Exit;
                End;
           End;

            If (Length( uFuncoes.Alltrim(dbeCNPJ.Text)) = 11) Then
            begin
               If not (uFuncoes.CPF(uFuncoes.Alltrim(dbeCNPJ.Text))) Then
                Begin
                   MessageDlg('CPF inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeCNPJ.Clear;
                   dbeCNPJ.SetFocus;
                   Exit;
                End;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeEntregaCNPJExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dbeEntregaCNPJ.Text) Then
       begin
            If (Length( uFuncoes.Alltrim(dbeEntregaCNPJ.Text)) < 11) Then
             begin
                   MessageDlg('Tamanho de CNPJ/CPF inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeEntregaCNPJ.Clear;
                   dbeEntregaCNPJ.SetFocus;
                   Exit;
             End;
             //
            If (Length( uFuncoes.Alltrim(dbeEntregaCNPJ.Text)) = 14) Then
            begin
               If not (uFuncoes.CGC(uFuncoes.Alltrim(dbeEntregaCNPJ.Text))) Then
                Begin
                   MessageDlg('CNPJ inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeEntregaCNPJ.Clear;
                   dbeEntregaCNPJ.SetFocus;
                   Exit;
                End;
             End;
             //
            If (Length( uFuncoes.Alltrim(dbeEntregaCNPJ.Text)) = 11) Then
            begin
               If not (uFuncoes.CPF(uFuncoes.Alltrim(dbeEntregaCNPJ.Text))) Then
                Begin
                   MessageDlg('CPF inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeEntregaCNPJ.Clear;
                   dbeEntregaCNPJ.SetFocus;
                   Exit;
                End;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeTotalFreteExit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeTotalSeguroExit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeOutrasDespesasExit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeTotalDescontoExit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNovo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
        If Application.MessageBox('Salvar dados?',
           'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         begin
              Canclose:=False;
              If (BtGravar.Enabled) Then
                 BtGravar.SetFocus;
         End
         Else
             dsCadastro.DataSet.Close;
end;

procedure TFrmNotaFiscalEletronicaNovo.TipoPessoa(aTipo: String);
begin
     if (aTipo = 'F') Then
         cmbTipoPessoa.ItemIndex := 0
     Else
         cmbTipoPessoa.ItemIndex := 1;
end;

procedure TFrmNotaFiscalEletronicaNovo.BtEditarClick(Sender: TObject);
Var
  aSituacao, aUF : String;
  iCodigoUF : Integer;
begin
    If not (dsCadastro.DataSet.IsEmpty)
     and (dsCadastro.DataSet.State in [dsbrowse]) Then
      begin   
           If (dsCadastro.DataSet.FieldByName('situacao').AsInteger = 6) Then
           begin
                If Application.MessageBox('Deseja alterar status para digita��o da NF-e?',
                    'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                    begin
                         dmNFe.cdsNotaFiscal.Edit;
                         dmNFe.cdsNotaFiscal.FieldByName('situacao').AsInteger := 5;
                         dmNFe.cdsNotaFiscal.ApplyUpdates(0);
                         //
                         tratabotoes;
                         bFluxoEdicao := true;
                         dsCadastro.DataSet.Edit;
                         VerificarNatureza;
                         Exit;
                    End
                    Else
                        Exit;
           End;
           //
           If (dsCadastro.DataSet.FieldByName('situacao').AsInteger = 5) Then
           begin
                tratabotoes;
                bFluxoEdicao := true;
                dsCadastro.DataSet.Edit;
                dsCadastro.DataSet.FieldByName('data_saida_entrada').AsDateTime := Date();
                VerificarNatureza;
                //
                dmNFe.LimparListaVenda; 
           End
           Else
           begin
                aSituacao := dmNFe.GetDescricaoSituacaoNFe(dsCadastro.DataSet.FieldByName('situacao').AsInteger);
                Application.MessageBox(PChar('Situa��o da nota: '+aSituacao),
                       'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                Exit;
           End;
           //
           if uFuncoes.Empty(edtNomeEmpresa.Text) Then
                edtNomeEmpresa.Text := dmDados.GetRazaoSocialEmpresa(uFrmPlusPdvNfe.idEmpresa);
           // Dados do emitente
                dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, inttostr(uFrmPlusPdvNfe.idEmpresa));
                dsCadastro.DataSet.FieldByName('emitente_cnpj').AsString     := dmDados.cdsEmpresacnpj.AsString;
                dsCadastro.DataSet.FieldByName('emitente_razao').AsString    := dmDados.cdsEmpresarazao_social.AsString;
                dsCadastro.DataSet.FieldByName('emitente_fantasia').AsString := dmDados.cdsEmpresanome_fantasia.AsString;
                dsCadastro.DataSet.FieldByName('emitente_ie').AsString       := dmDados.cdsEmpresainsc_estadual.AsString;
                //
                dsCadastro.DataSet.FieldByName('emitente_end_logradouro').AsString  := dmDados.cdsEmpresalogradouro.AsString;
                dsCadastro.DataSet.FieldByName('emitente_end_numero').AsString      := dmDados.cdsEmpresanumero.AsString;
                dsCadastro.DataSet.FieldByName('emitente_end_complemento').AsString := dmDados.cdsEmpresacomplemento.AsString;
                dsCadastro.DataSet.FieldByName('emintente_end_bairro').AsString     := dmDados.cdsEmpresaid_bairro.AsString;
                dsCadastro.DataSet.FieldByName('emitente_cep').AsString             := dmDados.cdsEmpresacep.AsString;
                aUF := dmDados.GetUFCidade(dmDados.cdsEmpresaid_cidade.AsInteger);
                If (dmNFe.cdsListaUFDestinatario.Locate('EUF_SIGLA', aUF,[])) Then
                 begin
                      iCodigoUF := dmNFe.cdsListaUFDestinatarioEUF_CODIGO.AsInteger;
                      dsCadastro.DataSet.FieldByName('emitente_uf').AsInteger  := iCodigoUF
                 End;
                dsCadastro.DataSet.FieldByName('emitente_nome_municipio').AsString := dmDados.GetNomeCidade( dmDados.cdsEmpresaid_cidade.AsInteger );
                dsCadastro.DataSet.FieldByName('emitente_municipio_ibge').AsInteger := dmDados.GetCodigoIBEGCidade(dmDados.cdsEmpresaid_cidade.AsInteger);
                dsCadastro.DataSet.FieldByName('emitente_telefone').AsString       := dmDados.cdsEmpresafone.AsString;
                VerificarNatureza;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeNumeroExit(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert])
     and not uFuncoes.Empty(dbeNumero.Text) Then
      begin
          dbeNumero.Text := uFuncoes.StrZero(dbeNumero.Text,9);
          //
          //if (DMDados.VerificaExisteNFeEmpresa(dsCadastro.DataSet.FIeldByName('id_empresa').AsInteger,  dbeNumero.Text)) Then
          if (DMDados.VerificaExisteNFeEmpresa(uFrmPlusPdvNfe.idEmpresa,  dbeNumero.Text)) Then
           begin
                Application.MessageBox(PChar('N�mero de nota j� cadastrado para esse emitente.'),
                       'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dbeNumero.Clear;
                dbeNumero.SetFocus;
                Exit;
           End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnAddDuplicataClick(
  Sender: TObject);
begin
  //
  If not (dsDuplicatas.DataSet.Active) Then
    dmNFe.AbrirTabelaCobranca(dmNFe.cdsNotaFiscalid.AsInteger);
  //
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     Begin
          //
            Application.CreateForm(TfrmCadDuplicata, frmCadDuplicata);
            try
                uFrmCadDuplicata.aOpcao := 'I';
                iItem := dsDuplicatas.DataSet.RecordCount;
                frmCadDuplicata.Showmodal;
            Finally
                frmCadDuplicata.free;
                //
                CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas);
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnEdiDuplicataClick(
  Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
            Application.CreateForm(TfrmCadDuplicata, frmCadDuplicata);
            try
                uFrmCadDuplicata.aOpcao := 'A';
                frmCadDuplicata.Showmodal;
            Finally
                frmCadDuplicata.free;
                CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas); 
            End; 
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnExcDuplicataClick(
  Sender: TObject);
Var
    iNumNota, iItem : Integer;
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     If not (dsDuplicatas.DataSet.IsEmpty)  and (dsDuplicatas.DataSet.RecordCount > 0)
      and (dsDuplicatas.DataSet.State in [dsBrowse]) Then
      begin

           If Application.MessageBox('Deseja excluir este registro?', 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
            begin
               iNumNota := dmNFe.cdsListaDuplicatasDUP_ID_NOTA_FISCAL.AsInteger;
               iItem    := dmNFe.cdsListaDuplicatasDUP_ITEM.AsInteger;
               //
               dsDuplicatas.DataSet.Delete;
               //
               {If (dmNFe.GetVerificarDuplicataExiste(iNumNota, iItem )) Then
                    dmNFe.cdsDuplicata.ApplyUpdates(0);}
               //
               CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas);
            end;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.tbCobrancaShow(Sender: TObject);
begin
      If not (dsDuplicatas.DataSet.Active) Then
         dmNFe.AbrirTabelaCobranca(dmNFe.cdsNotaFiscalid.AsInteger);
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(dbeNumero.Text) Then
      begin
           key  := #0;
           dbeSerie.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeDTEMISKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDTEMIS.Text)) Then
      begin
           key  := #0;
           dbeDTEntSai.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbNaturezaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(cmbNatureza.Text) Then
      begin
           key  := #0;
           cmbFormaPaga.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbFormaPagaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(cmbFormaPaga.Text) Then
      begin
           key  := #0;
           cmbEmissao.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbEmissaoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(cmbEmissao.Text) Then
      begin
           key  := #0;
           cmbFinalidadeEmissao.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbFinalidadeEmissaoKeyPress(
  Sender: TObject; var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(cmbFinalidadeEmissao.Text) Then
      begin
           key  := #0;
           rbConsumidorFinal.SetFocus;
           //keybd_event(VkKeyScan('1'),38, 0, 0);
           rbConsumidorFinal.Buttons[1].setfocus;
           //key  := #13;
           {If (btnNovoItem.Enabled) Then
               btnNovoItem.SetFocus;}
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbTipoPessoaKeyPress(
  Sender: TObject; var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(cmbTipoPessoa.Text) Then
      begin
           key  := #0;
           dbeCNPJCPF.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnVendaClick(Sender: TObject);
Var
  W_VLACRE, M_VLACRE,M_ALIQICMS, W_VLDESC, M_BCIMCS, M_VLICMS, M_VLUNIT  : Double;
  M_CDLOJA, M_NRITEM : Integer;
  M_CDCFOP, M_NRVEND, M_ECFCOO, aDataCupom : String;
  M_PERIPI, M_VALIPI, M_BASIPI, M_QTPROD : Double;
  M_CSTPRO, M_CSTIPI : String;
  bFluxoRedicao : Boolean;
  fPercentualReducao, fValorDescontoItem : Double;
  iModaVenda, iFormaPGTO, iNumeroNota, iParcela : Integer;
  aFormaPagamento: String;
  aNumLote, aDtFabric, aDtVenc : String;
  bTemCliente : Boolean;
begin
     //
     // dm.RefreshCDS(dm.CdsConfig);
     //
     {If (FNRVENDA <> 0) Then
      begin
          Application.MessageBox(PChar('Uma venda j� foi importada!!!'),
                       'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          Exit;
      End;}
      //
     Application.CreateForm(TFrmLocVenda, FrmLocVenda);
      try
          With FrmLocVenda do
          begin
               If (ShowModal = mrOk) Then
                begin
                    if not (dmNFe.cdsVendaItensNFE.IsEmpty) Then
                      begin
                           {If not (dmNFe.cdsItemsNotaFiscal.IsEmpty) Then
                               dmNFe.cdsItemsNotaFiscal.EmptyDataSet;  }
                           //
                           M_NRVEND := dmNFe.cdsVendaItensNFE.FieldByName('id').AsString;
                           FNRVENDA := dmNFe.cdsVendaItensNFE.FieldByName('id').AsInteger;
                           M_CDLOJA := dmNFe.cdsVendaItensNFE.FieldByName('id_empresa').AsInteger;
                           M_VLACRE := dmNFe.cdsVendaItensNFE.FieldByName('valor_acrescimo').AsFloat;

                           dsCadastro.DataSet.FieldByName('id_empresa').AsInteger := M_CDLOJA;
                           //
                           If not uFuncoes.Empty(dmNFe.cdsVendaItensNFEid_cliente.ASString) Then
                           begin
                                DMDados.FilterCDS(DMDados.cdsCliente, fsInteger, dmNFe.cdsVendaItensNFEid_cliente.ASString);
                                //
                                If not (DMDados.cdsCliente.IsEmpty) Then
                                 begin
                                      cmbTipoPessoa.SetFocus;
                                      If (dmDados.cdsClientetipo_pessoa.AsString = 'J') Then
                                         cmbTipoPessoa.ItemIndex := 1;
                                      If (dmDados.cdsClientetipo_pessoa.AsString = 'F') Then
                                         cmbTipoPessoa.ItemIndex := 0;
                                      //
                                      dbeCNPJCPF.SetFocus;
                                      dsCadastro.DataSet.FieldByName('destinatario_cnpjcpf').AsString := dmDados.cdsClientecpf_cnpj.AsString;
                                      //
                                      if (udmDados.aHambienteNFe = '2') Then
                                      begin
                                           cmbTipoPessoa.ItemIndex := 1;
                                           dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString  := 'J';
                                           dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.AsString     := '99999999000191';
                                           dmNFe.cdsNotaFiscaldestinatario_razaosocial.AsString := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
                                      End;
                                      dbeNumero.SetFocus;
                                      bTemCliente := True;
                                 End;
                           End
                           Else
                            begin
                               bTemCliente := False;
                               Application.MessageBox(PChar('N�o h� informa��o de cliente nessa venda!!!'+#13+'Voc� tem que selecionar um cliente.'),
                                   'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                            End;
                           // CUPOM FISCAL
                           If NOT uFuncoes.Empty(dmNFe.cdsVendaItensNFEcoo.AsString) Then
                           begin
                               M_ECFCOO   := dmNFe.cdsVendaItensNFEcoo.AsString;
                               If (M_ECFCOO <> '0') Then
                               begin
                                    aDataCupom := dmNFe.cdsVendaItensNFEdata_venda.AsString;
                                    M_ECFCOO := uFuncoes.StrZero(M_ECFCOO,6);
                                    dmNFe.cdsNotaFiscalnum_coo.AsString     := M_ECFCOO;
                                    // dmNFe.cdsVendaItensNFEcoo.AsString;
                                    //
                                    dmDados.FilterCDS(dmDados.cdsImpEcf, fsInteger, dmNFe.cdsVendaItensNFEid_ecf.AsString);
                                    if not (dmDados.cdsImpEcf.IsEmpty) Then
                                    begin
                                        if uFuncoes.Empty(dmDados.cdsImpEcfnum_caixa.AsString) or
                                            (dmDados.cdsImpEcfnum_caixa.AsInteger = 0) then
                                        begin
                                             Raise Exception.Create('N�mero do ECF vazio ou inv�lido!!!'+#13+'Valor Atual Campo : '+dmDados.cdsImpEcfnum_caixa.AsString);
                                        End;
                                        dmNFe.cdsNotaFiscalnum_ecf.AsString     := dmDados.cdsImpEcfnum_caixa.AsString;
                                        if not uFuncoes.Empty(dmDados.cdsImpEcftipo_cupom.AsString) Then
                                            dmNFe.cdsNotaFiscalmodelo_ecf.AsString  := dmDados.cdsImpEcftipo_cupom.AsString
                                        Else
                                            dmNFe.cdsNotaFiscalmodelo_ecf.AsString  := '2D';
                                    End;
                                    //
                                    dsCadastro.DataSet.FieldByName('informacoes_adicionais_contribu').AsString :=
                                         ' MOD.REF: '+ dmNFe.cdsNotaFiscalmodelo_ecf.AsString+';'+
                                         'NT. FISCAL C/ICMS RECOLHIDO NO PDV/CUPOM:'+dmNFe.cdsNotaFiscalnum_ecf.AsString+'/'+M_ECFCOO+';'+
                                         'DATA CUPOM: '+aDataCupom +';'
                               End;
                           End;
                           //
                           dmNFe.cdsVendaItensNFE.First;
                           M_NRITEM := 0;
                           M_QTPROD := 0;
                           M_CDCFOP := FrmLocVenda.edtCFOP.Text;
                           //
                           iModaVenda := DmDados.GetVerificarModalidadeVenda(StrtoInt(M_NRVEND));
                           aFormaPagamento := 'P';   // to-do
                           // dmDados.GetTipoModalidade(iModaVenda);
                           //
                           if (aFormaPagamento = 'A') Then
                             iFormaPGTO := 0;
                           if (aFormaPagamento = 'P') Then
                             iFormaPGTO := 1;
                           //edtCFOP.Text;
                           M_NRITEM := dmNFe.cdsItemsNotaFiscal.RecordCount;
                           //
                           While not (dmNFe.cdsVendaItensNFE.Eof) do
                            begin
                                 BuscarProduto(dmNFe.cdsVendaItensNFEid_produto.AsString);
                                 //
                                 M_NRITEM := M_NRITEM + 1;
                                 //
                                 if not (dmDados.cdsProduto.IsEmpty) Then
                                  begin
                                       M_VLUNIT := dmNFe.cdsVendaItensNFEvalor_unitario.AsFloat;
                                       M_QTPROD := dmNFe.cdsVendaItensNFEquantidade.AsFloat;
                                       W_VLDESC := 0;
                                       fValorDescontoItem := 0;
                                        If (dmNFe.cdsVendaItensNFEperc_desconto.AsFloat > 0) Then
                                         begin
                                              W_VLDESC := dmNFe.cdsVendaItensNFEvalor_desconto_item.AsFloat;  // MOP_DESCONTO  .FieldByName('MOP_PERC_DESCONTO')
                                              fValorDescontoItem := dmNFe.cdsVendaItensNFEvalor_desconto_item.AsFloat;
                                         End;
                                       //
                                       M_ALIQICMS := 0;
                                       bFluxoRedicao := false;
                                       //
                                       dmDados.FilterCDS(dmDados.cdsTributacao, fsInteger, dmDados.cdsProdutoid_tributacao.AsString);

                                       if (dmDados.cdsTributacao.IsEmpty) Then
                                        begin
                                             M_CSTPRO := dmDados.cdsProdutoorigem.AsString+dmDados.cdsTributacaocst_icms.AsString;
                                             // Aliquota
                                             M_ALIQICMS := dmDados.cdsTributacaoaliquota_icms.AsFloat;
                                        End
                                        Else
                                             M_CSTPRO := '000';
                                       //
                                       fPercentualReducao := 0;
                                       //
                                       if (M_CSTPRO = '020') or (M_CSTPRO = '20') Then
                                        begin
                                             bFluxoRedicao := True;
                                             // function TdmNFe.GetPercentualReducao(aTributacao, aCST: String): Double;
                                             fPercentualReducao := 0;
                                             // dmNFe.GetPercentualReducao(Dm.cdsProdutosTRI_CODIGO.AsString, M_CSTPRO); to-do
                                        End;
                                       //
                                       if (M_ALIQICMS > 0) Then
                                       begin
                                           if not (bFluxoRedicao) Then
                                           begin
                                                M_BCIMCS := UFuncoes.Arredondar(M_VLUNIT * M_QTPROD, M_QTCASA) - fValorDescontoItem;
                                                M_VLICMS := UFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BCIMCS, M_ALIQICMS), M_QTCASA);
                                           End
                                           Else
                                           begin
                                                M_BCIMCS := uFuncoes.Arredondar(((M_VLUNIT * M_QTPROD)-fValorDescontoItem) * fPercentualReducao/100, M_QTCASA);
                                                M_VLICMS := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BCIMCS, M_ALIQICMS),M_QTCASA);
                                           End;
                                           //
                                           if (M_CDCFOP = '5929') or (M_CDCFOP = '6929') or (M_CDCFOP = '5403') or (M_CDCFOP = '6403') Then
                                           begin
                                                M_ALIQICMS := 0;
                                                M_BCIMCS   := 0;
                                                M_VLICMS   := 0;
                                           End;
                                       End
                                       Else
                                       begin
                                           M_BCIMCS := 0;
                                           M_VLICMS := 0;
                                       End;
                                       //  Ipi do produto  to-do
                                       {if (DM.cdsConfigCFG_IPI.AsString = 'S') Then
                                       Begin
                                            M_PERIPI := dm.cdsProdutosPRO_IPI.AsFloat;
                                            M_CSTIPI := dm.cdsProdutosPRO_IPI_CST.AsString;
                                            M_BASIPI := 0;
                                            if (M_PERIPI > 0) AND ((M_CSTIPI = '50') OR (M_CSTIPI = '99')) Then
                                            BEGIN
                                                M_BASIPI := UFuncoes.Arredondar(M_VLUNIT * M_QTPROD,M_QTCASA);
                                                M_VALIPI := UFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BASIPI, M_PERIPI),M_QTCASA);
                                            End
                                            Else
                                                M_VALIPI := 0;
                                            End
                                       Else
                                       Begin    }
                                            M_PERIPI := 0;
                                            M_BASIPI := 0;
                                            M_VALIPI := 0;
                                       // End;

                                        //If (DM.qryVendaMOP_VLDESC.AsFloat > 0) Then

                                            //uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_VLUNIT * M_QTPROD,dmNFe.cdsVendaItensNFE.FieldByName('MOP_DESCONTO').AsFloat),2);
                                            //uFuncoes.Gerapercentual(M_VLUNIT, DM.qryVendaMOP_VLDESC.AsFloat);
                                        aNumLote  := '';
                                        aDtFabric := '';
                                        aDtVenc   := '';
                                        //
                                        if (uFuncoes.Alltrim(dmNFe.cdsVendaItensNFE.FieldByName('lote').asString) <> 'GERAL') Then
                                        begin
                                             aNumLote  := dmNFe.cdsVendaItensNFE.FieldByName('lote').AsString;
                                             aDtVenc   := dmNFe.cdsVendaItensNFE.FieldByName('data_vencimento_lote').AsString;
                                             aDtFabric := dmDados.GetDataFabricacaoProduto(dmNFe.cdsNotaFiscalid_empresa.AsInteger,
                                                                                     dmNFe.cdsVendaItensNFE.FieldByName('id_produto').AsInteger, aNumLote);
                                        End;
                                        //
                                       dmNFe.AddItemNota(
                                            M_NRITEM,
                                            dmNFe.cdsVendaItensNFEid_produto.AsString,
                                            dmDados.cdsProdutocod_barras.AsString,
                                            dmDados.cdsProdutodescricao.AsString,
                                            dmDados.cdsProdutoid_ncm.AsString,
                                            'EX_TIPI',
                                            M_CDCFOP,
                                            dmNFe.cdsVendaItensNFEid_unidade.AsString,
                                            'GENERO',
                                            dmNFe.cdsVendaItensNFEid_unidade.AsString,
                                            M_QTPROD, M_VLUNIT,
                                            M_QTPROD,
                                            M_VLUNIT,
                                            0, 0, W_VLDESC, W_VLACRE, 0, 1,
                                            M_BCIMCS, M_VLICMS, M_VALIPI, M_ALIQICMS, M_PERIPI, M_BASIPI,
                                            fPercentualReducao, M_CSTPRO, '%', aNumLote, aDtFabric, aDtVenc);
                                            //M_BCIMCS, M_VLICMS, edtIPI.Value, M_ALIQICMS, 0, 0);
                                       //
                                       CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                                       CalcularTotalNota;
                                  End;     // fim-se if not (dm.cdsProdutos.IsEmpty) Then
                                 //   Proximo item
                                 dmNFe.cdsVendaItensNFE.Next;
                            End;  //fim-do-enquanto
                            // Volumes
                            dmNFe.AtualizarQuantidadeVolume(dsCadastro.DataSet.FieldByName('id').AsInteger, dmNFe.cdsItemsNotaFiscal);
                            // Verificar desconto
                            If (dmNFe.cdsVendaItensNFEvalor_desconto.AsFloat > 0) and (TotalDesconto(dmNFe.cdsItemsNotaFiscal) = 0) Then
                             begin
                                  dmNFe.cdsNotaFiscalvalor_desconto.AsFloat := dmNFe.cdsVendaItensNFEvalor_desconto.AsFloat;
                                  dmNFe.SetDescontosItensNFe(dmNFe.cdsItemsNotaFiscal, dmNFe.cdsNotaFiscalvalor_desconto.AsFloat);
                                  //
                                  CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                                  CalcularTotalNota;
                             End;
                            //    Duplicatas
                            If (iFormaPGTO = 1) Then
                            begin
                                iNumeroNota := dsCadastro.DataSet.FieldByName('id').AsInteger;
                                // dmNFe.ExcluirDuplicatas(iNumeroNota);
                                With dmNFe.cdsDuplicatasVenda do
                                 begin
                                      Close;
                                      {CommandText := 'Select CR.REC_NRVENDA, CR.rec_credito, CR.rec_parcela, CR.rec_cliente, CR.rec_datavencimento, '+
                                                  'CR.rec_valorparcela from CONTASRECEBER CR Where (CR.REC_NRVENDA = :pVENDA) order by CR.rec_parcela ';}
                                      Params.ParamByName('pVENDA').AsInteger := StrtoInt(M_NRVEND);
                                      Open;
                                      //
                                     If not (IsEmpty) Then
                                     begin
                                          First;
                                          //dmNFe.ExcluirDuplicatas(iNumeroNota);
                                          //If not (dmNFe.cdsDuplicata.Active) Then
                                          dmDados.RefreshCDS(dmNFe.cdsListaDuplicatas);
                                          dmNFe.cdsListaDuplicatas.EmptyDataSet;
                                          //dmNFe.AbrirTabelaCobranca(iNumeroNota);
                                          //
                                         iParcela := 1;
                                         While not (Eof) do
                                         begin
                                            dmNFe.cdsListaDuplicatas.Append;
                                            dmNFe.cdsListaDuplicatasDUP_ID_NOTA_FISCAL.AsInteger   := iNumeroNota;
                                            dmNFe.cdsListaDuplicatasDUP_ITEM.AsInteger             := dmNFe.cdsListaDuplicatas.RecordCount + 1;
                                            //FieldByName('rec_parcela').AsInteger;
                                            dmNFe.cdsListaDuplicatasDUP_NUMERO_DUPLICATA.AsString  := uFuncoes.StrZero(FieldByName('id').AsString,7)+'/'+uFuncoes.StrZero(InttoStr(iParcela),2);
                                            dmNFe.cdsListaDuplicatasDUP_DATA_VENCIMENTO.AsDateTime := FieldByName('data_vencimento').AsDateTime;
                                            dmNFe.cdsListaDuplicatasDUP_VALOR.AsFloat              := FieldByName('valor_parcela').AsFloat;
                                            //
                                            dmNFe.cdsListaDuplicatas.Post;
                                            //dmNFe.cdsDuplicata.ApplyUpdates(0);
                                            iParcela := iParcela + 1;
                                            //
                                            Next;
                                         End;
                                         //
                                         If not (dmNFe.cdsListaDuplicatas.IsEmpty) Then
                                             CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas);
                                     End;
                                  //
                                 End;  // With dmNFe.cdsDuplicatasVenda do
                             End;  // fim-se
                            //
                            dmNFe.AddNumeroVenda(StrToInt( M_NRVEND ));
                            //
                            btnVenda.Enabled := False;
                      End;        // if not (dmNFe.cdsVendaItensNFE.IsEmpty) Then
                End;              //  If (ShowModal = mrOk) Then
          End;                    // with  FrmLocVenda do
      Finally
          FrmLocVenda.Free;
      End;

      //
      if not (bTemCliente) Then
          dbeCNPJCPF.SetFocus;
end;

procedure TFrmNotaFiscalEletronicaNovo.CalcularTotalDuplicata(
  aCDS: TClientDataSet);
Var
   fValor : Double;
begin
     fValor := 0;
     With aCDS do
      begin
           DisableControls;
           First;
           While not (Eof) do
            begin
                fValor := fValor  + FieldByName('DUP_VALOR').AsFloat;
                //
                Next;
            End;
            First;
            EnableControls;
      End;
      //
      lblTotal.Caption := FormatFloat('###,##0.#0', fValor);
end;

procedure TFrmNotaFiscalEletronicaNovo.DetalhesNota;
begin
          if (dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString = 'F') Then
           begin
                cmbTipoPessoa.ItemIndex := 0;
                dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '999.999.999-99;0;_';
           End
           Else
           begin
                cmbTipoPessoa.ItemIndex := 1;
                dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '99.999.999/9999-99;0;_';
           End;
           //
           AbrirDetalhesNota(iNumNota);
           dmNFe.AbrirTabelaCobranca(dmNFe.cdsNotaFiscalid.AsInteger);
           CalcularTotalDuplicata(dmNFe.cdsListaDuplicatas);
end;

procedure TFrmNotaFiscalEletronicaNovo.LimparCamposProduto;
begin
    edtCDPROD.Clear;
    edtCFOP.Clear;
    dbeNCM.Clear;
    edtQTDE.Clear;
    edtValorUnitario.Clear;
    edtDesconto.Clear;
    edtICMS.Clear;
    edtIPI.Clear;
    edtSubTotal.Clear;
    edtDescricao.Clear;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeNCMKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
        If (key = #13) and uFuncoes.Empty(dbeNCM.Text) and
              (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
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
         //
         If (key = #13) and not uFuncoes.Empty(dbeNCM.Text) Then
          begin
               key  := #0;
               edtUnidade.SetFocus;
          End;
   End;  // if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeNCMExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeNCM.Text) Then
            begin
                 dbeNCM.Text := uFuncoes.StrZero(dbeNCM.Text,8);
                 If not (dmDados.ProcurarValor(dbeNCM.Text, 'id', 'ncm')) Then
                  begin
                       Application.MessageBox(PChar('C�digo NCM n�o cadastrado.'),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeNCM.Clear;
                       dbeNCM.SetFocus;
                       Exit;
                  End;
                  //
                  if (Length(uFuncoes.Alltrim(dbeNCM.Text)) < 8) Then
                   begin
                        Application.MessageBox(PChar('Quantidade de digitos menor que 8.'),
                         'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                        dbeNCM.Clear;
                        dbeNCM.SetFocus;
                        Exit;
                   End;
            End;
      End;
end;

function TFrmNotaFiscalEletronicaNovo.VerificarNCMProduto(
  aCDS: TClientDataSet): Boolean;
Var
   M_FLSAIR : Boolean;
begin
     result := False;
     try
         M_FLSAIR := false;
         with aCDS do
          begin
               DisableControls;
               First;
               While not (Eof) do
                begin
                      if uFuncoes.Empty(aCDS.FieldByName('CDS_NCM').AsString) Then
                      Begin
                          M_FLSAIR := true;
                          Break;
                      End;
                      //
                      Next;
                End;
                //
                EnableControls;
                //
                if not (M_FLSAIR) Then
                   Result := True;
          End;
     Except

     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.DBEdit21KeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.rgTipoFreteChange(Sender: TObject);
begin
  { If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
   begin
    if (rgTipoFrete.ItemIndex = 3) Then
     begin
         dbeTotalFrete.ReadOnly := True;
         dsCadastro.DataSet.FieldByName('valor_frete').AsFloat := 0;
     End
     Else
         dbeTotalFrete.ReadOnly := false;
   End;     }
end;

procedure TFrmNotaFiscalEletronicaNovo.rgTipoFreteClick(Sender: TObject);
begin
   If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
   begin
    if (rgTipoFrete.ItemIndex = 3) Then
     begin
         dbeTotalFrete.ReadOnly := True;
         dsCadastro.DataSet.FieldByName('valor_frete').AsFloat := 0;
     End
     Else
         dbeTotalFrete.ReadOnly := false;
   End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeInscricaoEstadualExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     if not uFuncoes.Empty(dbeInscricaoEstadual.Text) AND
        not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('destinatario_uf').AsString)
        and (dsCadastro.DataSet.FieldByName('destinatario_tipopessoa').AsString = 'J') Then
       begin
           { If not Inscricoes.Inscricao(dbeInscricaoEstadual.Text, dsCadastro.DataSet.FieldByName('destinatario_uf').AsString) Then
             begin
                  Application.MessageBox(PChar('N�mero inscri��o estadual inv�lida.'),
                            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  //dbeIdentInscricao.Clear;
                  dbeInscricaoEstadual.SetFocus;
                  Exit;
             End;}
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
   If (key = #13) and not uFuncoes.Empty(edtUnidade.Text) Then
      begin
           key  := #0;
           edtQTDE.SetFocus;
      End;
end;

function TFrmNotaFiscalEletronicaNovo.VerificarUnidadeProdutos(
  aCDS: TClientDataSet): Boolean;
begin
     Result := false;
     With aCDS do
     begin
          DisableControls;
          First;
          While not (Eof) do
          begin
               if uFuncoes.Empty(FieldByName('CDS_UNDCOM').AsString) Then
               begin
                   Result := true;
                   Break;
               End;
               //
               Next;
          End;
          EnableControls;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (Key = #13) and (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and (PageControl1.ActivePageIndex <> 0) then
      if not (ActiveControl is TDBGrid) then
       begin
           if (not (ActiveControl is TDBMemo)) Then
            begin
               Key := #0;
               Perform(WM_NEXTDLGCTL, 0, 0);
            End;
      end
      else
         if (ActiveControl is TDBGrid) then
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
                else
                   selectedindex := 0;
end;

procedure TFrmNotaFiscalEletronicaNovo.edtUnidadeExit(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtUnidade.Text) Then
            begin
                 If not (dmDados.ProcurarValor(edtUnidade.Text, 'id', 'unidades')) Then
                  begin
                       Application.MessageBox(PChar('C�digo de Unidade n�o cadastrado.'),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       edtUnidade.Clear;
                       edtUnidade.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.grdConsultarDblClick(
  Sender: TObject);
Var
   idProduto, iItem : Integer;
begin
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
          idProduto := dmNFe.cdsItemsNotaFiscalCDS_CDPROD.AsInteger;
          iItem     := dmNFe.cdsItemsNotaFiscalCDS_NRITEM.AsInteger;
          // Simples
          if (uFrmPlusPdvNfe.iCodRegimeTributario = 1) Then
          begin
               if not (dsItensNota.DataSet.IsEmpty) Then
                   LancarItemEdit;
          End;
          // Normal
          if (uFrmPlusPdvNfe.iCodRegimeTributario = 3) Then
          begin
            Application.CreateForm(TFrmCadItemNota, FrmCadItemNota);
            Try
                 Case rgTipo.ItemIndex of
                    0 : uFrmCadItemNota.aTipoOperacao := 'E';
                    1 : uFrmCadItemNota.aTipoOperacao := 'S';
                 End;
                 //
                 uFrmCadItemNota.aOpcaoIPIDevolvido := False;
                 If (dsCadastro.DataSet.FieldByName('finalidade').AsInteger = 4) Then
                     uFrmCadItemNota.aOpcaoIPIDevolvido := True;
                 //
                 dmNFe.cdsItemsNotaFiscal.Edit;
                 FrmCadItemNota.ShowModal;
            Finally
                 FrmCadItemNota.Free;
                 CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                 CalcularTotalNota;
                 //
                 dmNFe.AtualizarQuantidadeVolume(dsCadastro.DataSet.FieldByName('id').AsInteger, dmNFe.cdsItemsNotaFiscal);
                 //
                 dmNFe.cdsItemsNotaFiscal.Locate('CDS_CDPROD;CDS_NRITEM', VarArrayOf([idProduto, iItem]),[]);
            End;
         End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeDTEntSaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDTEntSai.Text)) Then
      begin
           key  := #0;
           cmbNatureza.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeDTEntSaiExit(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDTEntSai.text)) Then
       try
            dbeDTEntSai.Date := StrtoDate(dbeDTEntSai.text);
            if (dbeDTEntSai.Date < Date) Then
              begin
                  Application.MessageBox('Data inferior a data atual!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEntSai.Date := Date();
                  dbeDTEntSai.SetFocus;
                  Exit;
              End;
              //
              If (dbeDTEntSai.Date > Date) Then
              begin
                  Application.MessageBox('Data superior a data atual!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEntSai.Date := Date();
                  dbeDTEntSai.SetFocus;
                  Exit;
              End;
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inv�lida!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEntSai.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnImportaXMLClick(Sender: TObject);
begin
     btnImportaXML.Enabled := false;
     try
         ImportarXML();
     Finally
         btnImportaXML.Enabled := true;
     End;
     Application.ProcessMessages;
end;

procedure TFrmNotaFiscalEletronicaNovo.AddRegistroNFeImportada(
  iNumNota: Integer; aNumeroNFe : String);
begin  
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          //
          PageControl1.ActivePageIndex := 0;
          tratabotoes;
          M_NRITEM := 0;
          pnlTotalItens.Caption := '0,00';
          bFluxoEdicao := False;
          //
          dmNFe.Abrir_Tabela_Itens;
          //
          With dsCadastro.DataSet do
            begin
                 //
                 Append;
                 FieldByName('id').AsInteger     := iNumNota;
                 if not uFuncoes.Empty(aNumeroNFe) Then
                    FieldByName('numero_nota_fiscal').AsString  := uFuncoes.StrZero(aNumeroNFe,9);
                 FieldByName('modelo').AsInteger     := uFuncoes.ConverterModeloDocumento(55);
                 FieldByName('versao_xml').AsString  := '3.10';
                 FieldByName('tipo_operacao').AsInteger := 1;
                 FieldByName('situacao').AsInteger := 5;
                 //
                 FieldByName('valor_itens').AsFloat  := 0;
                 FieldByName('valor_bc_icms').AsFloat := 0;
                 FieldByName('valor_icms').AsFloat    := 0;
                 FieldByName('valor_bc_icms').AsFloat := 0;
                 FieldByName('valor_icms_st').AsFloat  := 0;
                 FieldByName('valor_frete').AsFloat   := 0;
                 FieldByName('valor_ipi').AsFloat     := 0;
                 FieldByName('valor_seguro').AsFloat  := 0;
                 FieldByName('valor_outras_despesas').AsFloat    := 0;
                 FieldByName('valor_desconto').AsFloat := 0;
                 FieldByName('valor_total_nota').AsFloat := 0;
                 {FieldByName('emitente_cod_pais').AsInteger := 1058;
                 FieldByName('emitente_nome_pais').AsString := 'BRASIL';}
                 FieldByName('sequencia_cce').AsInteger := 0;
                 FieldByName('num_lote_evento').AsInteger := 0;
                 //
                 FieldByName('id_usuario_cadastro').AsInteger  := uFrmPlusPdvNfe.idUsuario;
                 FieldByName('id_empresa').AsInteger           := uFrmPlusPdvNfe.idEmpresa;
                 edtNomeEmpresa.Text                           := dmDados.GetRazaoSocialEmpresa(FieldByName('id_empresa').AsInteger);
                 FieldByName('numero_nota_fiscal').AsString    := ''; //uFuncoes.StrZero(InttoStr(idNFeEmpresa),9);
                 FieldByName('data_hora_emissao').AsDateTime   := Date();
                 FieldByName('data_saida_entrada').AsDateTime  := Date();
                 FieldByName('indicador_do_emitente').AsString := '0';
                 FieldByName('modelo').AsInteger         := uFuncoes.ConverterModeloDocumento(55);
                 FieldByName('versao_xml').AsString      := '3.10';
                 FieldByName('tipo_operacao').AsInteger  := 1;
                 FieldByName('situacao').AsInteger       := 5;
                 FieldByName('serie').AsInteger          := 1;
                 FieldByName('aamm').AsString            := uFuncoes.GetAnoMesData(Date());
                 // dmNFe.AbrirVolumesNota(iNumNota);
                 FieldByName('nome_computador_digitada').AsString := ufuncoes.Alltrim(Copy(uFuncoes.NomeMaquina(), 1, 40));
                 FieldByName('tipo_danfe').AsInteger := 1;
                 //
                 CarregarDadosEmitente(uFrmPlusPdvNfe.idEmpresa);
                 //
                 lblTotal.Caption := '0,00';
                 edtCFOP.Clear;
                 //
                 LimparCamposProduto;
                 // dmNFe.LimparListaVenda; to-do
                 //
                 fTOTAL_NFe := 0;
            End;
     End;
end;

function TFrmNotaFiscalEletronicaNovo.ImportarXML: boolean;
var
  i, j, k, n, idNatOpe, inNF, iCodigoTranspontadora, M_NRNOTA : Integer;
  NFeRTXT: TNFeRTXT;
  aOrigem, aProduto : String;
begin
   { TODO -oT2Ti -cEstoque : Como impedir que a mesma nota seja importada mais de uma vez? }
   { TODO -oT2Ti -cEstoque : Devemos permitir que o usu�rio altere dados da Nota importada? }

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

    // Verifica CNPJ do Emitente ae igual a da Empresa do usu�rio
    dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr( uFrmPlusPdvNfe. idEmpresa));
    if (dmDados.cdsEmpresa.IsEmpty) Then
     begin
          Raise Exception.Create('Erro ao tentar abrir dados da empresa!!!');
     End;

    if uFuncoes.Empty(dmDados.cdsEmpresacnpj.AsString) Then
     begin
          Raise Exception.Create('CNPJ da empresa est� vazio!!!');
     End;

         If (dmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF <> dmDados.cdsEmpresacnpj.AsString) then
         begin
              Raise Exception.Create('Arquivo XML n�o pertence a empresa: '+ dmDados.cdsEmpresarazao_social.AsString+'.'+#13+'Importa��o n�o realizada.');
         End;

    { TODO -oT2Ti -cEstoque : Esse la�o pega varias notas. Precisamos dele? }
    for n := 0 to dmNFe.ACBrNFe1.NotasFiscais.Count - 1 do
    begin
    
      With dmNFe.ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
        if (dmNFe.GetVerificarExisteNFe(Ide.nNF)) Then
        begin
             Application.MessageBox('NFe j� cadastrada.', 'Mensagem do Sistema', MB_OK + MB_ICONEXCLAMATION);
             Break;
        End;
        //
        inNF := Ide.nNF;
        M_NRNOTA :=  dmDados.GetIdAutomatico('nota_fiscal_id_seq');
        AddRegistroNFeImportada(M_NRNOTA, '');

        //
        dmDados.RefreshCDS( dmNFe.cdsListaDuplicatas );
        dmNFe.cdsListaDuplicatas.EmptyDataSet;
        dmDados.RefreshCDS( dmNFe.cdsListaVolumes );
        dmNFe.cdsListaVolumes.EmptyDataSet;

        dmDados.RefreshCDS( dmNFe.cdsListaNT_Ref );
        dmNFe.cdsListaNT_Ref.EmptyDataSet;

        LimparCamposProduto;
        dmNFe.LimparListaVenda;
        // dsCadastro.DataSet.FieldByName('id').AsInteger    := M_NRNOTA;
        //
        // dmNFe.cdsDuplicata.Close;
        // NFe Cabe�alho

        EditChaveAcesso.Text := procNFe.chNFe;
        dsCadastro.DataSet.FieldByName('modelo').AsString := IntToStr(Ide.Modelo);
        dsCadastro.DataSet.FieldByName('serie').AsString  := IntToStr(Ide.Serie);
        //dsCadastro.DataSet.FieldByName('numero_nota_fiscal').AsString := uFuncoes.StrZero(IntToStr(Ide.nNF),9);

        dsCadastro.DataSet.FieldByName('data_cadastro').AsDateTime  := Ide.dEmi;
        // dsCadastro.DataSet.FieldByName('aamm').AsString       := uFuncoes.GetAnoMesData(dsCadastro.DataSet.FieldByName('data_cadastro').AsDateTime);
        if not uFuncoes.Empty( uFuncoes.RemoveChar(DatetoStr(Ide.dSaiEnt))) Then
           dsCadastro.DataSet.FieldByName('data_saida_entrada').AsDateTime := Ide.dSaiEnt;
        //EditHoraEntradaSaida.Text := DateToStr(Ide.hSaiEnt);
        dsCadastro.DataSet.FieldByName('tipo_operacao').AsInteger  := StrToInt(tpNFToStr(Ide.tpNF));
        dsCadastro.DataSet.FieldByName('tipo_emis').AsInteger  := StrToInt(TpEmisToStr(Ide.tpEmis));
        dsCadastro.DataSet.FieldByName('finalidade').AsInteger   := StrToInt(FinNFeToStr(Ide.finNFe));
        {if not uFuncoes.Empty(TpImpToStr(Ide.tpImp)) Then
            dsCadastro.DataSet.FieldByName('tipo_danfe').AsInteger     := StrToInt(TpImpToStr(Ide.tpImp)) - 1
        Else}
        dsCadastro.DataSet.FieldByName('tipo_danfe').AsInteger     := 1;
        //
        if not uFuncoes.Empty(Ide.natOp) Then
        begin
             idNatOpe := dmNFe.GetCodNaturezaOperacao(Ide.natOp);
             if (idNatOpe > 0) Then
              begin
                 dsCadastro.DataSet.FieldByName('natureza_operacao').AsInteger := idNatOpe;
                 dsCadastro.DataSet.FieldByName('descricao_natureza_operacao').AsString := Ide.natOp;
              End
              Else
              begin
                   idNatOpe := 12;
                   dsCadastro.DataSet.FieldByName('natureza_operacao').AsInteger := idNatOpe;
                   dsCadastro.DataSet.FieldByName('descricao_natureza_operacao').AsString := dmDados.GetDescricaoNaturezaOperacao(idNatOpe);
              End;
        End
        Else
        begin
             idNatOpe := 12;
             dsCadastro.DataSet.FieldByName('natureza_operacao').AsInteger := idNatOpe;
             dsCadastro.DataSet.FieldByName('descricao_natureza_operacao').AsString := dmDados.GetDescricaoNaturezaOperacao(idNatOpe);
        End;
        {Else
        begin
             idNatOpe := dmNFe.AddNaturezaOperacao(Ide.natOp);
             dsCadastro.DataSet.FieldByName('NTF_NATUREZA').AsInteger  := idNatOpe;
        End;}
        //
        if not uFuncoes.Empty(IndpagToStr(Ide.indPag)) Then
          dsCadastro.DataSet.FieldByName('ind_pag').AsInteger := StrToInt(IndpagToStr(Ide.indPag));

        // Totais
        dsCadastro.DataSet.FieldByName('valor_bc_icms').AsFloat := Total.ICMSTot.vBC;
        dsCadastro.DataSet.FieldByName('valor_icms').AsFloat       := Total.ICMSTot.vICMS;
        dsCadastro.DataSet.FieldByName('valor_bc_icms').AsFloat := Total.ICMSTot.vBCST;
        dsCadastro.DataSet.FieldByName('valor_icms_st').AsFloat       := Total.ICMSTot.vST;
        dsCadastro.DataSet.FieldByName('valor_cofins').AsFloat := Total.ICMSTot.vCOFINS;
        dsCadastro.DataSet.FieldByName('valor_itens').AsFloat  := Total.ICMSTot.vProd;
        dsCadastro.DataSet.FieldByName('valor_frete').AsFloat   := Total.ICMSTot.vFrete;
        dsCadastro.DataSet.FieldByName('valor_seguro').AsFloat  := Total.ICMSTot.vSeg;
        dsCadastro.DataSet.FieldByName('valor_outras_despesas').AsFloat := Total.ICMSTot.vOutro;
        dsCadastro.DataSet.FieldByName('valor_pis').AsFloat      := Total.ICMSTot.vPIS;
        dsCadastro.DataSet.FieldByName('valor_desconto').AsFloat := Total.ICMSTot.vDesc;
        dsCadastro.DataSet.FieldByName('valor_ipi').AsFloat       := Total.ICMSTot.vIPI;
        dsCadastro.DataSet.FieldByName('valor_total_nota').AsFloat := Total.ICMSTot.vNF;

        // Notas Referenciadas
        { TODO -oT2Ti -cEstoque : No manual da NF-e encontramos o refere aos cupons fiscais sendo
          filho do grupo referente �s notas referenciadas, mas no banco de dados n�s vinculamos a
          tabela de cupons fiscais diretamente � tabela NFE_CABECALHO. Isso est� correto? }
        {FDataModule.CDSNFeReferenciada.EmptyDataSet;
        FDataModule.CDSNFeCupomFiscal.EmptyDataSet;
        for i := 0 to Ide.NFref.Count - 1 do
        begin
          if Ide.NFref.Items[i].refNFe <> '' then
          begin
            with FDataModule.CDSNFeReferenciada do
            begin
              Append;
              FieldByName('ID').AsInteger := 0;
              FieldByName('ID_NFE_CABECALHO').AsInteger := 0;
              FieldByName('CHAVE_ACESSO').AsString := procNFe.chNFe;
              FieldByName('CODIGO_UF').AsInteger := Ide.NFref.Items[i].RefNF.cUF;
              FieldByName('ANO_MES').AsString := Ide.NFref.Items[i].RefNF.AAMM;
              FieldByName('CNPJ').AsString := Ide.NFref.Items[i].RefNF.Cnpj;
              FieldByName('MODELO').AsInteger := Ide.NFref.Items[i].RefNF.Modelo;
              FieldByName('SERIE').AsInteger := Ide.NFref.Items[i].RefNF.Serie;
              FieldByName('NUMERO_NF').AsInteger := Ide.NFref.Items[i].RefNF.nNF;
              Post;
            end;
          end;

          // Cupom Fiscal
          if Ide.NFref.Items[i].RefECF.nCOO <> '' then
          begin
            with FDataModule.CDSNFeCupomFiscal do
            begin
              Append;
              FieldByName('ID').AsInteger := 0;
              FieldByName('ID_NFE_CABECALHO').AsInteger := 0;
              FieldByName('MODELO_DOCUMENTO_FISCAL').AsString := ECFModRefToStr(Ide.NFref.Items[i].RefECF.Modelo);
              FieldByName('NUMERO_ORDEM_ECF').AsInteger := StrToInt(Ide.NFref.Items[i].RefECF.nECF);
              FieldByName('COO').AsString := Ide.NFref.Items[i].RefECF.nCOO;
              Post;
            end;
          end;
        end;     }
        dmDados.RefreshCDS(dmNFe.cdsItemsNotaFiscal);
        dmNFe.cdsItemsNotaFiscal.EmptyDataSet;
        // NFe Detalhe
        for i := 0 to Det.Count - 1 do
        begin
          with Det.Items[i] do
          begin
            With dmNFe.cdsItemsNotaFiscal do
            begin
              Append;
              {FieldByName('ID').AsInteger := 0;
              FieldByName('ID_PRODUTO').AsInteger := 0;
              FieldByName('ID_NFE_CABECALHO').AsInteger := 0;}
              FieldByName('CDS_NRITEM').AsInteger := Prod.nItem;
              aProduto := uFuncoes.StrZero(Prod.cProd,9);
              If not (DMDados.ProcurarValorInt(aProduto, 'id', 'produtos')) Then
                   Application.MessageBox(PChar('C�digo de produto '+aProduto+' n�o cadastrado.'), 'Mensagem do Sistema', MB_OK + MB_ICONINFORMATION);
              FieldByName('CDS_CDPROD').AsString  := aProduto;
              if not uFuncoes.Empty(Prod.cEAN) Then
                  FieldByName('CDS_GTIN').AsString    := Prod.cEAN;
              FieldByName('CDS_DESCRICAO').AsString := Prod.xProd;
              FieldByName('CDS_NCM').AsString     := Prod.Ncm;
              if not uFuncoes.Empty(Prod.ExTipi) Then
                 FieldByName('CDS_EXTIPI').AsString  := Prod.ExTipi;
              FieldByName('CDS_CFOP').AsInteger   := StrToInt(Prod.Cfop);
              FieldByName('CDS_UNDCOM').AsString  := Prod.uCom;
              FieldByName('CDS_QTDECOM').Value    := Prod.qCom;
              FieldByName('CDS_VLUNITARIO').Value := Prod.vUnCom;
              // FieldByName('CDS_SUBTOTAL').AsExtended := Prod.vProd; calculado
              //FieldByName('GTIN_UNIDADE_TRIBUTAVEL').AsString := Prod.cEANTrib;
              FieldByName('CDS_UNTRIB').AsString  := Prod.uTrib;
              FieldByName('CDS_VLUNTRIB').Value   := Prod.qTrib;
              FieldByName('CDS_VLUNTRIB').Value   := Prod.vUnTrib;
              FieldByName('CDS_VLFRETE').Value    := Prod.vFrete;
              FieldByName('CDS_VLSEGURO').Value   := Prod.vSeg;
              FieldByName('CDS_VLDESCONTO').Value := Prod.vDesc;
              FieldByName('CDS_VLOUTRASDESPESAS').Value := Prod.vOutro;
              // FieldByName('ENTRA_TOTAL').AsString := indTotToStr(Prod.IndTot);
              // FieldByName('INFORMACOES_ADICIONAIS').AsString := infAdProd;

              { TODO -oT2Ti -cEstoque : Como podemos destacar na grid o produto que n�o existe na base? }
              { TODO -oT2Ti -cEstoque : O que vamos fazer caso o produto n�o exista na base? Cadastrar automaticamente? Como? }
              {if ConsultarProduto(FieldByName('GTIN').AsString) then
                FieldByName('EXISTENTE').AsString := 'S'
              else
                FieldByName('EXISTENTE').AsString := 'N';   }

              with Imposto do
              begin
                if ISSQN.cSitTrib = ISSQNcSitTribVazio then
                begin
                  with ICMS do
                  begin
                    aOrigem := OrigToStr(orig);
                    FieldByName('CDS_ORIGEM_PRODUTO').AsString := aOrigem;
                    if not uFuncoes.Empty(CSTICMSToStr(CST)) Then
                       FieldByName('CDS_CST').AsString   := CSTICMSToStr(CST);
                    if not uFuncoes.Empty(CSOSNIcmsToStr(CSOSN)) Then
                       FieldByName('CDS_CSOSN').AsString := CSOSNIcmsToStr(CSOSN);
                    //eldByName('ORIGEM_MERCADORIA').AsString := OrigToStr(orig);
                    FieldByName('CDS_MODALIDADE_BC_ICMS').AsString := modBCToStr(modBC);
                    FieldByName('CDS_TAXA_REDUCAO_BC_ICMS').Value  := pRedBC;
                    FieldByName('CDS_BCICMS').Value                := vBC;
                    FieldByName('CDS_ALIQICMS').Value              := pICMS;
                    FieldByName('CDS_VLICMS').Value                := vICMS;
                    FieldByName('CDS_IDMODA_CALC_ICMS_ST').AsString := modBCSTToStr(modBCST);
                    FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').Value := pMVAST;
                    FieldByName('CDS_PERC_REDUCAO_BC_ICMS_ST').Value   := pRedBCST;
                    FieldByName('CDS_BCICMS_ST').Value             := vBCST;
                    FieldByName('CDS_ALIQUOTA_ICMS_ST').Value      := pICMSST;
                    FieldByName('CDS_VLICMS_ST').Value             := vICMSST;
                    {FieldByName('VALOR_BC_ICMS_ST_RETIDO').Value   := vBCSTRet;
                    FieldByName('VALOR_ICMS_ST_RETIDO').Value := vICMSSTRet;}
                    FieldByName('CDS_ALIQUOTA_CREDITO_ICMS_SN').Value := pCredSN;
                    FieldByName('CDS_VALOR_CREDITO_ICMS_SN').Value := vCredICMSSN;
                  end;
                end
                else
                begin
                {  with ISSQN do
                  begin
                    FieldByName('BASE_CALCULO_ISSQN').AsExtended := vBC;
                    FieldByName('ALIQUOTA_ISSQN').AsExtended := vAliq;
                    FieldByName('VALOR_ISSQN').AsExtended := vISSQN;
                    FieldByName('MUNICIPIO_ISSQN').AsInteger := cMunFG;
                    FieldByName('ITEM_LISTA_SERVICOS').AsInteger := cListServ;
                  end;}
                end;

                if (IPI.vBC > 0) then
                begin
                  with IPI do
                  begin
                    {FieldByName('ENQUADRAMENTO_IPI').AsString := clEnq;
                    FieldByName('CNPJ_PRODUTOR').AsString := CNPJProd;
                    FieldByName('CODIGO_SELO_IPI').AsString := cSelo;
                    FieldByName('QUANTIDADE_SELO_IPI').AsInteger := qSelo;
                    FieldByName('ENQUADRAMENTO_LEGAL_IPI').AsString := cEnq; }
                    FieldByName('CDS_IPI_CST').AsString       := CSTIPIToStr(CST);
                    FieldByName('CDS_BC_IPI').Value       := vBC;
                    FieldByName('CDS_ALIQIPI').Value      := pIPI;
                    FieldByName('CDS_VLIPI').Value        := vIPI;
                  end;
                end
                Else
                begin
                     if not uFuncoes.Empty(CSTIPIToStr(IPI.CST)) Then
                         FieldByName('CDS_IPI_CST').AsString  := CSTIPIToStr(IPI.CST)
                     Else
                         FieldByName('CDS_IPI_CST').AsString  := '99';
                End;

                {if (II.vBC > 0) then
                begin
                  with II do
                  begin
                    FieldByName('VALOR_BC_II').AsExtended := vBC;
                    FieldByName('VALOR_DESPESAS_ADUANEIRAS').AsExtended := vDespAdu;
                    FieldByName('VALOR_IMPOSTO_IMPORTACAO').AsExtended := vII;
                    FieldByName('VALOR_IOF').AsExtended := vIOF;
                  end;
                end;}

                { TODO -oT2Ti -cEstoque : As informa��es referentes ao PIS abaixo est�o completas? }
                with PIS do
                begin
                  FieldByName('CDS_CST_PIS').AsString  := CSTPISToStr(CST);
                  FieldByName('CDS_BC_PIS').Value      := vBC;
                  FieldByName('CDS_ALIQ_PIS').Value    := pPIS;
                  FieldByName('CDS_VALOR_PIS').Value   := vPIS;
                end;

                { TODO -oT2Ti -cEstoque : Temos esses campos na base de dados (PISST)? }
                {if (PISST.vBC > 0) then
                begin
                  with PISST do
                  begin
                    //
                  end;
                end;   }

                { TODO -oT2Ti -cEstoque : As informa��es referentes ao COFINS abaixo est�o completas? }
                with COFINS do
                begin
                  FieldByName('CDS_CST_COFINS').AsString  := CSTCOFINSToStr(CST);
                  FieldByName('CDS_BC_COFINS').Value      := vBC;
                  FieldByName('CDS_ALIQ_COFINS').Value    := pCOFINS;
                  FieldByName('CDS_VALOR_COFINS').Value   := vCOFINS;
                end;

                { TODO -oT2Ti -cEstoque : Temos esses campos na base de dados (COFINSST)? }
                {if (COFINSST.vBC > 0) then
                begin
                  with COFINSST do
                  begin
                    //
                  end;
                end;}

                    // Detalhamento Espec�fico de Medicamento
                    // TODO -oT2Ti -cEstoque : Implementar Detalhamento Espec�fico de Medicamento. }
                    for j := 0 to Prod.med.Count - 1 do
                    begin
                      with Prod.med.Items[j] do
                      begin
                           //
                           if (Prod.med.Items[j].nLote <> 'GERAL') Then
                           begin
                                FieldByName('CDS_NRLOTE').AsString         := Prod.med.Items[j].nLote;
                                FieldByName('CDS_DTFABRICACAO').AsDateTime := Prod.med.Items[j].dFab;
                                FieldByName('CDS_DTVENCIMENTO').AsDateTime := Prod.med.Items[j].dVal;
                                If (Prod.med.Items[j].vPMC > 0) Then
                                    FieldByName('CDS_PRECO_MAX_CONSUMIDOR').AsFloat := Prod.med.Items[j].vPMC;
                           End;
                      end;
                    end;
              end;
              Post;
            end;

            // Detalhamento Espec�fico de Combust�veis
            { TODO -oT2Ti -cEstoque : Implementar Detalhamento Espec�fico de Combust�veis. }
            {if (Prod.comb.cProdANP > 0) then
            begin
              with Prod.comb do
              begin
                //
              end;
            end; }

          end;
        end;

        // Emitente
        // dsCadastro.DataSet.FieldByName('id_empresa').AsInteger      := 1;
        dsCadastro.DataSet.FieldByName('emitente_cnpj').AsString  := Emit.CNPJCPF;
        dsCadastro.DataSet.FieldByName('emitente_razao').AsString := Emit.xNome;
        if not uFuncoes.Empty(Emit.xFant) Then
           dsCadastro.DataSet.FieldByName('emitente_fantasia').AsString := Emit.xFant;
        if not uFuncoes.Empty(IntToStr(Emit.EnderEmit.Cep)) Then
          if (Emit.EnderEmit.Cep > 0) Then
              dsCadastro.DataSet.FieldByName('emitente_cep').AsString := IntToStr(Emit.EnderEmit.Cep);
        dsCadastro.DataSet.FieldByName('emitente_end_logradouro').AsString := Emit.EnderEmit.xLgr;
        dsCadastro.DataSet.FieldByName('emitente_end_numero').AsString     := Emit.EnderEmit.nro;
        dsCadastro.DataSet.FieldByName('emitente_end_complemento').AsString := Emit.EnderEmit.xCpl;
        dsCadastro.DataSet.FieldByName('emintente_end_bairro').AsString    := Emit.EnderEmit.xBairro;
        dsCadastro.DataSet.FieldByName('emitente_uf').AsString := dmNFe.GetCodigoUF( Emit.EnderEmit.Uf, dmNFe.cdsListaUfEmitente);
        dsCadastro.DataSet.FieldByName('emitente_municipio_ibge').AsString  := IntToStr(Emit.EnderEmit.cMun);
        dsCadastro.DataSet.FieldByName('emitente_nome_municipio').AsString := Emit.EnderEmit.xMun;
        //
        dsCadastro.DataSet.FieldByName('emitente_ie').AsString := Emit.Ie;
        dsCadastro.DataSet.FieldByName('emitente_telefone').AsString := Emit.EnderEmit.fone;
        //RadioGroupEmitenteCRT.ItemIndex := StrToInt(CRTToStr(Emit.Crt)) - 1;

        // Destinat�rio
        dsCadastro.DataSet.FieldByName('destinatario_cnpjcpf').AsString :=  Dest.CNPJCPF;
        dsCadastro.DataSet.FieldByName('destinatario_razaosocial').asString := Dest.xNome;
        //
        if (Length(uFuncoes.RemoveChar(dsCadastro.DataSet.FieldByName('destinatario_cnpjcpf').AsString)) = 11) Then
          begin
              cmbTipoPessoa.ItemIndex := 0;
              dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'F';
              dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '999.999.999-99;0;_';
          End
          Else
          Begin
              cmbTipoPessoa.ItemIndex := 1;
              dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'J';
              dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '99.999.999/9999-99;0;_';
          End;
          dsCadastro.DataSet.FieldByName('destinatario_logradouro').AsString  := Dest.EnderDest.xLgr;
          dsCadastro.DataSet.FieldByName('destinatario_end_numero').AsString := Dest.EnderDest.nro;
          //dsCadastro.DataSet.FieldByName('').AsString := Entrega.xCpl;
          if not uFuncoes.Empty(InttoStr(Dest.EnderDest.CEP)) and (Dest.EnderDest.CEP <> 0) Then
              dsCadastro.DataSet.FieldByName('destinatario_cep').AsString    := InttoStr(Dest.EnderDest.CEP);
          dsCadastro.DataSet.FieldByName('destinatario_end_bairro').AsString := Dest.EnderDest.xBairro;
          dsCadastro.DataSet.FieldByName('destinatario_uf').AsString := dmNFe.GetCodigoUF( Dest.EnderDest.Uf, dmNFe.cdsListaUFDestinatario);
          if not uFuncoes.Empty(Dest.EnderDest.Uf) Then
             dmNFe.AbrirListaCidadeUF(Dest.EnderDest.Uf, dmNFe.cdsListaCidades);
          dsCadastro.DataSet.FieldByName('destinatario_municipio_ibge').AsString := IntToStr(Dest.EnderDest.cMun);
          dsCadastro.DataSet.FieldByName('destinatario_nome_municipio').AsString := Dest.EnderDest.xMun;

          dsCadastro.DataSet.FieldByName('destinatario_email').AsString := Dest.Email;

        // Local Entrega
        if Entrega.CNPJCPF <> '' then
        begin
          dsCadastro.DataSet.FieldByName('emitente_retirada_cnpjcpf').AsString := Entrega.CNPJCPF;
          {if (Length(uFuncoes.RemoveChar(dsCadastro.DataSet.FieldByName('NTF_CNPJCPF').AsString)) = 11) Then
              cmbTipoPessoa.ItemIndex := 0
          Else
              cmbTipoPessoa.ItemIndex := 1;}
          dsCadastro.DataSet.FieldByName('destinatario_entrega_logradouro').AsString  := Entrega.xLgr;
          dsCadastro.DataSet.FieldByName('destinatario_entrega_numero').AsString := Entrega.nro;
          //dsCadastro.DataSet.FieldByName('').AsString := Entrega.xCpl;
          // dsCadastro.DataSet.FieldByName('NTF_DEST_CEP').AsString    := Entrega.
          dsCadastro.DataSet.FieldByName('destinatario_entrega_bairro').AsString := Entrega.xBairro;
          dsCadastro.DataSet.FieldByName('destinatario_entrega_munic_ibge').AsString := IntToStr(Entrega.cMun);
          dsCadastro.DataSet.FieldByName('destinatario_entrega_nome_munic').AsString := Entrega.xMun;
          dsCadastro.DataSet.FieldByName('destinatario_entrega_uf').AsString := dmNFe.GetCodigoUF(Entrega.Uf, dmNFe.cdsListaUFDestinatarioEnt);
          if not uFuncoes.Empty(Entrega.Uf) Then
              dmNFe.AbrirListaCidadeUF(Entrega.Uf, dmNFe.cdsEntregaCidade);
        end;

        // Local Retirada
        if Retirada.CNPJCPF <> '' then
        begin
          dsCadastro.DataSet.FieldByName('emitente_retirada_cnpjcpf').AsString     := Retirada.CNPJCPF;
          dsCadastro.DataSet.FieldByName('emitente_retirada_logradouro').AsString  := Retirada.xLgr;
          dsCadastro.DataSet.FieldByName('emitente_retirada_numero').AsString      := Retirada.nro;
          dsCadastro.DataSet.FieldByName('emitente_retirada_complemento').AsString := Retirada.xCpl;
          dsCadastro.DataSet.FieldByName('emitente_retirada_bairro').AsString      := Retirada.xBairro;
          dsCadastro.DataSet.FieldByName('emitente_retirada_municipio').AsString   := IntToStr(Retirada.cMun);
          dsCadastro.DataSet.FieldByName('emitente_retirada_nome_municipi').AsString := Retirada.xMun;
          dsCadastro.DataSet.FieldByName('emitente_retirada_uf').AsString          := dmNFe.GetCodigoUF(Retirada.Uf, dmNFe.cdsListaUFEmitenteRet);
          if not uFuncoes.Empty(Retirada.Uf) Then
             dmNFe.AbrirListaCidadeUF(Retirada.Uf, dmNFe.cdsRetiradaCidade);

        end;

        // Transporte
        // dsCadastro.DataSet.FieldByName('id_transportadora').AsString := '';
        {0- Por conta do emitente;                C
         1- Por conta do destinat�rio/remetente;  F
         2- Por conta de terceiros;               2
         9- Sem frete. (V2.0)                     9   }
        Case StrToInt(modFreteToStr(Transp.modFrete)) of
           0 : dsCadastro.DataSet.FieldByName('modalidade_frete').AsInteger := 0;
           1 : dsCadastro.DataSet.FieldByName('modalidade_frete').AsInteger := 1;
           2 : dsCadastro.DataSet.FieldByName('modalidade_frete').AsInteger := 2;
           9 : dsCadastro.DataSet.FieldByName('modalidade_frete').AsInteger := 9;
        End;
        //
        dsCadastro.DataSet.FieldByName('transporte_cnpjcpf').AsString := Transp.Transporta.CNPJCPF;
        dsCadastro.DataSet.FieldByName('transporte_razao').AsString   := Transp.Transporta.xNome;
        dsCadastro.DataSet.FieldByName('transporte_ie').AsString      := Transp.Transporta.Ie;
        dsCadastro.DataSet.FieldByName('transporte_endereco').AsString := Transp.Transporta.xEnder;
        dsCadastro.DataSet.FieldByName('transporte_nome_municipio').AsString := Transp.Transporta.xMun;
        dsCadastro.DataSet.FieldByName('transporte_uf').AsString      := dmNFe.GetCodigoUF(Transp.Transporta.Uf, dmNFe.cdsListaUFTransporte);
        if not uFuncoes.Empty(Transp.Transporta.Uf) Then
              dmNFe.AbrirListaCidadeUF(Transp.Transporta.Uf, dmNFe.cdsTransportadoraCidade);
        //
        if not uFuncoes.Empty(Transp.veicTransp.placa) Then
           dsCadastro.DataSet.FieldByName('transporte_veiculo_num_placa').AsString  := Transp.veicTransp.placa;
        if not uFuncoes.Empty(Transp.veicTransp.RNTC) Then
           dsCadastro.DataSet.FieldByName('transporte_veiculo_rntc').AsString   := Transp.veicTransp.RNTC;
        dsCadastro.DataSet.FieldByName('transporte_veiculo_uf').AsString     := dmNFe.GetCodigoUF(Transp.veicTransp.Uf,dmNFe.cdsListaUFVeiculo);

        {dsCadastro.DataSet.FieldByName('NTF_RETTRANSP_MUNFG').AsString   := IntToStr(Transp.retTransp.cMunFG);
        dsCadastro.DataSet.FieldByName('NTF_RETTRANSP_CFOP').AsString    := Transp.retTransp.Cfop;
        dsCadastro.DataSet.FieldByName('NTF_RETTRANSP_BCRET').AsFloat    := Transp.retTransp.vBCRet;
        dsCadastro.DataSet.FieldByName('NTF_RETTRANSP_ICMSRET').AsFloat  := Transp.retTransp.pICMSRet;
        dsCadastro.DataSet.FieldByName('NTF_RETTRANSP_VALOR_SERVICO').AsFloat := Transp.retTransp.vServ;
        dsCadastro.DataSet.FieldByName('NTF_RETTRANSP_ICMSRE').AsFloat   := Transp.retTransp.vICMSRet;}

        { TODO -oT2Ti -cEstoque : � poss�vel que exista mais de um reboque por transporte? Se sim, o que devemos fazer com nossa tabela no banco de dados? }
        for i := 0 to Transp.Reboque.Count - 1 do
        begin
          with Transp.Reboque.Items[i] do
          begin
             dsCadastro.DataSet.FieldByName('transporte_reboque_num_placa').AsString  := Transp.Reboque.Items[i].placa;
             dsCadastro.DataSet.FieldByName('transporte_reboque_rntc').AsString   := Transp.Reboque.Items[i].RNTC;
             dsCadastro.DataSet.FieldByName('transporte_reboque_uf').AsString     := dmNFe.GetCodigoUF(Transp.Reboque.Items[i].Uf, dmNFe.cdsListaUF_Reboque);
          end;
        end;
        //
        {With dmNFe.cdsVolumes do
        begin
             Close;
             Params[0].AsInteger :=  dsCadastro.DataSet.FieldByName('NTF_CODIGO').AsInteger;
             Open;
        End;}
        { TODO -oT2Ti -cEstoque : � poss�vel que exista mais de um volume por transporte? Se sim, o que devemos fazer com nossa tabela no banco de dados? }
        {for i := 0 to Transp.Vol.Count - 1 do
        begin
          with Transp.Vol.Items[i] do
          begin
            dmNFe.cdsVolumes.Append;
            dmNFe.cdsVolumesVOL_NUMERO.AsInteger     := dsCadastro.DataSet.FieldByName('NTF_CODIGO').AsInteger;
            dmNFe.cdsVolumesVOL_ITEM.AsInteger       := i+1;
            dmNFe.cdsVolumesVOL_QUANTIDADE.AsString  := IntToStr(qVol);
            dmNFe.cdsVolumesVOL_ESPECIE.AsString     := esp;
            dmNFe.cdsVolumesVOL_MARCA.AsString       := marca;
            dmNFe.cdsVolumesVOL_NUMERACAO.AsString   := nVol;
            dmNFe.cdsVolumesVOL_PESO_LIQUIDO.AsFloat := pesoL;
            dmNFe.cdsVolumesVOL_PESO_BRUTO.AsFloat   := pesoB;

            //
            dmNFe.cdsVolumes.Post;
          end;
        end;  }

        // Fatura
        {EditFaturaNumero.Text := Cobr.Fat.nFat;
        EditFaturaValorOriginal.AsFloat := Cobr.Fat.vOrig;
        EditFaturaValorDesconto.AsFloat := Cobr.Fat.vDesc;
        EditFaturaValorLiquido.AsFloat := Cobr.Fat.vLiq;  }
        // Duplicatas
        {If not (dmNFe.cdsDuplicata.Active) Then
         Begin
             dmNFe.AbrirTabelaCobranca(dsCadastro.DataSet.FieldByName('NTF_CODIGO').AsInteger);
             CalcularTotalDuplicata(dmNFe.cdsDuplicata);
         End;
        //
        for i := 0 to Cobr.Dup.Count - 1 do
        begin
          with Cobr.Dup.Items[i] do
          begin
            with dmNFe.cdsDuplicata do
            begin
              Append;
              FieldByName('NFD_NUMERO_NOTA').AsInteger := dsCadastro.DataSet.FieldByName('NTF_CODIGO').AsInteger;;
              FieldByName('NFD_NRITEM').AsInteger      := i+1;
              //FieldByName('ID_NFE_FATURA').AsInteger := 0;
              FieldByName('NFD_NRDUPLICATA').AsString := nDup;
              FieldByName('NFD_DATAVENCIMENTO').AsDateTime := dVenc;
              FieldByName('NFD_VALOR').AsFloat := vDup;
              Post;
            end;
          end;
        end;
        //
        CalcularTotalDuplicata(dmNFe.cdsDuplicata);   }
        //
        dsCadastro.DataSet.FieldByName('informacoes_adicionais_fisco').AsString    := InfAdic.infCpl;
        dsCadastro.DataSet.FieldByName('informacoes_adicionais_contribu').AsString := InfAdic.infAdFisco;
        //
        CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
        CalcularTotalNota;
        //
        result := true;
      end;
    end;
  end;
 Except
     on e: exception do
       begin
           Application.MessageBox(PChar('Erro na importa dados xml! Erro:'+#13
                      + E.Message), 'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
           result := False;
     End;
 End;
end;

procedure TFrmNotaFiscalEletronicaNovo.FormCreate(Sender: TObject);
begin
     //
     dmNFe.FormatarCamposCasasDecimais;
     //
     M_QTCASA := udmDados.iCasasDecimais;

     edtValorUnitario.DecimalPlaces := M_QTCASA;
     //
     Case M_QTCASA of
         1 :
            begin
                edtValorUnitario.DisplayFormat := ',0.0;';
                M_MASCARA_FORMATACAO := '#,###,##0.0';
            End;
         2 :
            begin
                 edtValorUnitario.DisplayFormat := ',0.00;';
                 M_MASCARA_FORMATACAO := '#,###,##0.#0';
            End;
         3 :
            begin
                 edtValorUnitario.DisplayFormat := ',0.000;';
                 M_MASCARA_FORMATACAO := '#,###,##0.#00';
            End;
         4 :
            begin
                 edtValorUnitario.DisplayFormat := ',0.0000;';
                 M_MASCARA_FORMATACAO := '#,###,##0.#000';
            End;
     end;
     //
     edtSubTotal.DisplayFormat      := '#,###,##0.#0';
end;

function TFrmNotaFiscalEletronicaNovo.TotalDesconto(
  aCDsItems: TClientDataSet): Double;
Var
  fValor : Double;
begin
     Result := 0 ;
     with aCDsItems do
     begin
          First;
          fValor := 0;
          While not (Eof) do
          begin
               fValor := fValor + FieldByName('CDS_VLDESCONTO').AsFloat;
               //
               Next;
          end;

          result := fValor;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnCupomFiscalClick(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           Application.CreateForm(TFrmCupomVinculado, FrmCupomVinculado);
           Try
               FrmCupomVinculado.Showmodal;
           Finally
               //
               FrmCupomVinculado.Free;
           End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeNumeroDestKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJTransporteExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dbeCNPJTransporte.Text) Then
       begin
            if (Length(uFuncoes.Alltrim(dbeCNPJTransporte.Text)) > 11) Then
            begin
               If not (uFuncoes.CGC(uFuncoes.Alltrim(dbeCNPJTransporte.Text))) Then
                Begin
                   MessageDlg('CNPJ inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeCNPJTransporte.Clear;
                   dbeCNPJTransporte.SetFocus;
                   Exit;
                End;
             End
             Else
             begin
               If not (uFuncoes.CPF(uFuncoes.Alltrim(dbeCNPJTransporte.Text))) Then
                Begin
                   MessageDlg('CPF inv�lido!!!', mtInformation, [mbOk], 0);
                   dbeCNPJTransporte.Clear;
                   dbeCNPJTransporte.SetFocus;
                   Exit;
                End;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.LimparCaracter;
begin
     if not uFuncoes.Empty(dbeRazaoDest.Text) Then
       dbeRazaoDest.Text := uFuncoes.TrocaCaracterEspecial(dbeRazaoDest.Text,true);

     if not uFuncoes.Empty(dbeLogradouroDest.Text) Then
        dbeLogradouroDest.Text := uFuncoes.TrocaCaracterEspecial(dbeLogradouroDest.Text,true);
     if not uFuncoes.Empty(dbeBairroDest.Text) Then
        dbeBairroDest.Text := uFuncoes.TrocaCaracterEspecial(dbeBairroDest.Text,true);

     if not uFuncoes.Empty(dbeRetiradaLogradouro.Text) Then
        dbeRetiradaLogradouro.Text := uFuncoes.TrocaCaracterEspecial(dbeRetiradaLogradouro.text,true);
     if not uFuncoes.Empty(dbeRetiradaComp.Text) Then
        dbeRetiradaComp.Text       := uFuncoes.TrocaCaracterEspecial(dbeRetiradaComp.text,true);
     if not uFuncoes.Empty(dbeRetiradaBairro.Text) Then
        dbeRetiradaBairro.Text     := uFuncoes.TrocaCaracterEspecial(dbeRetiradaBairro.text,true);

     if not uFuncoes.Empty(dbeEntregaLogradouro.Text) Then
         dbeEntregaLogradouro.Text := uFuncoes.TrocaCaracterEspecial(dbeEntregaLogradouro.Text, true);
     if not uFuncoes.Empty(dbeEntregaComp.Text) then
         dbeEntregaComp.Text       := uFuncoes.TrocaCaracterEspecial(dbeEntregaComp.Text, true);

     if not uFuncoes.Empty(dbeEntregaBairro.Text) Then
         dbeEntregaBairro.Text     := ufuncoes.TrocaCaracterEspecial(dbeEntregaBairro.Text, true);

end;

procedure TFrmNotaFiscalEletronicaNovo.dbeEmailDestExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
         and not uFuncoes.empty(dbeEmailDest.Text) Then
       begin
             if not uFuncoes.ValidarEMail(dbeEmailDest.Text) Then
              begin
                   Application.MessageBox(PChar('Email inv�lido.'),
                            'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                   dbeEmailDest.SetFocus;
                   Exit;
              End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbTipoOperacaoKeyPress(
  Sender: TObject; var Key: Char);
begin
    If (key = #13) and not uFuncoes.Empty(cmbTipoOperacao.Text) Then
      begin
           key  := #0;
           If (btnNovoItem.Enabled) Then
               btnNovoItem.SetFocus;
      End;

end;

procedure TFrmNotaFiscalEletronicaNovo.cmbDestinoOpeKeyPress(
  Sender: TObject; var Key: Char);
begin
     If (key = #13) and not uFuncoes.Empty(cmbDestinoOpe.Text) Then
      begin
           key  := #0;
           cmbTipoOperacao.SetFocus;
           {If (btnNovoItem.Enabled) Then
               btnNovoItem.SetFocus;}
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dsListaNotasReferenciadasDataChange(
  Sender: TObject; Field: TField);
begin
     btnNTR_Detalhar.Enabled := (dsListaNotasReferenciadas.DataSet.active) and (dsListaNotasReferenciadas.DataSet.recordcount > 0);
     btnNTR_Excluir.Enabled  := (dsListaNotasReferenciadas.DataSet.active) and (dsListaNotasReferenciadas.DataSet.recordcount > 0);
end;

procedure TFrmNotaFiscalEletronicaNovo.btnNTR_IncluirClick(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           Application.CreateForm(TFrmEditarNotaReferencia, FrmEditarNotaReferencia);
           Try
                uFrmEditarNotaRef.aOpcao := 'I';
                FrmEditarNotaReferencia.ShowModal;
           Finally
                FrmEditarNotaReferencia.Free;
           End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.btnNTR_DetalharClick(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           Application.CreateForm(TFrmEditarNotaReferencia, FrmEditarNotaReferencia);
           Try
                uFrmEditarNotaRef.aOpcao := 'A';
                FrmEditarNotaReferencia.ShowModal;
           Finally
                FrmEditarNotaReferencia.Free;
           End;
      End;

end;

procedure TFrmNotaFiscalEletronicaNovo.btnNTR_ExcluirClick(
  Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
        ExcluirItemNotaReferencia();
end;

procedure TFrmNotaFiscalEletronicaNovo.ExcluirItemNotaReferencia;
Var
   iItem : Integer;
begin
     if (dmNFe.cdsListaNT_Ref.Active) and (dmNFe.cdsListaNT_Ref.RecordCount > 0) Then
      begin
           iItem := 1;
           dmNFe.cdsListaNT_Ref.Delete;
           //
           With dmNFe.cdsListaNT_Ref do
           begin
                DisableControls;
                First;
                //
                While not (Eof) do
                begin
                     Edit;
                     FieldByName('CDR_ITEM').AsInteger := iItem;
                     iItem := iItem + 1;
                     //
                     Next;
                End;
                EnableControls;
           end;
      End;

end;

procedure TFrmNotaFiscalEletronicaNovo.dbeInscricaoEstadualKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.CarregarDadosEmitente(
  idEmpresa: Integer);
Var
   M_NMCIDA, aUF : String;
   idNFeEmpresa, idCodigoUF : Integer;
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           If not uFuncoes.Empty(dmNFe.cdsNotaFiscalid_empresa.AsString) Then
            begin
                 DMDados.FilterCDS(DMDados.cdsEmpresa, fsInteger, InttoStr(idEmpresa));
                 //
                 If not (DmDados.CdsEmpresa.IsEmpty) Then
                    begin
                       //
                       dmNFe.cdsNotaFiscalemitente_tipo_pessoa.AsString    := 'J';
                       dmNFe.cdsNotaFiscalemitente_cnpj.AsString           := dmDados.cdsEmpresacnpj.AsString;
                       dmNFe.cdsNotaFiscalemitente_razao.AsString          := dmDados.cdsEmpresarazao_social.AsString;
                       dmNFe.cdsNotaFiscalemitente_fantasia.AsString       := dmDados.cdsEmpresanome_fantasia.AsString;
                       dmNFe.cdsNotaFiscalemitente_ie.AsString             := dmDados.cdsEmpresainsc_estadual.AsString;
                       dmNFe.cdsNotaFiscalemitente_end_logradouro.AsString := dmDados.cdsEmpresalogradouro.AsString;
                       dmNFe.cdsNotaFiscalemitente_end_numero.AsInteger    := dmDados.cdsEmpresanumero.AsInteger;
                       //dmNFe.cdsNotaFiscalemitente_uf.AsString             := dmDados.GetUFCidade(dmDados.cdsEmpresaid_cidade.AsInteger);
                       aUF := dmDados.GetUFCidade(dmDados.cdsEmpresaid_cidade.AsInteger);
                       If (dmNFe.cdsListaUfEmitente.Locate('EUF_SIGLA', aUF,[])) Then
                       begin
                           idCodigoUF := dmNFe.cdsListaUfEmitenteEUF_CODIGO.AsInteger;
                           //dmNFe.cdsNotaFiscalUF_EMITENTE.AsString             := aUF;
                           dmNFe.cdsNotaFiscalemitente_uf.AsInteger := idCodigoUF;
                       End;
                       dmNFe.cdsNotaFiscalemitente_municipio_ibge.AsInteger := dmDados.GetCodigoIBEGCidade(dmDados.cdsEmpresaid_cidade.AsInteger);
                       dmNFe.cdsNotaFiscalemitente_nome_municipio.AsString := dmDados.GetNomeCidade(dmDados.cdsEmpresaid_cidade.AsInteger);
                       dmNFe.cdsNotaFiscalemintente_end_bairro.AsString    := dmDados.GetNomeBairro(dmDados.cdsEmpresaid_cidade.AsInteger, dmDados.cdsEmpresaid_bairro.AsInteger);
                       if not uFuncoes.Empty(dmDados.cdsEmpresacep.AsString) Then
                          dmNFe.cdsNotaFiscalemitente_cep.AsString         := dmDados.cdsEmpresacep.AsString
                       Else
                          dmNFe.cdsNotaFiscalemitente_cep.Clear;
                       dmNFe.cdsNotaFiscalemitente_telefone.AsString   := Dmdados.cdsEmpresafone.AsString;
                       //
                       if (dsCadastro.DataSet.State in [dsInsert]) Then
                        begin
                             {idNFeEmpresa := DMDados.GetMaxIdNFeEmpresa(dmNFe.cdsNotaFiscalid_empresa.AsInteger);
                             if (idNFeEmpresa <> 0) Then
                                  idNFeEmpresa := idNFeEmpresa + 1
                             Else}
                             idNFeEmpresa := dmDados.GetProximoNumeroNotaFiscal(dmNFe.cdsNotaFiscalid_empresa.AsInteger)+ 1;
                             //
                             dsCadastro.dataset.FieldByName('numero_nota_fiscal').AsString  := ufuncoes.Strzero(InttoStr(idNFeEmpresa),9);
                        End;
                       // dm.GetProximoIdNFeEmpresa(dmNFe.cdsNotaFiscalid_empresa.AsInteger)+1;
                    End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.FormatarCampoCPF_CNPJ;
begin
                If (cmbTipoPessoa.ItemIndex = 0) Then
                 begin
                     dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'F';
                     dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '999.999.999-99;0;_';
                 End
                Else
                 begin
                     dmNFe.cdsNotaFiscaldestinatario_tipopessoa.AsString := 'J';
                     dmNFe.cdsNotaFiscaldestinatario_cnpjcpf.EditMask := '99.999.999/9999-99;0;_';
                 End;
end;

procedure TFrmNotaFiscalEletronicaNovo.LimparCamposDestinatario;
begin
     dbeCNPJCPFDest.Clear;
     dbeRazaoDestinatario.clear;
     dbeRazaoDest.clear;
     dbeInscricaoEstadual.Clear;
     DBEdit21.Clear;
     //cmbUFIEDest.ItemIndex := -1;
     dbeEmailDest.Clear;
     dbeDestTelefone.Clear;
     dbeLogradouroDest.Clear;
     dbeNumeroDest.Clear;
     dbeBairroDest.Clear;
     edtCepDesc.clear;
     //
     dsCadastro.DataSet.FieldByName('emitente_retirada_municipio').Clear;
     dsCadastro.DataSet.FieldByName('emitente_retirada_nome_municipi').Clear;
     dsCadastro.DataSet.FieldByName('emitente_retirada_uf').Clear;
     //
     dsCadastro.DataSet.FieldByName('destinatario_entrega_munic_ibge').Clear;
     dsCadastro.DataSet.FieldByName('destinatario_entrega_nome_munic').Clear;
     dsCadastro.DataSet.FieldByName('destinatario_entrega_uf').Clear;
     //
     dsCadastro.DataSet.FieldByName('destinatario_uf').Clear;
     //cmbUFDest.ItemIndex := -1;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJCPFChange(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if uFuncoes.Empty(uFuncoes.RemoveChar( dbeCNPJCPF.Text)) then
            LimparCamposDestinatario;
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbUFDestExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(cmbUFDest.Text) then
            dmNFe.AbrirListaCidadeUF(cmbUFDest.Text, dmNFe.cdsListaCidades);
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbUFRetiratadaExit(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(cmbUFRetiratada.Text) then
            dmNFe.AbrirListaCidadeUF(cmbUFRetiratada.Text, dmNFe.cdsRetiradaCidade);
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbUFEntregaExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(cmbUFEntrega.Text) then
            dmNFe.AbrirListaCidadeUF(cmbUFEntrega.Text, dmNFe.cdsEntregaCidade);
end;

procedure TFrmNotaFiscalEletronicaNovo.cmbUFTranspExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(cmbUFTransp.Text) then
            dmNFe.AbrirListaCidadeUF(cmbUFTransp.Text, dmNFe.cdsTransportadoraCidade);
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeDestEnter(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         if uFuncoes.Empty(cmbUFDest.Text) then
          begin
               cmbUFDest.SetFocus;
               Exit;
          End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeRetiradaEnter(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         if uFuncoes.Empty(cmbUFRetiratada.Text) then
          begin
               cmbUFRetiratada.SetFocus;
               Exit;
          End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeEntregaEnter(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         if uFuncoes.Empty(cmbUFEntrega.Text) then
          begin
               cmbUFEntrega.SetFocus;
               Exit;
          End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeTransportadoraEnter(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
         if uFuncoes.Empty(cmbUFTransp.Text) then
          begin
               cmbUFTransp.SetFocus;
               Exit;
          End;
          //
          if uFuncoes.Empty(dbeCidadeTransportadora.Text) Then
          begin
               dmNFe.AbrirListaCidadeUF(cmbUFTransp.Text, dmNFe.cdsTransportadoraCidade);
          End;
      End;
end;


procedure TFrmNotaFiscalEletronicaNovo.LancarItem;
Var
    aUFEmitente, aUFDestinatario : String;
    bUFDiferente : Boolean;
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           aUFEmitente     := dsCadastro.DataSet.FieldByName('emitente_uf').AsString;
           aUFDestinatario := dsCadastro.DataSet.FieldByName('destinatario_uf').AsString;
           //
           bUFDiferente := false;
           If (aUFEmitente <> aUFDestinatario) Then
              bUFDiferente := True;
           //
           Application.CreateForm(TFrmCadItemNota, FrmCadItemNota);
           try
                 //uFrmEditarItemNota.iOpcaoPreco := DM.GetValorUnitarioProduto(cmbNatureza.Text);
                 Case rgTipo.ItemIndex of
                    0 : uFrmCadItemNota.aTipoOperacao := 'E';
                    1 : uFrmCadItemNota.aTipoOperacao := 'S';
                 End;
                 //
                 uFrmCadItemNota.aOpcaoIPIDevolvido := False;
                 If (dsCadastro.DataSet.FieldByName('finalidade').AsInteger = 4) Then
                     uFrmCadItemNota.aOpcaoIPIDevolvido := True;
                 //                     
                 uFrmCadItemNota.aCNPJCPFDestinatario := dbeCNPJCPF.Text;
                 uFrmCadItemNota.bUFDiferente := bUFDiferente;
                 uFrmCadItemNota.idNatureza   := dsCadastro.DataSet.fieldByName('natureza_operacao').AsInteger;
                 uFrmCadItemNota.aNatureza    := cmbNatureza.Text;
                 if not (dsItensNota.DataSet.IsEmpty) Then
                    uFrmCadItemNota.aCFOP     := dsItensNota.DataSet.FieldByName('CDS_CFOP').AsString;
                 //
                 uFrmCadItemNota.M_NRITEM := dmNFe.cdsItemsNotaFiscal.recordcount + 1;
                 //
                 uFrmCadItemNota.aUFEmitente := dsCadastro.DataSet.FieldByNAme('emitente_uf').AsString;
                 dmNFe.cdsItemsNotaFiscal.Append;
                 FrmCadItemNota.ShowModal;
           Finally
                 FrmCadItemNota.Free;
                 CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                 CalcularTotalNota;
                 BotoesItem;
                 LimparCampos;
                 edtCDPROD.Text := '';
                 //
                 If (btnNovoItem.Enabled) Then
                     btnNovoItem.SetFocus;
           End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.LancarItemEdit;
Var
    aUFEmitente, aUFDestinatario : String;
    bUFDiferente : Boolean;
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           aUFEmitente     := dsCadastro.DataSet.FieldByName('emitente_uf').AsString;
           aUFDestinatario := dsCadastro.DataSet.FieldByName('destinatario_uf').AsString;
           //
           bUFDiferente := false;
           If (aUFEmitente <> aUFDestinatario) Then
              bUFDiferente := True;
           //
           Application.CreateForm(TFrmCadItemNota, FrmCadItemNota);
           try
                 //uFrmCadItemNota.iOpcaoPreco  := DM.GetValorUnitarioProduto(cmbNatureza.Text);
                 Case rgTipo.ItemIndex of
                    0 : uFrmCadItemNota.aTipoOperacao := 'E';
                    1 : uFrmCadItemNota.aTipoOperacao := 'S';
                 End;
                 uFrmCadItemNota.aCNPJCPFDestinatario := dbeCNPJCPF.Text;
                 uFrmCadItemNota.bUFDiferente := bUFDiferente;
                 uFrmCadItemNota.idNatureza   := dsCadastro.DataSet.fieldByName('natureza_operacao').AsInteger;
                 uFrmCadItemNota.aNatureza    := cmbNatureza.Text;
                 //
                 uFrmCadItemNota.aUFEmitente := dsCadastro.DataSet.FieldByNAme('emitente_uf').AsString;
                 dmNFe.cdsItemsNotaFiscal.Edit;
                 //
                 FrmCadItemNota.ShowModal;
           Finally
                 FrmCadItemNota.Free;
                 //
                 CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                 CalcularTotalNota;
                 btnCancelarItemClick(Self);
                 BotoesItem;
                 LimparCampos;
                 edtCDPROD.Text := '';
                 //
                 If (btnNovoItem.Enabled) Then
                     btnNovoItem.SetFocus;
           End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeVeiculoPlacaExit(
  Sender: TObject);
Var
  aNumPlaca : String;
begin
       if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty( uFuncoes.RemoveChar(dbeVeiculoPlaca.Text)) Then
            begin
                aNumPlaca := uFuncoes.Alltrim(uFuncoes.DeleteChar('-', dbeVeiculoPlaca.Text));
                if (Length(aNumPlaca) < 7) Then
                 begin
                      dbeVeiculoPlaca.SetFocus;
                      raise Exception.Create('N�mero da placa � inv�lido!!!');
                 End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeRecoquePlacaExit(
  Sender: TObject);
Var
  aNumPlaca : String;
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(uFuncoes.RemoveChar(dbeRecoquePlaca.Text)) Then
            begin
                aNumPlaca := uFuncoes.Alltrim(uFuncoes.DeleteChar('-', dbeRecoquePlaca.Text));
                if (Length(aNumPlaca) < 7) Then
                 begin
                      dbeRecoquePlaca.SetFocus;
                      raise Exception.Create('N�mero da placa � inv�lido!!!');
                 End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCidadeEntregaExit(
  Sender: TObject);
begin
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
         {  if not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('EntregaNomeCidade').AsString) Then
                dmNFe.cdsNotaFiscaldestinatario_entrega_nome_munic.AsString := '1';}
      End;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeEntregaCNPJKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.dbeCNPJTransporteKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNovo.spDescValorClick(Sender: TObject);
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
          FSubtotal := edtQTDE.Value * edtValorUnitario.Value;
          uFrmDescontoValor.fValorTotal := FSubtotal;
          if (FrmDescontoValor.ShowModal = mrOk) Then
          begin
              if (uFrmDescontoValor.FResultado > 0) Then
                  edtDesconto.Value := uFrmDescontoValor.FResultado;
          End;
     Finally
          FrmDescontoValor.Free;
     End;
end;

procedure TFrmNotaFiscalEletronicaNovo.VerificarNatureza;
begin
     cmbNatureza.Visible := true;
     dbeDescricaoNaturezas.Visible := False;
     cmbTipoPessoa.Enabled := True;
     dbeCNPJCPF.Enabled    := True;
     spLocCliente.Enabled  := True;
     //
     if (cmbNatureza.Text <> dbeDescricaoNaturezas.Text) then
      begin
           cmbNatureza.Visible := False;
           dbeDescricaoNaturezas.Left := cmbNatureza.Left;
           dbeDescricaoNaturezas.Top  := cmbNatureza.Top;
           dbeDescricaoNaturezas.Visible := True;
           //
           cmbTipoPessoa.Enabled := False;
           dbeCNPJCPF.Enabled    := False;
           spLocCliente.Enabled  := False;
      End;
end;

end.
