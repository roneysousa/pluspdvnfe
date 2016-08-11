unit uFrmGerenciarNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, Grids, DBGrids,
  FMTBcd, DB, SqlExpr, DBClient, Provider, ComCtrls, OleCtrls, SHDocVw,
  pcnConversao, Menus, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppVar, xmldom, XMLIntf,
  msxmldom, XMLDoc, pcnAuxiliar, comOBJ, Mapi, OleServer, OutlookXP, DateUtils,
  ImgList, ACBrNFeDANFEClass, ACBrNFe, SHELLAPI,   //ACBrNFeDANFERave
  ppStrtch, ppSubRpt;

type
  TFrmGerenciarNotas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    Label2: TLabel;
    cmbTipo: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cmbSituacao: TComboBox;
    btnConsultar: TBitBtn;
    pnlGrid: TPanel;
    pnlBotoes: TPanel;
    Panel2: TPanel;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbPrimeiro: TSpeedButton;
    grdConsultar: TDBGrid;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsultar: TDataSource;
    btnFechar: TBitBtn;
    cdsConsultaCPF_CNPJ: TStringField;
    btnGerarEnviar: TBitBtn;
    OpenDialog1: TOpenDialog;
    btnStatusServico: TBitBtn;
    pnlStatus: TPanel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    btnEnviar: TBitBtn;
    btnImprimir: TBitBtn;
    btnConsulta: TBitBtn;
    btnCancelar: TBitBtn;
    btnInutilizar: TBitBtn;
    Label5: TLabel;
    edtCPFCNPJ: TEdit;
    Image1: TImage;
    lblAmbiente: TLabel;
    btnExcluir: TBitBtn;
    MainMenu1: TMainMenu;
    Consultas1: TMenuItem;
    Arquivo1: TMenuItem;
    mnuPDFItem: TMenuItem;
    mnuArquivoXMItem: TMenuItem;
    mnuChaveItem: TMenuItem;
    mnuNFeVendaItem: TMenuItem;
    N1: TMenuItem;
    mnuFecharItem: TMenuItem;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText9: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    txtPeriodo: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    ppDBCalc2: TppDBCalc;
    spLocCliente: TSpeedButton;
    edtDestinatario: TEdit;
    pnlMensagem: TPanel;
    XMLDocument1: TXMLDocument;
    TreeViewRetornoConsulta: TTreeView;
    btnCartaCorrecao: TBitBtn;
    Email1: TMenuItem;
    EnviarNFeXMLPDF1: TMenuItem;
    mnuRelatorio: TMenuItem;
    mnuListaItem: TMenuItem;
    mnuPorVendaItem: TMenuItem;
    dstListaNfeporVenda: TSQLDataSet;
    dspListaNfeporVenda: TDataSetProvider;
    cdsListaNfeporVenda: TClientDataSet;
    dsListaNfeVenda: TDataSource;
    ppReport2: TppReport;
    ppDBPListaNfeVenda: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel4: TppLabel;
    txtPeriodoEmissao: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine6: TppLine;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel27: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText20: TppDBText;
    txtNomeCliente: TppLabel;
    Label6: TLabel;
    edtNumeroNfe: TEdit;
    cdsConsultaIMPRIMIR: TBooleanField;
    ImageList1: TImageList;
    N2: TMenuItem;
    ImprimirNFeSelecionadas1: TMenuItem;
    mnuBackupXML1: TMenuItem;
    txtTotCancela: TppLabel;
    txtTotAuto: TppLabel;
    ppLabel31: TppLabel;
    lblTotAuto: TppLabel;
    Label7: TLabel;
    edtNumFinal: TEdit;
    cmbNatureza: TComboBox;
    Label8: TLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    dstListaNaturezas: TSQLDataSet;
    dspListaNaturezas: TDataSetProvider;
    cdsListaNaturezas: TClientDataSet;
    cdsListaNaturezasTOTAL: TFMTBCDField;
    ppDBPListaNaturezas: TppDBPipeline;
    dsListaNaturezas: TDataSource;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel14: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    Label9: TLabel;
    cdsConsultaNTF_NOME_NATUREZA: TStringField;
    ppDBText23: TppDBText;
    ppLabel30: TppLabel;
    edtNomeEmpresa: TEdit;
    dstConsultaid: TIntegerField;
    dstConsultadata_hora_emissao: TSQLTimeStampField;
    dstConsultaemitente_cnpj: TStringField;
    dstConsultaid_empresa: TIntegerField;
    dstConsultaid_cliente: TIntegerField;
    dstConsultaid_fornecedor: TIntegerField;
    dstConsultavalor_total_nota: TFMTBCDField;
    dstConsultavalor_itens: TFMTBCDField;
    dstConsultachave_acesso: TStringField;
    dstConsultanumero_protocolo: TStringField;
    dstConsultadestinatario_cnpjcpf: TStringField;
    dstConsultasituacao: TIntegerField;
    dstConsultadestinatario_email: TStringField;
    dstConsultanum_protocolo_cancelamento: TStringField;
    dstConsultajustificativa_cancelamento: TStringField;
    dstConsultadata_cancelamento: TSQLTimeStampField;
    dstConsultaid_usuario_cadastro: TIntegerField;
    dstConsultadata_cadastro: TSQLTimeStampField;
    dstConsultaid_usuario_alteracao: TIntegerField;
    dstConsultaid_usuario_enviou: TIntegerField;
    cdsConsultaid: TIntegerField;
    cdsConsultadata_hora_emissao: TSQLTimeStampField;
    cdsConsultaemitente_cnpj: TStringField;
    cdsConsultaid_empresa: TIntegerField;
    cdsConsultaid_cliente: TIntegerField;
    cdsConsultaid_fornecedor: TIntegerField;
    cdsConsultavalor_total_nota: TFMTBCDField;
    cdsConsultavalor_itens: TFMTBCDField;
    cdsConsultachave_acesso: TStringField;
    cdsConsultanumero_protocolo: TStringField;
    cdsConsultadestinatario_cnpjcpf: TStringField;
    cdsConsultasituacao: TIntegerField;
    cdsConsultadestinatario_email: TStringField;
    cdsConsultanum_protocolo_cancelamento: TStringField;
    cdsConsultajustificativa_cancelamento: TStringField;
    cdsConsultadata_cancelamento: TSQLTimeStampField;
    cdsConsultaid_usuario_cadastro: TIntegerField;
    cdsConsultadata_cadastro: TSQLTimeStampField;
    cdsConsultaid_usuario_alteracao: TIntegerField;
    cdsConsultaid_usuario_enviou: TIntegerField;
    cdsConsultaUSUARIO_INC: TStringField;
    cdsConsultaUSUARIO_ALT: TStringField;
    cdsConsultaUSUARIO_ENVIOU_NFE: TStringField;
    cdsConsultaSTN_DESCRICAO: TStringField;
    cdsConsultaFME_DESCRICAO: TStringField;
    dstConsultadestinatario_razaosocial: TStringField;
    dstConsultadestinatario_tipopessoa: TStringField;
    cdsConsultadestinatario_razaosocial: TStringField;
    cdsConsultadestinatario_tipopessoa: TStringField;
    dstConsultadata_protocolo: TSQLTimeStampField;
    cdsConsultadata_protocolo: TSQLTimeStampField;
    dstListaNfeporVendaid: TIntegerField;
    dstListaNfeporVendadata_hora_emissao: TSQLTimeStampField;
    dstListaNfeporVendaemitente_cnpj: TStringField;
    dstListaNfeporVendaid_empresa: TIntegerField;
    dstListaNfeporVendaid_cliente: TIntegerField;
    dstListaNfeporVendavalor_total_nota: TFMTBCDField;
    dstListaNfeporVendavalor_itens: TFMTBCDField;
    dstListaNfeporVendachave_acesso: TStringField;
    dstListaNfeporVendanumero_protocolo: TStringField;
    dstListaNfeporVendadestinatario_cnpjcpf: TStringField;
    dstListaNfeporVendasituacao_nfe: TIntegerField;
    dstListaNfeporVendaemitente_razao: TStringField;
    dstListaNfeporVendadestinatario_razaosocial: TStringField;
    dstListaNfeporVendadestinatario_tipopessoa: TStringField;
    dstListaNfeporVendadestinatario_email: TStringField;
    dstListaNfeporVendanum_protocolo_cancelamento: TStringField;
    dstListaNfeporVendajustificativa_cancelamento: TStringField;
    dstListaNfeporVendaid_usuario_cadastro: TIntegerField;
    dstListaNfeporVendadata_cadastro: TSQLTimeStampField;
    dstListaNfeporVendadata_alteracao: TSQLTimeStampField;
    dstListaNfeporVendaid_usuario_alteracao: TIntegerField;
    dstListaNfeporVendaid_usuario_enviou: TIntegerField;
    dstListaNfeporVendavenda: TIntegerField;
    dstListaNfeporVendanumero_nfe: TIntegerField;
    dstListaNfeporVendadata_venda: TSQLTimeStampField;
    dstListaNfeporVendaid_cliente_venda: TIntegerField;
    dstListaNfeporVendavalor_mercadorias: TFMTBCDField;
    dstListaNfeporVendasituacao_venda: TStringField;
    cdsListaNfeporVendaid: TIntegerField;
    cdsListaNfeporVendadata_hora_emissao: TSQLTimeStampField;
    cdsListaNfeporVendaemitente_cnpj: TStringField;
    cdsListaNfeporVendaid_empresa: TIntegerField;
    cdsListaNfeporVendaid_cliente: TIntegerField;
    cdsListaNfeporVendavalor_total_nota: TFMTBCDField;
    cdsListaNfeporVendavalor_itens: TFMTBCDField;
    cdsListaNfeporVendachave_acesso: TStringField;
    cdsListaNfeporVendanumero_protocolo: TStringField;
    cdsListaNfeporVendadestinatario_cnpjcpf: TStringField;
    cdsListaNfeporVendasituacao_nfe: TIntegerField;
    cdsListaNfeporVendaemitente_razao: TStringField;
    cdsListaNfeporVendadestinatario_razaosocial: TStringField;
    cdsListaNfeporVendadestinatario_tipopessoa: TStringField;
    cdsListaNfeporVendadestinatario_email: TStringField;
    cdsListaNfeporVendanum_protocolo_cancelamento: TStringField;
    cdsListaNfeporVendajustificativa_cancelamento: TStringField;
    cdsListaNfeporVendaid_usuario_cadastro: TIntegerField;
    cdsListaNfeporVendadata_cadastro: TSQLTimeStampField;
    cdsListaNfeporVendadata_alteracao: TSQLTimeStampField;
    cdsListaNfeporVendaid_usuario_alteracao: TIntegerField;
    cdsListaNfeporVendaid_usuario_enviou: TIntegerField;
    cdsListaNfeporVendavenda: TIntegerField;
    cdsListaNfeporVendanumero_nfe: TIntegerField;
    cdsListaNfeporVendadata_venda: TSQLTimeStampField;
    cdsListaNfeporVendaid_cliente_venda: TIntegerField;
    cdsListaNfeporVendavalor_mercadorias: TFMTBCDField;
    cdsListaNfeporVendasituacao_venda: TStringField;
    dstConsultanum_lote_evento: TIntegerField;
    cdsConsultanum_lote_evento: TIntegerField;
    ppImage1: TppImage;
    cdsListaNaturezasid: TIntegerField;
    cdsListaNaturezasdescricao: TStringField;
    cdsListaNaturezassituacao: TIntegerField;
    cdsListaNaturezasSTN_DESCRICAO: TStringField;
    ppImage2: TppImage;
    cdsListaNfeporVendasituacao_descricao: TStringField;
    dstConsultatipo_emis: TIntegerField;
    cdsConsultatipo_emis: TIntegerField;
    dstListaNfeporVendatipo_emis: TIntegerField;
    cdsListaNfeporVendatipo_emis: TIntegerField;
    dstConsultanatureza_operacao: TIntegerField;
    cdsConsultanatureza_operacao: TIntegerField;
    dstConsultanumero_nota_fiscal: TIntegerField;
    dstConsultaserie: TIntegerField;
    dstConsultaemitente_uf: TIntegerField;
    dstConsultadestinatario_uf: TIntegerField;
    cdsConsultanumero_nota_fiscal: TIntegerField;
    cdsConsultaserie: TIntegerField;
    cdsConsultaemitente_uf: TIntegerField;
    cdsConsultadestinatario_uf: TIntegerField;
    dstListaNfeporVendanumero_nota_fiscal: TIntegerField;
    dstListaNfeporVendaserie: TIntegerField;
    dstListaNfeporVendaemitente_uf: TIntegerField;
    dstListaNfeporVendadestinatario_uf: TIntegerField;
    cdsListaNfeporVendanumero_nota_fiscal: TIntegerField;
    cdsListaNfeporVendaserie: TIntegerField;
    cdsListaNfeporVendaemitente_uf: TIntegerField;
    cdsListaNfeporVendadestinatario_uf: TIntegerField;
    cdsConsultaUF_EMITENTE: TStringField;
    cdsConsultaUF_DESTINATARIO: TStringField;
    dstConsultadescricao_natureza_operacao: TStringField;
    cdsConsultadescricao_natureza_operacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure btnGerarXMLClick(Sender: TObject);
    procedure btnGerarEnviarClick(Sender: TObject);
    procedure btnStatusServicoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure cmbSituacaoClick(Sender: TObject);
    procedure cmbTipoClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure edtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
    procedure mnuArquivoXMItemClick(Sender: TObject);
    procedure mnuPDFItemClick(Sender: TObject);
    procedure mnuChaveItemClick(Sender: TObject);
    procedure mnuFecharItemClick(Sender: TObject);
    procedure mnuNFeVendaItemClick(Sender: TObject);
    procedure cmbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbSituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFCNPJChange(Sender: TObject);
    procedure spLocClienteClick(Sender: TObject);
    procedure edtCPFCNPJExit(Sender: TObject);
    procedure btnCartaCorrecaoClick(Sender: TObject);
    procedure EnviarNFeXMLPDF1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuListaItemClick(Sender: TObject);
    procedure mnuPorVendaItemClick(Sender: TObject);
    procedure edtNumeroNfeExit(Sender: TObject);
    procedure edtNumeroNfeEnter(Sender: TObject);
    procedure edtNumeroNfeKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTINICEnter(Sender: TObject);
    procedure edtDTFINAEnter(Sender: TObject);
    procedure grdConsultarDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdConsultarCellClick(Column: TColumn);
    procedure grdConsultarColEnter(Sender: TObject);
    procedure ImprimirNFeSelecionadas1Click(Sender: TObject);
    procedure mnuBackupXML1Click(Sender: TObject);
    procedure edtNumFinalEnter(Sender: TObject);
    procedure edtNumFinalExit(Sender: TObject);
    procedure edtNumFinalKeyPress(Sender: TObject; var Key: Char);
    procedure cdsListaNaturezasCalcFields(DataSet: TDataSet);
    procedure cdsListaNfeporVendaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CarregaTipos(cmbTipos : TComboBox);
    procedure CarregaSituacao(cmbSituacao : TComboBox);
    Function Consultar() : Boolean;
    Procedure DesabilitarBotoes;
    procedure MostraStatus();
    procedure LoadConsulta201(XML: string);
    Function GeraPDF(iNota : Integer): String;
    Procedure Enviar_Email_PDF_XML(iNota : Integer; aNomeArquivo : String);
    Procedure Enviar_Email_PDF(aNomePasta : String; aCdsListaArquivos : TClientDataSet);
    Procedure VisualizacaoNFe();
    Procedure ConsultaNFeporCliente(aDataIni, aDataFin : TDatetime; aCPFCNPJ : String);
    Procedure ImprimirNFe();
    //Procedure PathACBrNFeDANFERave();
    procedure NewZapFiles(StDelDir: boolean; Caminho: string);
    function KillTask(ExeFileName: string): Integer;
    Function BackupXML():Boolean;
    Procedure CarregaNatureza();
    Procedure AddEmailLista(aArquivo : String);
    procedure ExcluirArquivoLista;
    procedure ApagarArquivoPDF;

  public
    { Public declarations }
  end;

var
  FrmGerenciarNotas: TFrmGerenciarNotas;
  NomeDoLista : String;
  bFluxoArquivo : Boolean;

implementation

uses UdmDados, udmNFe, uFuncoes, uFrmInutilizarNum,
   uFrmNFENew,  ACBrNFeWebServices, uFrmLocalizaCliente,
  uFrmCartaCorrecao, Tlhelp32, uFrmPlusPdvNfe, uNewEnviarEmail;
  //uNewEnviarEmail;
  // uFrmConsVendasNfe,

{$R *.dfm}

{ TFrmGerenciarNotas }

procedure TFrmGerenciarNotas.CarregaSituacao(cmbSituacao: TComboBox);
begin
     //dmDados.RefreshCDS(dmNFe.cdsListaSituacao);
     dmNFe.CarregarListaSituacaoNFe();
     //
     With dmNFe.cdsListaSituacao do
      begin
         First;
         cmbSituacao.Clear;
         cmbSituacao.Items.Add('TODOS');
         while not (Eof) do
          begin
               cmbSituacao.Items.Add(FieldByName('descricao').AsString);
               //
               Next;
          End;
      End;
      dmNFe.cdsListaSituacao.close;
      cmbSituacao.ItemIndex := 0;
end;

procedure TFrmGerenciarNotas.CarregaTipos(cmbTipos: TComboBox);
begin
     //dmDados.RefreshCDS(dmNFe.cdsListaFormaEmissao);
     dmNFe.CarregarListaFormaEmissao;
     //
     With dmNFe.cdsListaFormaEmissao do
      begin
         First;
         cmbTipos.Clear;
         cmbTipos.Items.Add('');
         while not (Eof) do
          begin
               cmbTipos.Items.Add(FieldByName('FRM_DESCRICAO').AsString);
               //
               Next;
          End;
      End;
end;

procedure TFrmGerenciarNotas.FormShow(Sender: TObject);
Var
    Dir : String;
begin
    cdsConsulta.close;
    cdsListaNfeporVenda.Close;
    //
    Dir := ExtractFilePath( Application.ExeName )+'XML';
    //
    if not DirectoryExists(Dir) then
       ForceDirectories(Dir);
    //
    DMDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
    edtNomeEmpresa.Text   := dmDados.cdsEmpresarazao_social.AsString;
    //
    dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := dmDados.cdsEmpresacertificado_numero_serie.AsString;
    If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
        dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
    If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
        dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;
    //
    If (dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente = taHomologacao) Then
        lblAmbiente.Caption := 'HOMOLOGAÇÃO'
    Else
        lblAmbiente.Caption := 'PRODUÇÃO';
    //
    CarregaTipos(cmbTipo);
    CarregaSituacao(cmbSituacao);
    CarregaNatureza;
    //
    DesabilitarBotoes;
    pnlStatus.Visible := False;
    //
    edtDTINIC.Date := Date;
    edtDTFINA.Date := edtDTINIC.Date;
    //
    pnlMensagem.Caption := '';
    mnuPDFItem.Enabled := false;
end;

function TFrmGerenciarNotas.Consultar: Boolean;
Var
  M_TEXTO : String;
  M_DTINIC, M_DTFINA : TDate;
  M_CDTIPO, M_CDSITU, M_CDNATU, aCNPJEmitente : String;
  iNumero, iNumeroFinal, idLoja : Integer;
begin
     Result  := False;
     //
     idLoja := uFrmPlusPdvNfe.idEmpresa;
     aCNPJEmitente := dmDados.GetCNPJEmpresa(idLoja);
     If uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
        M_DTINIC := StrtoDate('01/01/2000')
     Else
        M_DTINIC := edtDTINIC.Date;
     //
     If uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
        M_DTFINA := Date()
     Else
        M_DTFINA := edtDTFINA.Date;
     //
     M_TEXTO := 'Select  nf.id, nf.numero_nota_fiscal, nf.serie, nf.data_hora_emissao, nf.emitente_cnpj, ';
     M_TEXTO := M_TEXTO +' nf.id_empresa, nf.id_cliente, nf.id_fornecedor, nf.tipo_emis, nf.natureza_operacao, nf.descricao_natureza_operacao, ';
     M_TEXTO := M_TEXTO +' nf.valor_total_nota, nf.valor_itens, nf.chave_acesso, nf.numero_protocolo, nf.data_protocolo, nf.emitente_uf, ';
     M_TEXTO := M_TEXTO +' nf.destinatario_cnpjcpf, nf.situacao, nf.destinatario_razaosocial, nf.destinatario_tipopessoa, ';
     M_TEXTO := M_TEXTO +' nf.destinatario_uf, nf.destinatario_email, nf.num_protocolo_cancelamento, nf.justificativa_cancelamento, nf.data_cancelamento, ';
     M_TEXTO := M_TEXTO +' nf.id_usuario_cadastro, nf.data_cadastro, nf.id_usuario_alteracao, nf.id_usuario_enviou, num_lote_evento ';
     M_TEXTO := M_TEXTO +' from nota_fiscal nf ';
     M_TEXTO := M_TEXTO +' inner join empresas e on nf.id_empresa = e.id ';
     M_TEXTO := M_TEXTO +' Where (nf.id_empresa = '+QuotedStr(InttoStr(idLoja))+') ';
     M_TEXTO := M_TEXTO +' and (nf.data_hora_emissao >= :pDTINIC) and (nf.data_hora_emissao <= :pDTFINA) and (modelo = 8) ';  // Alteração de do modelo de 55 (Nfe) para 8 (Infog2 SG)
     M_TEXTO := M_TEXTO +' and (nf.emitente_cnpj = '+QuotedStr(aCNPJEmitente) +')';
     //
     If not uFuncoes.Empty(cmbTipo.Text) Then
      begin
           M_CDTIPO := InttoStr(DmNFe.GetCodigoFormaEmissao(cmbTipo.Text));
           M_TEXTO := M_TEXTO +' and (nf.tipo_emis = '+QuotedStr(M_CDTIPO)+') ';
      End;
     //
     //If not uFuncoes.Empty(cmbSituacao.Text) Then
     If (cmbSituacao.Text <> 'TODOS') Then
      begin
           M_CDSITU := InttoStr(DmNFe.GetCodigoSituacaoNota(cmbSituacao.Text));
           M_TEXTO := M_TEXTO +' and (NF.situacao = '+QuotedStr(M_CDSITU)+') ';
      End
      Else
           M_TEXTO := M_TEXTO +' and (NF.situacao <> '+QuotedStr('99')+') ';
     If not uFuncoes.Empty(edtCPFCNPJ.Text) Then
        M_TEXTO := M_TEXTO + ' and (NF.destinatario_cnpjcpf = '+QuotedStr(edtCPFCNPJ.Text)+')' ;
     //
     if not uFuncoes.Empty(edtNumeroNfe.Text) Then
     begin
          iNumero := StrtoInt(edtNumeroNfe.Text);
          M_TEXTO := M_TEXTO + ' and (NF.numero_nota_fiscal >= '+QuotedStr(uFuncoes.StrZero( InttoStr(iNumero),9))+')' ;
 
     End;
     //
     if not uFuncoes.Empty(edtNumFinal.Text) Then
     begin
          iNumeroFinal := StrtoInt(edtNumFinal.Text);
          M_TEXTO := M_TEXTO + ' and (NF.numero_nota_fiscal <= '+QuotedStr(uFuncoes.StrZero(InttoStr(iNumeroFinal),9))+')' ;
     End;
     //
     if not uFuncoes.Empty(cmbNatureza.Text) Then
     begin
          M_CDNATU := InttoStr(DMNFe.GetCodNaturezaOperacao(cmbNatureza.Text));
          M_TEXTO  := M_TEXTO + ' and (NF.natureza_operacao = '+QuotedStr(M_CDNATU)+') ';
     End;
      //
     M_TEXTO := M_TEXTO +'order by NF.id, NF.numero_nota_fiscal ';
     //
     With cdsConsulta do
      begin
           DisableControls;
           Close;
           CommandText := M_TEXTO;
           Params.ParamByName('pDTINIC').AsDateTime := M_DTINIC;
           Params.ParamByName('pDTFINA').AsDateTime := M_DTFINA;
           //FetchParams;
           Open;
           //
           If not (IsEmpty) Then
             Result := True;
           //
           EnableControls;
      End;
end;

procedure TFrmGerenciarNotas.btnConsultarClick(Sender: TObject);
begin
     //
     pnlStatus.Visible := False;
     btnConsultar.Enabled := False;
     Try
        Consultar();
     Finally
        btnConsultar.Enabled := True;
     End;
     Application.ProcessMessages;
end;

procedure TFrmGerenciarNotas.btnFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TFrmGerenciarNotas.cdsConsultaCalcFields(DataSet: TDataSet);
begin
     if not uFuncoes.Empty(cdsConsultadestinatario_cnpjcpf.AsString) Then
       If (cdsConsultadestinatario_tipopessoa.AsString = 'J') Then
          cdsConsultaCPF_CNPJ.AsString := uFuncoes.FormataCNPJ(cdsConsultadestinatario_cnpjcpf.AsString)
       Else
          cdsConsultaCPF_CNPJ.AsString := uFuncoes.FormataCPF(cdsConsultadestinatario_cnpjcpf.AsString);
     //
     If (cdsConsulta.State = dsInternalCalc) Then
     begin
          IF not ufuncoes.Empty(cdsConsultaemitente_uf.AsString) then
             cdsConsultaUF_EMITENTE.AsString := dmNFe.GetUf(cdsConsultaemitente_uf.asString, dmNFe.cdsListaUfEmitente);
          If not ufuncoes.Empty(cdsConsultadestinatario_uf.asstring) Then
             cdsConsultaUF_DESTINATARIO.AsString := dmNFe.GetUf(cdsConsultadestinatario_uf.asString, dmNFe.cdsListaUFDestinatario);


          if not uFuncoes.Empty(cdsConsultaid_usuario_cadastro.AsString) Then
             cdsConsultaUSUARIO_INC.AsString := dmDados.GetNomeUsuario(cdsConsultaid_usuario_cadastro.AsInteger);
          if not uFuncoes.Empty(cdsConsultaid_usuario_alteracao.AsString) Then
             cdsConsultaUSUARIO_ALT.AsString := dmDados.GetNomeUsuario(cdsConsultaid_usuario_alteracao.AsInteger);
          if not uFuncoes.Empty(cdsConsultaid_usuario_enviou.AsString) Then
             cdsConsultaUSUARIO_ENVIOU_NFE.AsString := dmDados.GetNomeUsuario(cdsConsultaid_usuario_enviou.AsInteger);
          // Natureza
          If not uFuncoes.Empty(cdsConsultanatureza_operacao.AsString) Then
              cdsConsulta.fieldByName('NTF_NOME_NATUREZA').asString := dmDados.GetDescricaoNaturezaOperacao(cdsConsultanatureza_operacao.AsInteger);
          // Situação  NF-e
          if not uFuncoes.Empty(cdsConsultasituacao.AsString) Then
               cdsConsultaSTN_DESCRICAO.AsString := dmNFe.GetDescricaoSituacaoNFe(cdsConsultasituacao.asInteger);
          //  Tipo NF-e
          if not uFuncoes.Empty(cdsConsultatipo_emis.AsString) Then
               cdsConsultaFME_DESCRICAO.AsString := dmNFe.GetDescricaoFormaEmissao(cdsConsultatipo_emis.AsInteger);

     End;
end;

procedure TFrmGerenciarNotas.edtDTINICExit(Sender: TObject);
begin
     if not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.text)) Then
       try
            edtDTINIC.Date := StrtoDate(edtDTINIC.text);
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inválida!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  edtDTINIC.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmGerenciarNotas.edtDTFINAExit(Sender: TObject);
begin
     if not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.text)) Then
       try
            edtDTFINA.Date := StrtoDate(edtDTFINA.text);
            //
            If (edtDTFINA.Date < edtDTINIC.Date) then
              begin
                  Application.MessageBox('Data final deve ser maior que a inicial!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  edtDTFINA.Date := date();   
                  edtDTFINA.SetFocus;
                  Exit;
              End;
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inválida!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  edtDTFINA.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmGerenciarNotas.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
  sbPrimeiro.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Bof);
  sbAnterior.Enabled := sbPrimeiro.Enabled;
  sbUltimo.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Eof);
  sbProximo.Enabled := sbUltimo.Enabled;
  //
  If not (dsConsultar.DataSet.IsEmpty) Then
  begin
       btnGerarEnviar.Enabled := (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 5) or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 6);
       btnExcluir.Enabled     := (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 5);
       btnCartaCorrecao.Enabled := (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 2);
       btnImprimir.Enabled    := (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 2) or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 3) or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 5);
       mnuPDFItem.Enabled     := (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 2);
       btnConsulta.Enabled    := (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 2)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 3)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 4)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 5)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 6)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 7)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 8)
                              or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 10);
       btnCancelar.Enabled    :=  (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 2);
  End
  Else
       DesabilitarBotoes;
  //
  pnlMensagem.Caption := 'Registro(s) : '+InttoStr(dsConsultar.DataSet.RecNo)+
                            '/'+InttoStr(dsConsultar.DataSet.RecordCount);
end;

procedure TFrmGerenciarNotas.sbPrimeiroClick(Sender: TObject);
begin
     If (cdsConsulta.Active) then
        dsConsultar.DataSet.First;
end;

procedure TFrmGerenciarNotas.sbAnteriorClick(Sender: TObject);
begin
     If (cdsConsulta.Active) then
        dsConsultar.DataSet.Prior;
end;

procedure TFrmGerenciarNotas.sbProximoClick(Sender: TObject);
begin
     If (cdsConsulta.Active) then
        dsConsultar.DataSet.Next;
end;

procedure TFrmGerenciarNotas.sbUltimoClick(Sender: TObject);
begin
     If (cdsConsulta.Active) then
        dsConsultar.DataSet.Last;
end;

procedure TFrmGerenciarNotas.btnGerarXMLClick(Sender: TObject);
begin
    { if not (cdsConsulta.IsEmpty) Then
       if dmNFe.GerarXMLManual(cdsConsultaNTF_CODIGO.AsInteger, 1, 1) Then
          Application.MessageBox(PChar('Arquivo gerado com sucesso.'),
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);}
end;

procedure TFrmGerenciarNotas.btnGerarEnviarClick(Sender: TObject);
Var
  iNotaFiscal, iUsuario : Integer;
  aArquivo, aChave : String;
begin
     iNotaFiscal := cdsConsultaid.AsInteger;
     //
     DMDados.FilterCDS(DMDados.cdsEmpresa, fsInteger, cdsConsultaid_empresa.AsString);
     //
     if not (cdsConsulta.IsEmpty) Then
      begin
           {If (DMDados.cdsEmpresaambiente_nfe.AsInteger = 1) and
              not (dmNFe.GetVerificaExisteClienteNFe(iNotaFiscal)) Then
            begin
                 Application.MessageBox(PChar('NF-e sem Destinatário/Remetente cadastrado!!!'+#13+
                     'Edite a NF-e, e cadastre o Destinatário/Remetente da nota.'),
                     'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 Exit;
            End;}
          //
        pnlBotoes.Enabled := false;
        try
          MostraStatus;
          // dmNFe.PathACBrNFeDANFERave();
          dmNFe.LimparChaveNotaFiscal(iNotaFiscal);
          //
          iUsuario := uFrmPlusPdvNfe.idUsuario;
          //
          if dmNFe.GerarXMLNFe(iNotaFiscal, 'N', iUsuario) Then
           begin
                 MemoResp.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.Retorno.RetWS);
                 dmNFe.LoadXML(MemoResp, WBResposta);
                 dmNFe.ACBrNFe1.DANFE.ProtocoloNFe := dmNFe.GetProtocoloNota(iNotaFiscal);
                 //
               Try
                 if dmNFe.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
                   begin
                        // Autorizado
                        if (dmNFe.ACBrNFe1.WebServices.Retorno.cStat = 100) Then
                         begin
                           dmNFe.SetStatusNotaFiscal(iNotaFiscal, 2);
                           // iNotaFiscal, iSituacao: Integer; anRec, aProtocolo : String
                           dmNFe.SetAtualizarRegistroNotaFiscal(iNotaFiscal, 2,
                               dmNFe.ACBrNFe1.WebServices.Retorno.Recibo, dmNFe.ACBrNFe1.WebServices.Retorno.Protocolo);
                           //
                           aChave := dmNFe.ACBrNFe1.WebServices.Retorno.ChaveNFe;
                           aArquivo := ExtractFilePath( Application.ExeName )+'XML\'+ aChave +'-NFe.XML';
                           if FileExists(aArquivo) Then  // se arquivo existe. grava
                               dmNFe.InserirXMLdaNFe(iNotaFiscal, aArquivo);
                           //
                           Application.MessageBox(PChar('Nota Fiscal enviada com sucesso.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         End;
                         //  Lote processado
                         if (dmNFe.ACBrNFe1.WebServices.Retorno.cStat = 103) Then
                            Application.MessageBox(PChar('Lote recebido com sucesso.'),
                                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                        // Lote processado
                        if (dmNFe.ACBrNFe1.WebServices.Retorno.cStat = 104) Then
                         begin
                              dmNFe.SetStatusNotaFiscal(iNotaFiscal, 6);
                              Application.MessageBox(PChar('Lote processado.'),
                                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         End;
                         //
                         if (dmNFe.ACBrNFe1.WebServices.Retorno.cStat = 105) Then
                        begin
                            dmNFe.SetStatusNotaFiscal(iNotaFiscal, 6);
                            Application.MessageBox(PChar('Lote em processamento.'),
                                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                        End;
                        // Denegado
                        if (dmNFe.ACBrNFe1.WebServices.Retorno.cStat = 110) Then
                           dmNFe.SetStatusNotaFiscal(iNotaFiscal, 4);
                        //
                        Application.MessageBox(PChar('Nota Fiscal enviada com sucesso.'),
                           'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   End
                   Else
                       dmNFe.SetStatusNotaFiscal(iNotaFiscal, 5);
                   //
                   // dmNFe.ACBrNFe1.NotasFiscais.Clear;
                   btnConsultarClick(Sender);
                   //
                   if not (dsConsultar.DataSet.IsEmpty) Then
                     dsConsultar.DataSet.Locate('id', iNotaFiscal, []);
                   //
              Except
                  {  btnConsultarClick(Sender);
                    //
                    if not (dsConsultar.DataSet.IsEmpty) Then
                       dsConsultar.DataSet.Locate('id', iNotaFiscal, []);}
              End;
           End;
        Finally
             pnlBotoes.Enabled := true;
             btnConsultarClick(Sender);
             //
             if not (dsConsultar.DataSet.IsEmpty) Then
                dsConsultar.DataSet.Locate('id', iNotaFiscal, []);
        End;
      End;
end;

procedure TFrmGerenciarNotas.btnStatusServicoClick(Sender: TObject);
Var
   aUF : String;
begin
     pnlStatus.Visible := true;
     //
     DMDados.RefreshCDS(DMDados.cdsConfig);

     dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
     aUF  := DMDados.GetUFEmitente(uFrmPlusPdvNfe.idEmpresa);
     if uFuncoes.Empty(aUF) then
      begin
          Application.MessageBox(PChar('UF de emitente vazia.'),
                           'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL );
          Exit;
      End;
     //
     dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie  := dmDados.cdsEmpresacertificado_numero_serie.AsString;
     If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
      begin
          dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
      End;
     If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
      begin
           dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;  
      End;
      dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUF;
     //
     //dmNFe.PathACBrNFeDANFERave();
     dmNFe.ACBrNFe1.WebServices.StatusServico.Executar;
     MemoResp.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.StatusServico.RetWS);
     dmNFe.LoadXML(MemoResp, WBResposta);
end;

procedure TFrmGerenciarNotas.btnCancelarClick(Sender: TObject);
var
  vAux, aHora : String;
  iNotaFiscal : Integer;
  aDataCanc   : TDatetime;
  aArquivo, idLote : String;
  Chave, Protocolo, Justificativa, retProtocolo, aUFEmpresa : string;
  wXML: TStringStream;
  ContadorDeDias, idOrgaoReceptor : Integer;
begin
     ContadorDeDias := DaysBetween(Date(), cdsConsultadata_hora_emissao.AsDateTime);
     if (ContadorDeDias > 1) Then
     begin
          Application.MessageBox(PChar('Data limite para cancelamento já expirou.'+#13
                                      +'Data de Emissão: '+ cdsConsultadata_hora_emissao.AsString),
                           'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL );
          Exit;
     End;
     //
     aUFEmpresa := dmDados.GetUFEmitente(uFrmPlusPdvNfe.idEmpresa);
     idOrgaoReceptor := dmNFe.GetOrgaoReceptorNfe(aUFEmpresa);
     If uFuncoes.Empty(InttoStr(idOrgaoReceptor)) then
     begin
          Application.MessageBox(PChar('Campo Órgão receptor de cancelamento está vazio.'),
                           'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL );
          Exit;
     End;
     //
     if (cdsConsultasituacao.AsInteger = 2) Then
      begin
           If Application.MessageBox('Confirma cancelamento de Nota Fiscal Eletrônica?',
              'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             begin 
                  dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := dmDados.cdsEmpresacertificado_numero_serie.AsString;

                  If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
                   begin
                       dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
                   End;
                  If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
                   begin
                       dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;
                   End;
                   //
                   dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUFEmpresa;

                  //
                  if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then
                    exit;
                  if Length(vAux) < 15 Then
                   begin
                       Application.MessageBox(PChar('Justificativa de cancelamento inferior a 15 caracteres.'),
                           'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       Exit;
                   End;
                   //
                   pnlBotoes.Enabled := false;
                   try
                     try
                         dmNFe.ACBrNFe1.EventoNFe.Evento.Clear;
                         vAux := uFuncoes.RemoveAcentos(vAux);
                         // dmNFe.ACBrNFe1.Cancelamento(vAux);
                         // Cancelamento de NF-e homologado
                         // Alteração 17/12/2012
                         cdsConsulta.Edit;
                         cdsConsultanum_lote_evento.AsInteger := cdsConsultanum_lote_evento.AsInteger + 1;
                         cdsConsulta.Post;
                         // Grava evento
                         cdsConsulta.ApplyUpdates(0);
                         //
                         iNotaFiscal := cdsConsultaid.AsInteger;
                         idLote := cdsConsultanum_lote_evento.AsString;
                         Chave  := cdsConsultachave_acesso.AsString;
                         Justificativa := vAux;
                         Protocolo := cdsConsultanumero_protocolo.AsString;
                         //
                         with dmNFe.ACBrNFe1.EventoNFe.Evento.Add do
                          begin
                               infEvento.chNFe           := Chave;
                               infEvento.CNPJ            := cdsConsultaemitente_cnpj.AsString;
                               infEvento.dhEvento        := now;
                               infEvento.tpEvento        := teCancelamento;
                               infEvento.cOrgao          := idOrgaoReceptor;
                               infEvento.detEvento.xJust := Justificativa;
                               infEvento.detEvento.nProt := Protocolo;
                          end;
                          // Enviar o evento de cancelamento
                         if  dmNFe.ACBrNFe1.EnviarEvento(StrtoInt(idLote)) then
                         begin
                             with dmNFe.ACBrNFe1.WebServices.EnvEvento do
                             begin
                                // 135 Evento registrado e vinculado a NF-e
                                 If (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) Then
                                  begin
                                     aDataCanc := dmNFe.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                                     retProtocolo := dmNFe.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
                                     //
                                     // aHora     := Copy(TimeToStr(dmNFe.ACBrNFe1.WebServices.Cancelamento.DhRecbto),1,5);
                                     // SetCancelarNotaFiscal (iNotaFiscal, iSituacao: Integer;  aData: TDateTime; aProtocolo, aHora, aJustificativa: String): Boolean;
                                     dmNFe.SetCancelarNotaFiscal(iNotaFiscal, 3, aDataCanc,  retProtocolo, aHora, vAux);
                                     //
                                     aArquivo := ExtractFilePath( Application.ExeName )+'XML\'+ Chave +'-NFe.XML';
                                     dmNFe.InserirXMLdaNFe(iNotaFiscal, aArquivo);
                                     // Cancelamento de NF-e homologado
                                     Application.MessageBox(PChar('Cancelamento de NF-e homologado.'),
                                          'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                                  End;
                                 //
                                if (EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135) then
                                begin
                                  // raise Exception.Create
                                  Showmessage(
                                     'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
                                     'Código:%d' + sLineBreak +
                                     'Motivo: %s'+
                                     InttoStr(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat)+ #13+
                                     EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo );
                                end;
                             End;
                      end
                      else
                      begin
                        with dmNFe.ACBrNFe1.WebServices.EnvEvento do
                        begin
                          Showmessage(
                            'Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
                            'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
                            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
                            'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
                            sLineBreak +
                            'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
                            'Motivo: '   + EventoRetorno.xMotivo );
                        end;
                      end;
                         //

                     Except
                            {on e: exception do
                            begin         }
                                Showmessage('Erro ao tentar enviar cancelamento de NF-e! Erro:'+ dmNFe.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.xMotivo);  // +#13 + E.Message
                           // End;
                     End
                   Finally
                         btnConsultarClick(Sender);
                         pnlBotoes.Enabled := true;
                         If (cdsConsulta.Active) and not (cdsConsulta.IsEmpty) Then
                             cdsConsulta.Locate('id', iNotaFiscal, []);
                   End;
             End;
      End;
end;

procedure TFrmGerenciarNotas.btnConsultaClick(Sender: TObject);
Var
   aArquivo, aChave, aMotivo, aMotivoDescricao : String;
   iCodigoNFe : Integer;
   aUFEmitente : String;
begin
  if not (cdsConsulta.IsEmpty) Then
  begin
       iCodigoNFe := cdsConsultaid.AsInteger;
       //
       If (cdsConsultasituacao.AsInteger = 5)
        or ((cdsConsultasituacao.AsInteger = 6)) Then
       begin
            dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
            aUFEmitente := dmDados.GetUFEmitente(uFrmPlusPdvNfe.idEmpresa);
            //
            If not (dmNFe.GetChaveNotaFiscal(iCodigoNFe)) Then
             begin
                aChave := cdsConsultachave_acesso.AsString;
                If ( dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
                    dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUFEmitente
                Else
                    dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUFEmitente;
                dmNFe.ConsultaNfe(iCodigoNFe);
                //
                ShowMessage('Status : '+  dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                   'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);
                //
                If (dmNFe.ACBrNFe1.WebServices.Consulta.cStat = 100) Then
                begin
                     //aChave := dmNFe.ACBrNFe1.WebServices.Retorno.ChaveNFe;
                     aArquivo := ExtractFilePath( Application.ExeName )+'XML\'+ aChave +'-NFe.XML';
                     //
                     dmNFe.InserirXMLdaNFe(iCodigoNFe, aArquivo);
                     dmNFe.GetProtocoloNF2(iCodigoNFe, udmNFe.aProtocoloRetorno);
                End;
                // 
                btnConsultarClick(Self);
                Sleep(10);
                //
                if (cdsConsulta.Locate('id', iCodigoNFe,[])) Then
                begin
                    If (cdsConsultasituacao.AsInteger = 2) Then
                         btnImprimirClick(Self);
                End;
             End
            Else
                Application.MessageBox(PChar('NF-e: '+uFuncoes.StrZero(cdsConsultanumero_nota_fiscal.AsString,9) +', ainda não enviado.'),'ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            Exit;
       End;
       //
       dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
       //
       MostraStatus;
       dmNFe.PathACBrNFeDANFERave();
       OpenDialog1.Title  := 'Selecione a NFE';
       OpenDialog1.DefaultExt := '*-nfe.XML';
       OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
       OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
       //
       aArquivo := OpenDialog1.InitialDir+'\'+cdsConsultachave_acesso.AsString+'-NFe.XML';
       //
       If FileExists(aArquivo) Then
       begin
            OpenDialog1.FileName := aArquivo;
            //
            dmNFe.ACBrNFe1.NotasFiscais.Clear;
            dmDados.RefreshCDS(dmDados.cdsConfig);
            //
            aUFEmitente := dmDados.GetUFEmitente(uFrmPlusPdvNfe.idEmpresa);
            //
            dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := dmDados.cdsEmpresacertificado_numero_serie.AsString;

            dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUFEmitente;
            If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
             begin
                  dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
             End;
            If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
               dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;
            //
            dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
            dmNFe.ACBrNFe1.Consultar;

            // 15/05/2015
            aMotivoDescricao := dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo;
            aMotivo := 'Status : '+ aMotivoDescricao+#13+
                       'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo;
            //
            {if Pos('NF-e não consta na base de dados da SEFAZ',aMotivo) > 0 then
             begin
                  // Coloca a nota em digitação
                  dmNFe.SetStatusNotaFiscal(iCodigoNFe, 5);
                  // Atualiza consulta
                  btnConsultarClick(Sender);
                  // Vai para registro da NF-e
                  if (dsConsultar.DataSet.Locate('id',iCodigoNFe,[])) Then
                   begin
                       // Tenta Enviar novamente
                       btnGerarEnviarClick(Self);
                       // Sair do procedimento
                       Exit;
                   End;                                    
             End
             Else
             begin   }
                   Application.MessageBox(PChar(aMotivo),'ATENÇÃO',
                                            MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   {Application.MessageBox(PChar('Status : '+ dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                                         'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo),'ATENÇÃO',
                                            MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);}
            // End;
            //
            {ShowMessage('Status : '+  dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                     'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);}
            //
            MemoResp.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetWS);
            dmNFe.LoadXML(MemoResp, WBResposta);
       End
       Else
       begin
             dmNFe.ACBrNFe1.WebServices.Consulta.NFeChave := cdsConsultachave_acesso.AsString;
             dmNFe.ACBrNFe1.WebServices.Consulta.Executar;

             ShowMessage('Status : '+  dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                         'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);

             MemoResp.Lines.Text :=  UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetWS);
             //memoRespWS.Lines.Text :=  UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetornoWS);
             dmNFe.LoadXML(MemoResp, WBResposta);
             LoadConsulta201(dmNFe.ACBrNFe1.WebServices.Consulta.RetWS);
       End;
  end;
end;

procedure TFrmGerenciarNotas.btnImprimirClick(Sender: TObject);
Var
   aArquivo : String;
   wXML     : TStringStream;
   iCodigo : Integer;
begin
 btnImprimir.Enabled := false;
 Try
  if not (cdsConsulta.IsEmpty) Then
  begin
       iCodigo := cdsConsultaid.AsInteger;
       //
       if (cdsConsultasituacao.AsInteger = 5) Then
       begin
            VisualizacaoNFe();
            btnConsultarClick(Sender);
            Exit;
       End;
       //
       dmNFe.PathACBrNFeDANFERave();
       dmNFe.ACBrNFeDANFERaveCB1.NumCopias := 2;
       OpenDialog1.Title := 'Selecione a NFE';
       OpenDialog1.DefaultExt := '*-nfe.XML';
       OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
       OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
       aArquivo := OpenDialog1.InitialDir+'\'+cdsConsultachave_acesso.AsString+'-NFe.XML';
       {if OpenDialog1.Execute then
       begin}
         OpenDialog1.FileName := aArquivo;
         dmNFe.ACBrNFe1.NotasFiscais.Clear;
         dmNFe.ACBrNFe1.DANFE.NFeCancelada := false;
         //
         {If FileExists(ExtractFilePath(Application.ExeName)+'logo.bmp') Then
            dmNFe.ACBrNFe1.DANFE.Logo := ExtractFilePath( Application.ExeName ) + 'logo.bmp'; }
         dmNFe.ACBrNFe1.DANFE.Sistema := 'Infog2 Sistemas';
         If (dmNFe.GetTipoDanfe(cdsConsultaid.AsInteger) = 1) Then
             dmNFe.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
         Else
             dmNFe.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
         //
         If FileExists(OpenDialog1.FileName) Then
             dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName)
         Else
         begin
              DMDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, cdsConsultaid.AsString);
              if not (dmNFe.cdsNotaFiscal.IsEmpty) Then
              begin
                  if not (dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml').IsNull) then
                  begin
                     wXML := TStringStream.Create(dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml').AsString);
                     if length(wXML.DataString) > 0 then
                        dmNFe.ACBrNFe1.NotasFiscais.LoadFromStream(wXML);
                  End
                  else
                  begin
                      wXML := TStringStream.Create('');
                      dmNFe.ACBrNFe1.NotasFiscais.Clear;
                      Application.MessageBox(PChar('Arquivo não encontrado!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                      Exit;
                      //raise Exception.Create('Arquivo não encontrado!!!');
                  End;
                  //
              End;
         End;
         //dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
         //  Se situação cancelada
         dmNFe.ACBrNFe1.DANFE.NFeCancelada := False;
         If (cdsConsultasituacao.AsInteger = 3) Then
            dmNFe.ACBrNFe1.DANFE.NFeCancelada := true;
         //
         If not uFuncoes.Empty(cdsConsultanumero_protocolo.AsString) Then
             dmNFe.ACBrNFe1.DANFE.ProtocoloNFe := cdsConsultanumero_nota_fiscal.AsString;
         {if dmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
          begin
            dmNFe.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := dmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
            dmNFe.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
            dmNFe.ACBrNFe1.DANFE.ProtocoloNFe := dmNFe.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(dmNFe.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);  //  retDPEC.dhRegDPEC
          end;}
         //
         dmNFe.ACBrNFe1.NotasFiscais.Imprimir;
       //end;
  End;
 Finally
     btnImprimir.Enabled := True;
     btnConsultarClick(Sender);
     cdsConsulta.Locate('id', iCodigo, []);
 End;
 Application.ProcessMessages;
end;

procedure TFrmGerenciarNotas.btnEnviarClick(Sender: TObject);
begin
    pnlStatus.Visible := False;
end;

procedure TFrmGerenciarNotas.MostraStatus;
begin
     MemoResp.Lines.Clear;
     WBResposta.Navigate('about:blank');
     pnlStatus.Visible := true;
end;

procedure TFrmGerenciarNotas.cmbSituacaoClick(Sender: TObject);
begin
    if not (cdsConsulta.IsEmpty) Then
        cdsConsulta.Close;
end;

procedure TFrmGerenciarNotas.cmbTipoClick(Sender: TObject);
begin
     if not (cdsConsulta.IsEmpty) Then
         cdsConsulta.Close;
end;

procedure TFrmGerenciarNotas.DesabilitarBotoes;
begin
       btnGerarEnviar.Enabled := False;
       btnImprimir.Enabled    := False;
       btnConsulta.Enabled    := False;
       btnCancelar.Enabled    := False;
       btnExcluir.Enabled    := False;
       btnCartaCorrecao.Enabled  := False;
end;

procedure TFrmGerenciarNotas.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa, aCNPJ, aHora, aProtocolo, aDescricao : String;
 iLoja, iCodStatusInut : Integer;
 aDataMov : TDatetime;
 aUFempresa, aNomeArquivoImp : String;
begin
      MostraStatus;
      //
      aDescricao := 'NOTA INUTILIZADA';

      iCodStatusInut := DmNFe.GetCodigoSituacaoNota(aDescricao);
      //
      Application.CreateForm(TfrmInutilizarNum, frmInutilizarNum);
      try
           With frmInutilizarNum do
           begin
               If ShowModal = mrOk Then
                  begin
                       Modelo        := frmInutilizarNum.edtModelo.Text;
                       Serie         := frmInutilizarNum.edtSerie.Text;
                       Ano           := frmInutilizarNum.edtAno.Text;
                       NumeroInicial := frmInutilizarNum.edtNumInicial.Text;
                       NumeroFinal   := frmInutilizarNum.edtNumFinal.Text;
                       Justificativa := uFuncoes.RemoveAcentos(frmInutilizarNum.edtJustificativa.Text);
                       iLoja         := uFrmPlusPdvNfe.idEmpresa;
                       //
                       dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(iLoja));
                       aCNPJ := dmDados.cdsEmpresacnpj.AsString;
                       aUFempresa := dmDados.GetUFEmitente(iLoja);
                       //
                       If not uFuncoes.Empty(aCNPJ) Then
                        begin
                            If uFuncoes.Empty(Modelo) Then
                               Modelo := '55';
                            //
                            dmNFe.PathACBrNFeDANFERave();
                            //
                            try
                                DMDados.RefreshCDS(DMDados.cdsConfig);
                                //
                                dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := dmDados.cdsEmpresacertificado_numero_serie.AsString;
                                dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUFempresa;
                                // 
                                If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
                                   dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;
                                   
                                If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
                                    dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
                                //
                                Application.ProcessMessages;
                                //
                                dmNFe.ACBrNFe1.WebServices.Inutiliza(aCNPJ, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
                                MemoResp.Lines.Text :=  UTF8Encode(dmNFe.ACBrNFe1.WebServices.Inutilizacao.RetWS);
                                dmNFe.LoadXML(MemoResp, WBResposta);
                                //
                                Sleep(500);
                                // se Inutilização de número homologado
                                If (dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat = 102) Then
                                begin
                                     aProtocolo := dmNFe.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
                                     aHora := Copy(TimetoStr(Time),1,5);
                                     aDataMov := Date();
                                     // CNPJ, aJUSTIFICATIVA,
                                     // aHora, aProtocolo: String; iAno, iModelo, iSerie, iNUMINICIAL, iNUMFINAL,
                                     // iCDUSUA: Integer; aDataMov: TDate
                                     DmDados.AddRegistroInutilizacaoNumeracao(aCNPJ, Justificativa, aHora, aProtocolo,
                                           StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial),StrToInt(NumeroFinal),
                                           uFrmPlusPdvNfe.idUsuario, aDataMov);
                                     dmNFe.SetStatusdaNotaInutilizada(iCodStatusInut, StrToInt(NumeroInicial),StrToInt(NumeroFinal), aProtocolo, iLoja, Serie);

                                     //
                                     If (dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat = 102) Then
                                      begin
                                          Application.MessageBox(PChar('Inutilização de númeração homologado.'+#13+
                                                                       'Retorno..: '+ InttoStr(dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)+#13+
                                                                       'Motivo...: '+ dmNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo+#13+
                                                                       'Protocolo: '+ dmNFe.ACBrNFe1.WebServices.Inutilizacao.Protocolo+#13+
                                                                       'Data.....: '+ DateToStr(dmNFe.ACBrNFe1.WebServices.Inutilizacao.dhRecbto)),
                                               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                                          // Abrir Arquivo
                                          {ExtractFilePath( Application.ExeName )+'InutilizacaoNfe';
                                          dmNFe.ACBrNFe1.NotasFiscais.Clea
                                          dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
                                          dmNFe.ACBrNFe1.ImprimirInutilizacao;  }
                                      End
                                     Else
                                          Application.MessageBox(PChar('Inutilização de número não homologado.'+#13+
                                             'Retorno : ' + InttoStr(dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)),
                                             'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                                End
                                Else
                                     Application.MessageBox(PChar('Inutilização de númeroção não homologado.'+#13+
                                            'Retorno : ' + InttoStr(dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)),
                                            'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                            Except
                                  On e: SysUtils.exception do
                                  begin
                                       Application.MessageBox(PChar('Erro ao tentar gravar dados! Erro:'+#13
                                                   + 'Retorno..: '+ InttoStr(dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)+#13
                                                   + 'Motivo...: '+ dmNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo+#13
                                                   + E.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                                       {ShowMessage('Erro ao tentar gravar dados! Erro:'+#13+
                                                   + 'Retorno..: '+ InttoStr(dmNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)+#13+
                                                   + E.Message);}
                                  End;
                            End;
                        End;
                  End;
           End;
      Finally
           frmInutilizarNum.Free;
      End;
end;

procedure TFrmGerenciarNotas.edtCPFCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
      //
      If (key = #13) and uFuncoes.Empty(edtCPFCNPJ.Text) Then
      begin
           key := #0;
           spLocClienteClick(Sender);
      End;
end;

procedure TFrmGerenciarNotas.grdConsultarDblClick(Sender: TObject);
Var
   idNota : Integer;
begin
     If not (dsConsultar.DataSet.IsEmpty) and (dsConsultar.DataSet.RecordCount > 0)
      and ((dsConsultar.DataSet.FieldByName('situacao').AsInteger = 5)
        or (dsConsultar.DataSet.FieldByName('situacao').AsInteger = 6)) Then
      begin
            idNota := dsConsultar.DataSet.fieldByName('id').AsInteger;
            Application.CreateForm(TFrmNotaFiscalEletronicaNovo, FrmNotaFiscalEletronicaNovo);
            try
                uFrmNFENew.iNumNota := idNota;
                FrmNotaFiscalEletronicaNovo.ShowModal;
            Finally
                FrmNotaFiscalEletronicaNovo.Free;
                //
                btnConsultarClick(Sender);
                //
                if not (dsConsultar.DataSet.IsEmpty) Then
                   dsConsultar.DataSet.Locate('id', idNota, []);
            End;
      End;
end;

procedure TFrmGerenciarNotas.btnExcluirClick(Sender: TObject);
Var
   idNotaFiscalSeq, idNotaFiscal, idEmitente, idUltimaNota : Integer;
begin
     if not (cdsConsulta.IsEmpty) Then
      begin
           idNotaFiscalSeq := cdsConsultaid.AsInteger;
           idNotaFiscal := cdsConsultanumero_nota_fiscal.AsInteger;
           idEmitente   := cdsConsultaid_empresa.AsInteger;
           idUltimaNota := DMDados.GetProximoIdNFeEmpresa(idEmitente);
           //
           if (cdsConsultasituacao.AsInteger = 5)
             AND (idNotaFiscal = idUltimaNota)  Then
              Begin
                   If Application.MessageBox('Confirma exclusão de Nota?',
                      'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                    begin
                         idNotaFiscalSeq := cdsConsultaid.AsInteger;
                         //
                         DMDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(idNotaFiscalSeq));
                         //
                         if not (dmNFe.cdsNotaFiscal.IsEmpty) Then
                          begin
                               DMDados.Start;
                               try
                                        //
                                        dmNFe.ExcluirItemNfe(idNotaFiscalSeq );
                                        dmNFe.ExcluirDuplicatas(idNotaFiscalSeq );
                                        //
                                        dmNFe.ExcluirVolumes(idNotaFiscalSeq);
                                        // Verifica se tem venda para NFe
                                        DMDados.GetVerificaNFeVenda(idNotaFiscal, idEmitente);
                                        // Nota Referencias
                                        dmNFe.ExcluiRegistroNotaReferencia(idNotaFiscalSeq);
                                        //
                                        dmNFe.cdsNotaFiscal.Delete;
                                        if (dmNFe.cdsNotaFiscal.ApplyUpdates(0) = 0) Then
                                        begin
                                            //
                                            DMDados.FilterCDS(dmDados.CdsEmpresa,  fsInteger, InttoStr(idEmitente));
                                            dmDados.CdsEmpresa.Edit;
                                            DMDados.cdsEmpresasequencia_nfe.AsInteger := DMDados.cdsEmpresasequencia_nfe.AsInteger - 1;
                                            // DMDados.GetMaxIdNFeEmpresa(idEmitente);
                                            DMDados.CdsEmpresa.ApplyUpdates(0);
                                            //
                                            DMDados.Comit(DMDados.Transc);
                                            //
                                            Application.MessageBox(PChar('Nota Nº.: '+uFuncoes.StrZero(InttoStr(idNotaFiscal),9)+
                                              ' excluída com sucesso.'), 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                                        End;
                               Except
                                     on e : SysUtils.Exception do
                                     begin
                                          DMDados.Rollback(e.Message);
                                     End;
                               End;
                               btnConsultarClick(Sender);
                          End;
                    End;
              End
              Else
              begin
                   Application.MessageBox(PChar('Nota não pode ser excluída.'+#13
                                          +'Sequência atual de NF-e: '+ InttoStr(idUltimaNota) +' diferente do número dessa NF-e: '+InttoStr(idNotaFiscal)), 'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);

              End;
      End;
end;

procedure TFrmGerenciarNotas.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and
        not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) then
     begin
          key := #0;
          edtDTFINA.SetFocus;
     End;
end;

procedure TFrmGerenciarNotas.edtDTFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and
        not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) then
     begin
          key := #0;
          cmbTipo.SetFocus;
     End;
end;

procedure TFrmGerenciarNotas.mnuArquivoXMItemClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    dmNFe.ACBrNFe1.NotasFiscais.Clear;
    dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    dmNFe.ACBrNFe1.Consultar;
    ShowMessage('Status : '+  dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);
    //ShowMessage(dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetWS);
    memoLog.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetornoWS);
    dmNFe.LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TFrmGerenciarNotas.mnuPDFItemClick(Sender: TObject);
Var
   aArquivo, Dir : String;
begin
    if not (cdsConsulta.IsEmpty) Then
    begin
      Dir := 'C:\INFOG2\PDF';
      //
      if not DirectoryExists(Dir) then
         ForceDirectories(Dir);
      //
      If (cdsConsultasituacao.AsInteger = 2) Then
      begin
       dmNFe.PathACBrNFeDANFERave();
       OpenDialog1.Title := 'Selecione a NFE';
       OpenDialog1.DefaultExt := '*-nfe.XML';
       OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
       OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
       aArquivo := OpenDialog1.InitialDir+'\'+cdsConsultachave_acesso.AsString+'-NFe.XML';
       dmNFe.ACBrNFe1.DANFE.PathPDF := Dir;
         OpenDialog1.FileName := aArquivo;
         dmNFe.ACBrNFe1.NotasFiscais.Clear;
         If FileExists(ExtractFilePath( Application.ExeName )+'logo.bmp') Then
            dmNFe.ACBrNFe1.DANFE.Logo := ExtractFilePath( Application.ExeName ) + 'logo.bmp';
         dmNFe.ACBrNFe1.DANFE.Sistema := 'Infog2 Sistemas';
         //
         dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
         If not uFuncoes.Empty(cdsConsultanumero_protocolo.AsString) Then
         begin
             dmNFe.ACBrNFe1.DANFE.ProtocoloNFe := cdsConsultanumero_protocolo.AsString;
             //
             dmNFe.ACBrNFe1.NotasFiscais.ImprimirPDF;
             //
             Application.MessageBox(PChar('Arquivo '+cdsConsultachave_acesso.AsString+'.PDF'+
                         #13+' gerado com sucesso na pasta '+Dir),
                    'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         End;
      End;
    End;
end;

procedure TFrmGerenciarNotas.mnuChaveItemClick(Sender: TObject);
Var
    aNumero : String;
begin
     aNumero := inputbox('Número da Chave', 'Digite o número da chave para consulta.','');
     //
     if not uFuncoes.Empty(aNumero) Then
      begin
       aNumero := uFuncoes.RemoveChar(aNumero);
       If (Length(aNumero) = 44) then
       begin
            dmNFe.ACBrNFe1.NotasFiscais.Clear;
            dmNFe.ACBrNFe1.WebServices.Consulta.NFeChave := aNumero;
            dmNFe.ACBrNFe1.WebServices.Consulta.Executar;
            //
            ShowMessage('Status : '+  dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);
            MemoResp.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetWS);
            memoLog.Lines.Text := UTF8Encode(dmNFe.ACBrNFe1.WebServices.Consulta.RetornoWS);
            dmNFe.LoadXML(MemoResp, WBResposta);
       End
       Else
             Application.MessageBox(PChar('Número inválido.'),
                    'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
     End;
end;

procedure TFrmGerenciarNotas.mnuFecharItemClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmGerenciarNotas.mnuNFeVendaItemClick(Sender: TObject);
begin
  //     FrmAdmin.AbreForm(TfrmConsVendaNFe, frmConsVendaNFe);  to-do
end;

procedure TFrmGerenciarNotas.cmbTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) Then
      begin
           key := #0;
           cmbSituacao.SetFocus;
      End;
end;

procedure TFrmGerenciarNotas.cmbSituacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) Then
      begin
           key := #0;
           edtCPFCNPJ.SetFocus;
      End;
end;

procedure TFrmGerenciarNotas.edtCPFCNPJChange(Sender: TObject);
begin
    if uFuncoes.Empty(edtcpfcnpj.text) Then
         edtDestinatario.Clear;
end;

procedure TFrmGerenciarNotas.spLocClienteClick(Sender: TObject);
begin
     edtCPFCNPJ.SetFocus;
     Application.CreateForm(TfrmLocalizarCliente, frmLocalizarCliente);
     try
          With frmLocalizarCliente do
             ShowModal;
     Finally
          If not (frmLocalizarCliente.cdsConsultar.IsEmpty) and (uFrmLocalizaCliente.M_TPCONSULTA = 'C') Then
              edtCPFCNPJ.Text := frmLocalizarCliente.cdsConsultarcpf_cnpj.AsString;
          //
          If not (frmLocalizarCliente.cdsFornecedores.IsEmpty) and (uFrmLocalizaCliente.M_TPCONSULTA = 'F') Then
              edtCPFCNPJ.Text := frmLocalizarCliente.cdsFornecedorescpf_cnpj.AsString;
          //
          frmLocalizarCliente.Free;
          //
          if not uFuncoes.Empty(edtCPFCNPJ.Text) and (btnConsultar.Enabled) Then
              btnConsultar.SetFocus;
     End;
end;

procedure TFrmGerenciarNotas.edtCPFCNPJExit(Sender: TObject);
begin
    If not uFuncoes.Empty(edtCPFCNPJ.Text) Then
        edtDestinatario.Text := dmDados.GetRazaoSocialDestinatario(edtCPFCNPJ.Text)
    Else
        edtDestinatario.Clear;
end;

procedure TFrmGerenciarNotas.LoadConsulta201(XML: string);
var
  DOM: IXMLDocument;
  lXML: String;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} ' ' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:string ):string;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: String; TagRemover:String): String;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(XML,'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;   
end;

procedure TFrmGerenciarNotas.btnCartaCorrecaoClick(Sender: TObject);
Var
   iCodigoNFe  : Integer;
   iDias : Double;
begin
      //
     if not (cdsConsulta.IsEmpty) Then
      begin
           iDias := Date() - cdsConsultadata_protocolo.AsDateTime;
           if (iDias > 30) Then
           begin
                 Application.MessageBox(PChar('NF-e autorizada há mais de 30 dias (720 horas)'),
                    'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                 Exit;
           End;
           //
           iCodigoNFe := cdsConsultaid.AsInteger;
           //
           if (dmNFe.GetSEQUENCIA_CCE_NF_E(iCodigoNFe) > 20) Then
           begin
                Application.MessageBox(PChar('NF-e já atingiu o limite de correções!!!'),
                    'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                 Exit;
           End;
           //
           If (cdsConsultasituacao.AsInteger = 2) Then
            begin
                 Application.CreateForm(TFrmCartaCorrecao, FrmCartaCorrecao);
                 try
                      uFrmCartaCorrecao.iCodNFe := iCodigoNFe;
                      FrmCartaCorrecao.ShowModal;
                 Finally
                      FrmCartaCorrecao.Free;
                      //
                       if not (dsConsultar.DataSet.IsEmpty) Then
                           dsConsultar.DataSet.Locate('id', iCodigoNFe, []);
                 End;
            End;
      End;
end;

procedure TFrmGerenciarNotas.EnviarNFeXMLPDF1Click(Sender: TObject);
Var
    aFile, Dir : String;
    idCliente, idRegistro : Integer;
begin
      //
      if not (DMDados.VerificarDadosEmail()) Then
       begin
            Application.MessageBox(PChar('Verifique as suas configurações de email!!!'),
                    'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION +MB_APPLMODAL);
            Exit;
       End;
       //
       idRegistro := cdsConsultaid.AsInteger;
       //
       Try
         if not (cdsConsulta.IsEmpty) Then
         begin
              bFluxoArquivo := False;
              Dir := 'C:\INFOG2\EMAIL';
              if not DirectoryExists(Dir) then
                  ForceDirectories(Dir);

              NomeDoLista := Dir+'\listaanexos.txt';
              //
              ExcluirArquivoLista;
              //
              DMDados.RefreshCDS(dmNFe.cdsListaArquivoNfe);
              dmNFe.cdsListaArquivoNfe.EmptyDataSet;
              //
              Enviar_Email_PDF('C:\Infog2\PDF', dmNFe.cdsListaArquivoNfe);
              //
              Sleep(200);
              //
              If (bFluxoArquivo) Then
              begin
                   Application.CreateForm(TFrmNewEmailSend, FrmNewEmailSend);
                   Try
                       uNewEnviarEmail.idCliente := 0;
                       uNewEnviarEmail.idLoja := cdsConsultaid_empresa.AsInteger;
                       if not uFuncoes.Empty(edtCPFCNPJ.Text) Then
                        begin
                             uNewEnviarEmail.idCliente := DMDados.GetEMailClienteCNPJCPF(edtCPFCNPJ.Text);
                        End;
                        //
                       uNewEnviarEmail.iLista := 1;
                       uNewEnviarEmail.aArquivoAnexo := NomeDoLista;
                       FrmNewEmailSend.ShowModal;
                   Finally
                       FrmNewEmailSend.Free;
                   End;
                   Application.ProcessMessages;
              End
              Else
                  Application.MessageBox(PChar('Não há dados para serem enviandos.'),
                       'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
              {aFile := GeraPDF(cdsConsultaid.AsInteger);
              If FileExists(aFile) Then
                 Enviar_Email_PDF_XML(cdsConsultaid.AsInteger, aFile)
                 //Enviar_Email_PDF(cdsConsultaid.AsInteger, aFile)
              Else
                   Application.MessageBox(PChar('Arquivo '+aFile+' não encontrado.'),
                    'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);}
         End
         Else
             Application.MessageBox(PChar('Não há dados para serem enviados!!!'),
                    'ATENÇÃO', MB_OK+MB_ICONWARNING+MB_APPLMODAL);
      Finally
             btnConsultarClick(Self);
             if not (cdsConsulta.IsEmpty) Then
                cdsConsulta.Locate('id', idRegistro, []);
      End;
end;

function TFrmGerenciarNotas.GeraPDF(iNota: Integer): String;
Var
   aArquivo, Dir : String;
begin
    if not (cdsConsulta.IsEmpty) Then
    begin
      Dir := 'C:\INFOG2\PDF';
      //
      if not DirectoryExists(Dir) then
         ForceDirectories(Dir);
      //
      If (cdsConsultasituacao.AsInteger = 2) Then
      begin
       dmNFe.PathACBrNFeDANFERave();
       OpenDialog1.Title := 'Selecione a NFE';
       OpenDialog1.DefaultExt := '*-nfe.XML';
       OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
       OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
       aArquivo := OpenDialog1.InitialDir+'\'+cdsConsultachave_acesso.AsString+'-NFe.XML';
       dmNFe.ACBrNFe1.DANFE.PathPDF := Dir;
         OpenDialog1.FileName := aArquivo;
         dmNFe.ACBrNFe1.NotasFiscais.Clear;
         {If FileExists(ExtractFilePath( Application.ExeName )+'logo.bmp') Then
            dmNFe.ACBrNFe1.DANFE.Logo := ExtractFilePath( Application.ExeName ) + 'logo.bmp';  }
         dmNFe.PathACBrNFeDANFERave();
         dmNFe.ACBrNFe1.DANFE.Sistema := 'Infog2 Sistemas';
         //
         dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
         If not uFuncoes.Empty(cdsConsultanumero_protocolo.AsString) Then
         begin
             dmNFe.ACBrNFe1.DANFE.ProtocoloNFe := cdsConsultanumero_protocolo.AsString;
             //
             dmNFe.ACBrNFe1.NotasFiscais.ImprimirPDF;
             //
             Result :=  Dir+'\'+ cdsConsultachave_acesso.AsString+'.PDF';
         End;
      End;
    End;
end;

procedure TFrmGerenciarNotas.Enviar_Email_PDF_XML(iNota: Integer;
  aNomeArquivo: String);
const
  olMailItem = 0;
Var
  NmSpace : NameSpace;
  MAPIFolder : OleVariant;
  sFolder : OleVariant;
  Outlook : TOutlookApplication;
  MI, oItem : OleVariant;
  aFile, aData, aHora, aAssunto, aConteudo, aEmail, aNomeArquivoXML : String;
  i : Integer;
begin
     if not uFuncoes.Empty(cdsConsultadestinatario_email.AsString) Then
         aEmail   := cdsConsultadestinatario_email.AsString
     Else
         aEmail   := 'digite o email do cliente';
     aAssunto := 'NF-e : '+ cdsConsultachave_acesso.AsString;
     aConteudo := '';
end;

procedure TFrmGerenciarNotas.VisualizacaoNFe;
Var
    iNotaFiscal, iUsuario : Integer;
begin
    iNotaFiscal := cdsConsultaid.AsInteger;
    //
    dmNFe.LimparChaveNotaFiscal(iNotaFiscal);
    iUsuario := uFrmPlusPdvNfe.idUsuario;
    //
    if dmNFe.GerarXMLNFe(iNotaFiscal, 'S', iUsuario) Then
         dmNFe.ACBrNFe1.NotasFiscais.Clear;
end;

procedure TFrmGerenciarNotas.FormCreate(Sender: TObject);
begin
       cdsConsulta.Close;
end;

procedure TFrmGerenciarNotas.mnuListaItemClick(Sender: TObject);
Var
   M_TOAUTO, M_TOCANC : Double;
   aTextoSQL, M_CDNATU : String;
begin
    If not (dsConsultar.DataSet.IsEmpty) Then
      begin
           M_TOAUTO := 0;
           M_TOCANC := 0;
           //
           dsConsultar.DataSet.DisableControls;
           dsConsultar.DataSet.First;
           While not (dsConsultar.DataSet.Eof) do
           begin
                Case dsConsultar.DataSet.FieldByName('situacao').AsInteger of
                   2 : M_TOAUTO := M_TOAUTO + dsConsultar.DataSet.FieldByName('valor_total_nota').AsFloat;
                   3 : M_TOCANC := M_TOCANC + dsConsultar.DataSet.FieldByName('valor_total_nota').AsFloat;
                End;
                //
                dsConsultar.DataSet.Next;
           End;
           //
           dsConsultar.DataSet.EnableControls;
           With ppReport1 do
            begin
                 aTextoSQL := 'select nfe.id, nop.descricao, nfe.situacao, sum(nfe.valor_total_nota) as total from nota_fiscal nfe ';
                 aTextoSQL := aTextoSQL + ' left join natureza_operacao nop on nfe.natureza_operacao = nop.id';
                 aTextoSQL := aTextoSQL + ' where  (nfe.data_hora_emissao >= :pDATA1) and (nfe.data_hora_emissao <= :pDATA2)';
                 aTextoSQL := aTextoSQL + ' and (NFE.situacao = '+QuotedStr('2')+') ';
                 if not uFuncoes.Empty(edtCPFCNPJ.Text) Then
                    aTextoSQL := aTextoSQL + ' and (NFE.destinatario_cnpjcpf = '+QuotedStr(edtCPFCNPJ.Text)+')' ;
                 if not uFuncoes.Empty(cmbNatureza.Text) Then
                  begin
                       M_CDNATU := InttoStr(dmNFe.GetCodNaturezaOperacao(cmbNatureza.Text));
                       aTextoSQL := aTextoSQL + ' and (NFE.natureza_operacao = '+QuotedStr(M_CDNATU)+') ';
                  End;
                 aTextoSQL := aTextoSQL + ' group by nfe.id, nop.descricao, nfe.situacao ';
                 // Lista de naturezas
                 With cdsListaNaturezas do
                 begin
                      Close;
                      CommandText := aTextoSQL;
                      Params.ParamByName('pDATA1').AsDateTime := edtDTINIC.Date;
                      Params.ParamByName('pDATA2').AsDateTime := edtDTFINA.Date;
                      Open;
                 End;
                 //
                 txtPeriodo.Text       := 'PERÍODO : '+edtDTINIC.Text + ' À '+edtDTFINA.Text;
                 txtTotCancela.Caption := FormatFloat('###,###,##0.#0', M_TOCANC);
                 txtTotAuto.Caption    := FormatFloat('###,###,##0.#0', M_TOAUTO);
                 //
                  If not uFuncoes.Empty(uFrmPlusPdvNfe.aImageLogo) Then
                     if FileExists(uFrmPlusPdvNfe.aImageLogo) Then
                          ppImage1.Picture.LoadFromFile(uFrmPlusPdvNfe.aImageLogo);
                 //
                 PrintReport;
            End;
      End
      Else
           Application.MessageBox(PChar('Não há dados para impressão!!! Refaça sua consulta.'),
                'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
end;

procedure TFrmGerenciarNotas.mnuPorVendaItemClick(Sender: TObject);
begin
      if uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
      begin
          Application.MessageBox(PChar('Digite a data inicial.'),
                'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          edtDTINIC.SetFocus;
          Exit;
      End;
      //
      if uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
      begin
          Application.MessageBox(PChar('Digite a data final.'),
                'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          edtDTFINA.SetFocus;
          Exit;
      End;
      //
      if uFuncoes.Empty(edtCPFCNPJ.Text) Then
      begin
          Application.MessageBox(PChar('Digite CPF/CNPJ do cliente'),
                'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          edtCPFCNPJ.SetFocus;
          Exit;
      End;
      //
      ConsultaNFeporCliente(edtDTINIC.Date, edtDTFINA.Date, edtCPFCNPJ.Text);
      //
      btnConsultarClick(Sender);
end;

procedure TFrmGerenciarNotas.ConsultaNFeporCliente(aDataIni,
  aDataFin: TDatetime; aCPFCNPJ: String);
Var
   aTextoSQL : string;
begin
    aTextoSQL := 'Select nf.id, nf.numero_nota_fiscal, nf.serie, nf.data_hora_emissao, nf.emitente_cnpj, ';
    aTextoSQL := aTextoSQL + ' nf.id_empresa, nf.id_cliente, nf.tipo_emis, ';
    aTextoSQL := aTextoSQL + ' nf.valor_total_nota, nf.valor_itens, nf.chave_acesso, nf.numero_protocolo, nf.emitente_uf, ';
    aTextoSQL := aTextoSQL + ' nf.destinatario_cnpjcpf, nf.situacao as situacao_nfe,  ';
    aTextoSQL := aTextoSQL + ' nf.emitente_razao, nf.destinatario_razaosocial, nf.destinatario_tipopessoa, nf.destinatario_uf, ';
    aTextoSQL := aTextoSQL + ' nf.destinatario_email, nf.num_protocolo_cancelamento, nf.justificativa_cancelamento,  ';
    aTextoSQL := aTextoSQL + ' nf.id_usuario_cadastro, nf.data_cadastro, nf.data_alteracao, nf.id_usuario_alteracao, id_usuario_enviou, ';
    aTextoSQL := aTextoSQL + ' v.id as venda, v.numero_nfe, v.data_venda, v.id_cliente as id_cliente_venda, v.valor_mercadorias, v.situacao as situacao_venda ';
    aTextoSQL := aTextoSQL + ' from nota_fiscal NF ';
    aTextoSQL := aTextoSQL + ' inner join empresas e on nf.id_empresa = e.id ';
    aTextoSQL := aTextoSQL + ' left join vendas v on nf.id = v.numero_nfe ';
    aTextoSQL := aTextoSQL + ' Where (NF.data_hora_emissao >= :pDTINICIO) and (NF.data_hora_emissao <= :pDTFINAL) and (NF.destinatario_cnpjcpf = :pCNPJCPF) ';
    aTextoSQL := aTextoSQL + ' and (nf.situacao = :pSITUACAO) ';
    aTextoSQL := aTextoSQL + ' order by NF.numero_nota_fiscal ';
    //
    With cdsListaNfeporVenda do
    begin
         Close;
         CommandText := aTextoSQL;
         Params.ParamByName('pDTINICIO').AsDate := aDataIni;
         Params.ParamByName('pDTFINAL').AsDate  := aDataFin;
         Params.ParamByName('pCNPJCPF').AsString := aCPFCNPJ;
         Params.ParamByName('pSITUACAO').AsInteger := 2;
         Open;
         //
         if not (IsEmpty) Then
         begin
               With ppReport2 do
               begin
                    txtNomeCliente.Caption    := cdsListaNfeporVendadestinatario_razaosocial.AsString + ' - CPF/CNPJ: '+ cdsListaNfeporVendadestinatario_cnpjcpf.AsString;
                    txtPeriodoEmissao.Caption := 'PERÍODO : '+ edtDTINIC.Text + ' À '+edtDTFINA.Text;
                    //
                     If not uFuncoes.Empty(uFrmPlusPdvNfe.aImageLogo) Then
                       if FileExists(uFrmPlusPdvNfe.aImageLogo) Then
                          ppImage2.Picture.LoadFromFile(uFrmPlusPdvNfe.aImageLogo);
                    //
                    PrintReport;
               End;
         End
         Else
             Application.MessageBox(PChar('Não há NF-e autorizada no período indicado para este cliente.'),
                 'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
    End;
end;

procedure TFrmGerenciarNotas.edtNumeroNfeExit(Sender: TObject);
begin
    if not uFuncoes.Empty(edtNumeroNfe.Text) Then
    begin
       if not dmNFe.GetVerificarExisteNFe(StrtoInt(edtNumeroNfe.Text)) Then
        begin
             Application.MessageBox(PChar('Número de NF-e não existente.'),
                 'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
             edtNumeroNfe.Clear;
             edtNumeroNfe.SetFocus;
             Exit;
        End;
        //
        edtNumeroNfe.Text  := uFuncoes.StrZero(edtNumeroNfe.Text,9);
        //
        edtDTINIC.Clear;
        edtDTFINA.Clear;
        //
        edtNumFinal.SetFocus;
    End;
end;

procedure TFrmGerenciarNotas.edtNumeroNfeEnter(Sender: TObject);
begin
     cdsConsulta.Close;
end;

procedure TFrmGerenciarNotas.edtNumeroNfeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     if (Key = #13) and not uFuncoes.Empty(edtNumeroNfe.Text) Then
     begin
          key:=#0;
          edtNumFinal.SetFocus;
     End;
end;


procedure TFrmGerenciarNotas.edtDTINICEnter(Sender: TObject);
begin
    if (cdsConsulta.Active) Then
       cdsConsulta.Close;
     edtNumeroNfe.Clear;
end;

procedure TFrmGerenciarNotas.edtDTFINAEnter(Sender: TObject);
begin
    if (cdsConsulta.Active) Then
       cdsConsulta.Close;
     edtNumeroNfe.Clear;   
end;

procedure TFrmGerenciarNotas.grdConsultarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  R: TRect;
begin
  {pinta checkbox}
 if (cdsConsulta.Active) and not (cdsConsulta.IsEmpty) Then
 begin
   if Column.Field = cdsConsultaIMPRIMIR then
   begin
     grdConsultar.Canvas.FillRect(Rect);
     ImageList1.Draw(grdConsultar.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
     if cdsConsultaIMPRIMIR.AsBoolean then
       ImageList1.Draw(grdConsultar.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
     else
       ImageList1.Draw(grdConsultar.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
   end;
 End;
end;

procedure TFrmGerenciarNotas.grdConsultarCellClick(Column: TColumn);
begin
 if (cdsConsulta.Active) and not (cdsConsulta.IsEmpty) Then
 begin
     if Column.Field = cdsConsultaIMPRIMIR then
     begin
         cdsConsulta.Edit;
         cdsConsultaIMPRIMIR.AsBoolean := not cdsConsultaIMPRIMIR.AsBoolean;
     end;
  End;
end;

procedure TFrmGerenciarNotas.grdConsultarColEnter(Sender: TObject);
begin
  if (cdsConsulta.Active) and not (cdsConsulta.IsEmpty) Then
  begin
      if grdConsultar.SelectedField = cdsConsultaIMPRIMIR then
        grdConsultar.Options := grdConsultar.Options - [dgEditing]
      else
        grdConsultar.Options := grdConsultar.Options + [dgEditing];
  End;
end;

procedure TFrmGerenciarNotas.ImprimirNFeSelecionadas1Click(
  Sender: TObject);
Var
  Dir: string;
begin
    if not (cdsConsulta.IsEmpty) Then
     begin
          If Application.MessageBox('Confirma impressão das NF-e selecionadas?',
              'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = idNo then
               Exit;
          //
          With cdsConsulta do
          begin
               DisableControls;
               First;
               Dir := 'C:\INFOG2\PDF\';
               // Apaga diretorio
               NewZapFiles(True,'C:\INFOG2\PDF\*.PDF');
               // Cria diretorio
               if not DirectoryExists(Dir) then
                  ForceDirectories(Dir);
               //
               While not (Eof) do
               begin
                    if (FieldByName('IMPRIMIR').AsBoolean) and (FieldByName('situacao').AsInteger = 2) Then
                     begin
                          //ShowMessage('Imprimir NF-e:' + FieldByName('NTF_NUMERONOTA').AsString);
                          ImprimirNFe;
                          //
                          Sleep(300);
                     End;
                    //
                    Next;
               End;
               First;
               EnableControls;
               dmNFe.ACBrNFeDANFERaveCB1.MostrarPreview := True;
               //
               //KillTask('AcroRd32.exe');
          End;
     End;
end;

procedure TFrmGerenciarNotas.ImprimirNFe;
Var
   aArquivo, Dir, aNomeArqPDF, aUFEmpresa : String;
   wXML: TStringStream;
   iTipoDanfe : Integer;
begin
     try
       aUFEmpresa := dmDados.GetUFEmitente(uFrmPlusPdvNfe.idEmpresa);
       dmDados.FilterCDS(dmDados.cdsEmpresa, fsInteger, InttoStr(uFrmPlusPdvNfe.idEmpresa));
       // PathACBrNFeDANFERave();
       dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := dmDados.cdsEmpresacertificado_numero_serie.AsString;
       dmNFe.ACBrNFe1.Configuracoes.WebServices.UF := aUFEmpresa;
       If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
        begin
            dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
        End;
       If (dmDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
            dmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;
       //
       OpenDialog1.Title := 'Selecione a NFE';
       OpenDialog1.DefaultExt := '*-nfe.XML';
       OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
       OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
       aArquivo := OpenDialog1.InitialDir+'\'+cdsConsultachave_acesso.AsString+'-NFe.XML';
       //
       Dir := 'C:\INFOG2\PDF';
       OpenDialog1.FileName := aArquivo;
       dmNFe.ACBrNFe1.NotasFiscais.Clear;
       dmNFe.ACBrNFe1.DANFE.NFeCancelada := false;
       //
       iTipoDanfe := dmNFe.GetTipoDanfe(cdsConsultaid.AsInteger);
       if (iTipoDanfe = 1) Then
           dmNFe.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
       Else
           dmNFe.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
       {dmNFe.ACBrNFeDANFERave1.MostrarPreview := False;
       dmNFe.ACBrNFeDANFERave1.MostrarStatus  := False; }
       dmNFe.ACBrNFeDANFERaveCB1.MostrarPreview := false;
       dmNFe.ACBrNFeDANFERaveCB1.MostrarStatus := false;
       dmNFe.ACBrNFe1.DANFE.PathPDF := Dir;
       dmNFe.ACBrNFeDANFERaveCB1.NumCopias := 2;
       //
       dmNFe.ACBrNFe1.DANFE.Sistema := 'Infog2 Sistemas';
       //
       If FileExists(OpenDialog1.FileName) Then
             dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName)
       Else
       begin
              DMDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, cdsConsultaid.AsString);
              if not (dmNFe.cdsNotaFiscal.IsEmpty) Then
              begin
                  if not (dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml').IsNull) then
                  begin
                     wXML := TStringStream.Create(dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml').AsString);
                     if length(wXML.DataString) > 0 then
                        dmNFe.ACBrNFe1.NotasFiscais.LoadFromStream(wXML);
                  End
                  else
                  begin
                      wXML := TStringStream.Create('');
                      dmNFe.ACBrNFe1.NotasFiscais.Clear;
                      Application.MessageBox(PChar('Arquivo não encontrado!!!'),
                           'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                      Exit;
                      //raise Exception.Create('Arquivo não encontrado!!!');
                  End;
                  //
              End;
         End;
         //
         dmNFe.ACBrNFe1.Consultar;
         //
         aNomeArqPDF := Dir+'\'+cdsConsultachave_acesso.AsString+'.PDF';
         //dmNFe.ACBrNFe1.NotasFiscais.Imprimir;
         dmNFe.ACBrNFe1.NotasFiscais.ImprimirPDF;
         //
         ShellExecute(Handle, 'print',PChar(aNomeArqPDF), nil,nil,SW_HIDE); {imprimir direto}
         //
     Except
        {  on e: exception do
          begin
              raise Exception.Create('Erro na abertura de Base de Dados! Erro:'+#13 + E.Message);
          End;  }
     End;
end;

procedure TFrmGerenciarNotas.NewZapFiles(StDelDir: boolean;
  Caminho: string);
var SR: TSearchRec;
  Count: integer;
begin
  if DirectoryExists(ExtractFilePath(Caminho)) = False then
    ShowMessage('Diretório Inexistente!!!') else
  begin
    Count:= FindFirst(Caminho,faAnyFile,SR);
    while Count=0 do
    begin
      //Application.ProcessMessages;
      if (SR.Attr= faDirectory) then
      begin
        if (SR.Name<>'.') and (SR.Name <> '..') then
          NewZapFiles(True,ExtractFilePath(Caminho)+SR.Name+'*.*')
      end else
      begin
        if FileGetAttr(ExtractFilePath(Caminho)+SR.Name)>0 then
          FileSetAttr(ExtractFilePath(Caminho)+SR.Name, 0);
        DeleteFile(ExtractFilePath(Caminho)+SR.Name);
      end;
      Count:= FindNext(SR);
    end;
    FindClose(SR);
    if (StDelDir = True) then
        RemoveDir(ExtractFilePath(Caminho));
  end;
end;

function TFrmGerenciarNotas.KillTask(ExeFileName: string): Integer;
const 
  PROCESS_TERMINATE = $0001; 
var 
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle; 
  FProcessEntry32: TProcessEntry32;
begin 
  Result := 0; 
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32); 
  while Integer(ContinueLoop) <> 0 do 
  begin 
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = 
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = 
      UpperCase(ExeFileName))) then 
      Result := Integer(TerminateProcess( 
                        OpenProcess(PROCESS_TERMINATE, 
                                    BOOL(0), 
                                    FProcessEntry32.th32ProcessID), 
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end; 
  CloseHandle(FSnapshotHandle);
end;

function TFrmGerenciarNotas.BackupXML: Boolean;
Var
   iNumNFe : Integer;
   wXML: TStringStream;
   aNomeArquivo, aExtensao, aNomePasta : String;
begin
     Result := false;
     if (cdsConsulta.Active) and not (cdsConsulta.IsEmpty) then
     begin
           aExtensao := '-NFe.xml';
           //Memo1.Lines.Clear;
           //
           aNomePasta := ExtractFilePath( Application.ExeName )+'BackupXML';
           if not DirectoryExists(aNomePasta) then
               ForceDirectories(aNomePasta);
           //
           With cdsConsulta do
           begin
                DisableControls;
                First;
                try
                   While not (Eof) do
                   begin
                        iNumNFe := FieldByName('id').AsInteger;
                        //
                        dmDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(iNumNFe));
                        if not (dmNFe.cdsNotaFiscal.IsEmpty) Then
                        begin
                            if (dmNFe.cdsNotaFiscalsituacao.AsInteger = 2) or
                               (dmNFe.cdsNotaFiscalsituacao.AsInteger = 3) Then
                            begin
                                if not (dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml').IsNull) then
                                  begin
                                      try
                                         wXML := TStringStream.Create(dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml').AsString);
                                         //
                                         if length(wXML.DataString) > 0 then
                                         begin
                                              pnlMensagem.Caption := 'Registro(s) : '+InttoStr(dsConsultar.DataSet.RecNo)+
                                                                     '/'+InttoStr(dsConsultar.DataSet.RecordCount)+
                                                                     ' :: '+dmNFe.cdsNotaFiscal.FieldByName('chave_acesso').AsString;

                                              aNomeArquivo := dmNFe.cdsNotaFiscal.FieldByName('chave_acesso').AsString+aExtensao;
                                              //
                                              dmNFe.ACBrNFe1.NotasFiscais.Clear;
                                              dmNFe.ACBrNFe1.NotasFiscais.LoadFromStream(wXML);
                                              dmNFe.ACBrNFe1.NotasFiscais.GravarXML(aNomePasta+'\'+aNomeArquivo);
                                              //(aNomePasta+'\'+aNomeArquivo);
                                              //
                                              //Memo1.Lines.Add(aNomePasta+'\'+aNomeArquivo);
                                         End;
                                          Application.ProcessMessages;
                                      Finally
                                           wXML.Free;
                                      End;
                                  End;
                           End;
                        End;
                        //
                        Next;
                   End;
                   //
                   EnableControls;
                   Result := True;
                   //
                   pnlMensagem.Caption := 'Registro(s) : '+InttoStr(dsConsultar.DataSet.RecNo)+
                            '/'+InttoStr(dsConsultar.DataSet.RecordCount);
                Except
                       EnableControls;
                       Application.MessageBox(PChar('Erro ao tentar gerá arquivos! Erro:'),
                           'ATENÇÃO', MB_OK+MB_ICONStop+MB_APPLMODAL);
                      //raise Exception.Create('Erro ao tentar gerá arquivos! Erro:');
                End;
           End;
     End;
end;

procedure TFrmGerenciarNotas.mnuBackupXML1Click(Sender: TObject);
Var
  aNomePasta : String;
begin
     if (BackupXML()) Then
     begin
          aNomePasta := ExtractFilePath( Application.ExeName )+'BackupXML';
          //
          Application.MessageBox(PChar('Arquivo(s) gerado com sucesso na pasta: '+ aNomePasta),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     End;
end;

procedure TFrmGerenciarNotas.edtNumFinalEnter(Sender: TObject);
begin
  cdsConsulta.Close;
end;

procedure TFrmGerenciarNotas.edtNumFinalExit(Sender: TObject);
begin
  if not uFuncoes.Empty(edtNumFinal.Text) Then
    begin
       if not dmNFe.GetVerificarExisteNFe(StrtoInt(edtNumFinal.Text)) Then
        begin
             Application.MessageBox(PChar('Número de NF-e não existente.'),
                 'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
             edtNumFinal.Clear;
             edtNumFinal.SetFocus;
             Exit;
        End;
        //
        edtNumFinal.Text  := uFuncoes.StrZero(edtNumFinal.Text,9);
        //
        if (StrtoInt(edtNumFinal.Text) < StrtoInt(edtNumeroNfe.Text)) Then
        begin
             Application.MessageBox(PChar('Número de NF-e final não pode ser menor que a inicial.'),
                 'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
             edtNumFinal.Clear;
             edtNumFinal.SetFocus;
             Exit;
        End;
        //
        edtDTINIC.Clear;
        edtDTFINA.Clear;
        //
        btnConsultar.SetFocus;
    End;
end;

procedure TFrmGerenciarNotas.edtNumFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;

     //
     if (Key = #13) and not uFuncoes.Empty(edtNumeroNfe.Text) Then
     begin
          key:=#0;
          if (btnConsultar.Enabled) Then
             btnConsultar.SetFocus;
     End;

end;

procedure TFrmGerenciarNotas.CarregaNatureza;
var
    qraux : TSQLquery;
    texto : string;
begin
  {  texto := 'Select id, descricao from natureza_operacao ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := DMDados.sqlConexao;
           sql.Add(texto);
           Open;
           //
           If not (IsEmpty) Then
            begin
                 cmbNatureza.Clear;
                 First;
                 cmbNatureza.Items.Add(' ');
                 While not (Eof) do
                 begin
                      cmbNatureza.Items.Add(FieldByName('descricao').AsString);
                      //
                      Next;
                 End;
                 cmbNatureza.ItemIndex := 0;
            End;
     finally
         free;
     end;  }
     With dmNFe.cdsListaNaturezaOpr do
      begin
           if not (IsEmpty) Then
           begin
                cmbNatureza.Clear;
                First;
                cmbNatureza.Items.Add(' ');
                While not (Eof) do
                 begin
                      cmbNatureza.Items.Add(FieldByName('descricao').AsString);
                      //
                      Next;
                 End;
           End;
      End;  // With dmNFe.cdsListaNaturezaOpr do
end;

procedure TFrmGerenciarNotas.Enviar_Email_PDF(aNomePasta: String;
  aCdsListaArquivos: TClientDataSet);
Var
   aArquivo, aArquivoPDF, Dir : String;
   iTipoDanfe : Integer;
begin
    if not (cdsConsulta.IsEmpty) Then
    begin
         Dir := aNomePasta;
         //
         if not DirectoryExists(Dir) then
            ForceDirectories(Dir);
         //
       dmNFe.ACBrNFe1.DANFE.PathPDF := Dir;  
       cdsConsulta.First;
       While not (cdsConsulta.Eof) do
       begin
         If (cdsConsultasituacao.AsInteger = 2) and (cdsConsultaIMPRIMIR.AsBoolean) Then
          begin
              bFluxoArquivo := True;
              dmNFe.PathACBrNFeDANFERave();
              OpenDialog1.Title := 'Selecione a NFE';
              OpenDialog1.DefaultExt := '*-nfe.XML';
              OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
              OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
              aArquivo := OpenDialog1.InitialDir+'\'+cdsConsultachave_acesso.AsString+'-NFe.XML';

              OpenDialog1.FileName := aArquivo;
              dmNFe.ACBrNFe1.NotasFiscais.Clear;
              //
              iTipoDanfe := dmNFe.GetTipoDanfe(cdsConsultaid.AsInteger);
              If (iTipoDanfe = 1) Then
                 dmNFe.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
              Else
                 dmNFe.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
              //
              If FileExists(ExtractFilePath( Application.ExeName )+'logo.jpg') Then
                  dmNFe.ACBrNFe1.DANFE.Logo := ExtractFilePath( Application.ExeName ) + 'logo.jpg';
              dmNFe.ACBrNFe1.DANFE.Sistema := 'Infog2 Sistemas';
              //
                dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
                If not uFuncoes.Empty(cdsConsultanumero_protocolo.AsString) Then
                begin
                    dmNFe.ACBrNFe1.DANFE.ProtocoloNFe := cdsConsultanumero_protocolo.AsString;
                    //
                    dmNFe.ACBrNFe1.NotasFiscais.ImprimirPDF;
                    // Add arquivo na lista
                    Sleep(100);
                    aArquivoPDF := ExtractFilePath( Application.ExeName )+'PDF\'+cdsConsultachave_acesso.AsString+'-NFe.pdf';
                    // Dir
                    If FileExists(aArquivoPDF) Then
                    Begin
                         dmNFe.GetAddArquivoLista(cdsConsultadestinatario_cnpjcpf.AsString, aArquivoPDF);
                         AddEmailLista(aArquivoPDF);
                    End;
                    //
                    //AddEmailLista(aArquivoPDF);   // Arquivo PDF
                    AddEmailLista(aArquivo);   // Arquivo XML
                End;
           End;
         // Proximo
         cdsConsulta.Next;
       End;
       cdsConsulta.First;
    End;
end;

procedure TFrmGerenciarNotas.AddEmailLista(aArquivo: String);
var
  Arquivo: TextFile;
begin
  //ChangeFileExt('Admin_'+ufuncoes.RemoveChar(DatetoStr(Date)), '.log');
  AssignFile(Arquivo, NomeDoLista);
  if FileExists(NomeDoLista) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se não existir }
  try
    WriteLn(arquivo, aArquivo);

  finally
    CloseFile(arquivo)
  end;
end;

procedure TFrmGerenciarNotas.ApagarArquivoPDF;
var
SR: TSearchRec;
I: integer;
aPasta : String;
begin
    aPasta := ExtractFilePath( Application.ExeName )+'PDF\';
    I := FindFirst(aPasta + '*.PDF', faAnyFile, SR);
    while I = 0 do
    begin
        if (SR.Attr and faDirectory) <> faDirectory then
            if not DeleteFile(PChar(aPasta + SR.Name)) then
                ShowMessage('Não foi possível excluir '+aPasta+ SR.Name);
        I := FindNext(SR);
    end;
end;

procedure TFrmGerenciarNotas.ExcluirArquivoLista;
begin
      if FileExists(NomeDoLista) then
        DeleteFile(PChar(NomeDoLista));
     // Apagar Arquivos PDF da pasta
     ApagarArquivoPDF;
end;


procedure TFrmGerenciarNotas.cdsListaNaturezasCalcFields(
  DataSet: TDataSet);
begin
{     If (cdsListaNaturezas.State = dsInternalCalc) Then
      begin
           cdsListaNaturezas.FieldByName('STN_DESCRICAO').AsString  := dmNFe.GetDescricaoSituacaoNFe(cdsListaNaturezassituacao.asInteger);
      End;}
end;

procedure TFrmGerenciarNotas.cdsListaNfeporVendaCalcFields(
  DataSet: TDataSet);
begin
     if (cdsListaNfeporVenda.State = dsInternalcalc) Then
        cdsListaNfeporVendasituacao_descricao.AsString := dmNFe.GetDescricaoSituacaoNFe(cdsListaNfeporVendasituacao_nfe.asInteger);
end;

End.

