unit udmNFe;

interface

uses
  SysUtils, Classes, ACBrNFeDANFEClass, Forms,
  ACBrNFe, FMTBcd, DB, SqlExpr, DBClient, Provider, Math,
  Windows, Messages, Variants, XMLDoc, XMLIntf, xmldom,
  msxmldom,  pcnConversao, Dialogs, ExtCtrls, StdCtrls, pcnConversaoNFe,
  ComCtrls, OleCtrls, SHDocVw, ACBrNFeDANFeRLClass, ACBrBase, ACBrDFe;

type
  TdmNFe = class(TDataModule)
    ACBrNFe1: TACBrNFe;
    dstNotaFiscal: TSQLDataSet;
    dstNotaFiscalItens: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    dspNotaFiscalItens: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    cdsNotaFiscalid: TIntegerField;
    cdsNotaFiscalmodelo: TIntegerField;
    cdsNotaFiscalid_fornecedor: TIntegerField;
    cdsNotaFiscalid_empresa: TIntegerField;
    cdsNotaFiscalid_cliente: TIntegerField;
    cdsNotaFiscalindicador_do_emitente: TIntegerField;
    cdsNotaFiscalnum_coo: TIntegerField;
    cdsNotaFiscalaamm: TStringField;
    cdsNotaFiscalid_cfop: TIntegerField;
    cdsNotaFiscalnum_ecf: TStringField;
    cdsNotaFiscalmodelo_ecf: TStringField;
    cdsNotaFiscaldata_impressao_danfe: TSQLTimeStampField;
    cdsNotaFiscalnumero_recibo: TStringField;
    cdsNotaFiscalsituacao: TIntegerField;
    cdsNotaFiscaltipo_operacao: TIntegerField;
    cdsNotaFiscalind_pag: TIntegerField;
    cdsNotaFiscalchave_acesso: TStringField;
    cdsNotaFiscalversao_xml: TStringField;
    cdsNotaFiscaldescricao_natureza_operacao: TStringField;
    cdsNotaFiscaldata_saida_entrada: TSQLTimeStampField;
    cdsNotaFiscaldata_hora_emissao: TSQLTimeStampField;
    cdsNotaFiscalnumero_protocolo: TStringField;
    cdsNotaFiscaldata_protocolo: TSQLTimeStampField;
    cdsNotaFiscaltipo_danfe: TIntegerField;
    cdsNotaFiscalnum_lote_evento: TIntegerField;
    cdsNotaFiscalsequencia_cce: TIntegerField;
    cdsNotaFiscalvalor_itens: TFMTBCDField;
    cdsNotaFiscalvalor_desconto: TFMTBCDField;
    cdsNotaFiscalmodalidade_frete: TIntegerField;
    cdsNotaFiscalvalor_frete: TFMTBCDField;
    cdsNotaFiscalvalor_seguro: TFMTBCDField;
    cdsNotaFiscalvalor_outras_despesas: TFMTBCDField;
    cdsNotaFiscalvalor_total_servico_nao_inciden: TFMTBCDField;
    cdsNotaFiscalvalor_icms: TFMTBCDField;
    cdsNotaFiscalvalor_bc_icms: TFMTBCDField;
    cdsNotaFiscalvalor_icms_st: TFMTBCDField;
    cdsNotaFiscalvalor_bc_icms_st: TFMTBCDField;
    cdsNotaFiscalvalor_ipi: TFMTBCDField;
    cdsNotaFiscalvalor_ipi_devolvido: TFMTBCDField;
    cdsNotaFiscalvalor_ii: TFMTBCDField;
    cdsNotaFiscalvalor_pis: TFMTBCDField;
    cdsNotaFiscalvalor_pis_servico: TFMTBCDField;
    cdsNotaFiscalvalor_pis_st: TFMTBCDField;
    cdsNotaFiscalvalor_retido_pis: TFMTBCDField;
    cdsNotaFiscalvalor_cofins: TFMTBCDField;
    cdsNotaFiscalvalor_cofins_servico: TFMTBCDField;
    cdsNotaFiscalvalor_cofins_st: TFMTBCDField;
    cdsNotaFiscalvalor_retido_cofins: TFMTBCDField;
    cdsNotaFiscalvalor_bc_iss: TFMTBCDField;
    cdsNotaFiscalvalor_total_iss: TFMTBCDField;
    cdsNotaFiscalvalor_total_tributos: TFMTBCDField;
    cdsNotaFiscalvalor_total_nota: TFMTBCDField;
    cdsNotaFiscalind_inscricao_estadual_dest: TIntegerField;
    cdsNotaFiscaldestinatario_cnpjcpf: TStringField;
    cdsNotaFiscaldestinatario_razaosocial: TStringField;
    cdsNotaFiscaldestinatario_tipopessoa: TStringField;
    cdsNotaFiscaldestinatario_logradouro: TStringField;
    cdsNotaFiscaldestinatario_end_numero: TIntegerField;
    cdsNotaFiscaldestinatario_end_complemento: TStringField;
    cdsNotaFiscaldestinatario_end_bairro: TStringField;
    cdsNotaFiscaldestinatario_municipio_ibge: TIntegerField;
    cdsNotaFiscaldestinatario_nome_municipio: TStringField;
    cdsNotaFiscaldestinatario_cep: TStringField;
    cdsNotaFiscaldestinatario_telefone: TStringField;
    cdsNotaFiscaldestinatario_ie: TStringField;
    cdsNotaFiscaldestinatario_isuf: TStringField;
    cdsNotaFiscaldestinatario_email: TStringField;
    cdsNotaFiscaldestinatario_entrega_cnpjcpf: TStringField;
    cdsNotaFiscaldestinatario_entrega_logradouro: TStringField;
    cdsNotaFiscaldestinatario_entrega_numero: TIntegerField;
    cdsNotaFiscaldestinatario_entrega_bairro: TStringField;
    cdsNotaFiscalemitente_razao: TStringField;
    cdsNotaFiscalemitente_fantasia: TStringField;
    cdsNotaFiscalemitente_tipo_pessoa: TStringField;
    cdsNotaFiscalemitente_cnpj: TStringField;
    cdsNotaFiscalemitente_inscricao_suframa: TStringField;
    cdsNotaFiscalemitente_ie: TStringField;
    cdsNotaFiscalemintente_iest: TStringField;
    cdsNotaFiscalemitente_im: TStringField;
    cdsNotaFiscalemitente_cnae: TStringField;
    cdsNotaFiscalemitente_municipio_ibge: TIntegerField;
    cdsNotaFiscalemitente_nome_municipio: TStringField;
    cdsNotaFiscalemintente_end_bairro: TStringField;
    cdsNotaFiscalemitente_cep: TStringField;
    cdsNotaFiscalemitente_end_logradouro: TStringField;
    cdsNotaFiscalemitente_end_numero: TIntegerField;
    cdsNotaFiscalemitente_end_complemento: TStringField;
    cdsNotaFiscalemitente_telefone: TStringField;
    cdsNotaFiscalemitente_retirada_cnpjcpf: TStringField;
    cdsNotaFiscalemitente_retirada_municipio: TIntegerField;
    cdsNotaFiscalemitente_retirada_bairro: TStringField;
    cdsNotaFiscalemitente_retirada_logradouro: TStringField;
    cdsNotaFiscalemitente_retirada_numero: TIntegerField;
    cdsNotaFiscalemitente_retirada_complemento: TStringField;
    cdsNotaFiscalid_transportadora: TIntegerField;
    cdsNotaFiscaltransporte_cnpjcpf: TStringField;
    cdsNotaFiscaltransporte_razao: TStringField;
    cdsNotaFiscaltransporte_ie: TStringField;
    cdsNotaFiscaltransporte_endereco: TStringField;
    cdsNotaFiscaltransporte_nome_municipio: TStringField;
    cdsNotaFiscaltransporte_veiculo_num_placa: TStringField;
    cdsNotaFiscaltransporte_veiculo_rntc: TStringField;
    cdsNotaFiscaltransporte_reboque_num_placa: TStringField;
    cdsNotaFiscaltransporte_reboque_rntc: TStringField;
    cdsNotaFiscalinformacoes_adicionais_fisco: TMemoField;
    cdsNotaFiscallocal_retirada_diferente_emiten: TStringField;
    cdsNotaFiscallocal_entrega_diferente_destina: TStringField;
    cdsNotaFiscalnum_protocolo_cancelamento: TStringField;
    cdsNotaFiscaldata_cancelamento: TSQLTimeStampField;
    cdsNotaFiscaljustificativa_cancelamento: TStringField;
    cdsNotaFiscalcartao_correcao: TMemoField;
    cdsNotaFiscalid_usuario_enviou: TIntegerField;
    cdsNotaFiscalnome_computador_digitada: TStringField;
    cdsNotaFiscalnome_computador_enviou: TStringField;
    cdsNotaFiscalindicador_consumidor_final: TIntegerField;
    cdsNotaFiscalindicador_presenca_comprador: TIntegerField;
    cdsNotaFiscaldestino_operacao: TIntegerField;
    cdsNotaFiscalxml_carta: TMemoField;
    cdsNotaFiscalarquivo_xml: TMemoField;
    cdsNotaFiscalid_usuario_cadastro: TIntegerField;
    cdsNotaFiscalid_usuario_alteracao: TIntegerField;
    cdsNotaFiscaldata_cadastro: TSQLTimeStampField;
    cdsNotaFiscaldata_alteracao: TSQLTimeStampField;
    cdsNotaFiscalItens: TClientDataSet;
    cdsNotaFiscalItensid_nota_fiscal: TIntegerField;
    cdsNotaFiscalItensitem: TIntegerField;
    cdsNotaFiscalItensid_produto: TIntegerField;
    cdsNotaFiscalItensdescricao: TStringField;
    cdsNotaFiscalItensid_unidade: TStringField;
    cdsNotaFiscalItensquantidade: TFMTBCDField;
    cdsNotaFiscalItensnum_lote: TStringField;
    cdsNotaFiscalItensdescricao_complemento: TStringField;
    cdsNotaFiscalItensdata_vencimento_lote: TDateField;
    cdsNotaFiscalItensdata_fabricacao_lote: TDateField;
    cdsNotaFiscalItenspercentual_tributo: TFMTBCDField;
    cdsNotaFiscalItensorigem_produto: TIntegerField;
    cdsNotaFiscalItensvalor_unitario: TFMTBCDField;
    cdsNotaFiscalItensvalor_compra: TFMTBCDField;
    cdsNotaFiscalItensvalor_custo: TFMTBCDField;
    cdsNotaFiscalItenspercentual_desconto: TFMTBCDField;
    cdsNotaFiscalItensvalor_desconto: TFMTBCDField;
    cdsNotaFiscalItenspercentual_acrescimo: TFMTBCDField;
    cdsNotaFiscalItensvalor_acrescimo: TFMTBCDField;
    cdsNotaFiscalItensvalor_frete: TFMTBCDField;
    cdsNotaFiscalItensvalor_seguro: TFMTBCDField;
    cdsNotaFiscalItensvalor_outrasdespesas: TFMTBCDField;
    cdsNotaFiscalItensicms_simples_nacional: TIntegerField;
    cdsNotaFiscalItensaliquota_icms: TFMTBCDField;
    cdsNotaFiscalItensvalor_icms: TFMTBCDField;
    cdsNotaFiscalItensvalor_bc_icms: TFMTBCDField;
    cdsNotaFiscalItensaliquota_icms_st: TFMTBCDField;
    cdsNotaFiscalItensvalor_icms_st: TFMTBCDField;
    cdsNotaFiscalItensvalor_bc_icms_st: TFMTBCDField;
    cdsNotaFiscalItenspercentual_reducao_bc_icms_st: TFMTBCDField;
    cdsNotaFiscalItenspercentual_margem_lucro_icms_st: TFMTBCDField;
    cdsNotaFiscalItenspercentual_reducao_icms: TFMTBCDField;
    cdsNotaFiscalItensaliquota_ipi: TFMTBCDField;
    cdsNotaFiscalItensvalor_ipi: TFMTBCDField;
    cdsNotaFiscalItensvalor_bc_ipi: TFMTBCDField;
    cdsNotaFiscalItenspercentual_ipi_devolvido: TFMTBCDField;
    cdsNotaFiscalItensvalor_ipi_devolvido: TFMTBCDField;
    cdsNotaFiscalItenscst_ipi: TIntegerField;
    cdsNotaFiscalItensextipi: TStringField;
    cdsNotaFiscalItensaliquota_pis: TFMTBCDField;
    cdsNotaFiscalItensvalor_pis: TFMTBCDField;
    cdsNotaFiscalItensquantidade_bc_pis: TFMTBCDField;
    cdsNotaFiscalItensvalor_bc_pis: TFMTBCDField;
    cdsNotaFiscalItenscst_pis: TIntegerField;
    cdsNotaFiscalItensaliquota_cofins: TFMTBCDField;
    cdsNotaFiscalItensvalor_cofins: TFMTBCDField;
    cdsNotaFiscalItensquantidade_bc_cofins: TFMTBCDField;
    cdsNotaFiscalItensvalor_bc_cofins: TFMTBCDField;
    cdsNotaFiscalItenscst_cofins: TIntegerField;
    cdsNotaFiscalItensean: TStringField;
    cdsNotaFiscalItensid_ncm: TStringField;
    cdsNotaFiscalItensid_cfop: TIntegerField;
    cdsNotaFiscalItensceantrib: TStringField;
    cdsNotaFiscalItenscst_icms: TIntegerField;
    cdsNotaFiscalItensmod_bc: TIntegerField;
    cdsNotaFiscalItensmod_bc_st: TIntegerField;
    dstListas: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsListaFinalidadeEmissao: TClientDataSet;
    cdsListaFinalidadeEmissaoid: TIntegerField;
    cdsListaFinalidadeEmissaodescricao: TStringField;
    cdsListaFormaEmissao: TClientDataSet;
    cdsListaFormaEmissaoFRM_CODIGO: TIntegerField;
    cdsListaFormaEmissaoFRM_DESCRICAO: TStringField;
    cdsNotaFiscalNTF_FMEMISSAO: TStringField;
    cdsNotaFiscalNTF_FNEMISSAO: TStringField;
    cdsListaPagamento: TClientDataSet;
    cdsListaNaturezaOpr: TClientDataSet;
    cdsListaNaturezaOprid: TIntegerField;
    cdsListaNaturezaOprdescricao: TStringField;
    cdsListaDestinoOperacao: TClientDataSet;
    cdsListaTipoAtendimento: TClientDataSet;
    cdsListaCidades: TClientDataSet;
    cdsListaPagamentoid: TIntegerField;
    cdsListaPagamentodescricao: TStringField;
    cdsListaDestinoOperacaoid: TIntegerField;
    cdsListaDestinoOperacaodescricao: TStringField;
    cdsListaTipoAtendimentoid: TIntegerField;
    cdsListaTipoAtendimentodescricao: TStringField;
    cdsNotaFiscalNTF_FMPAGA: TStringField;
    cdsNotaFiscalTIPO_ATENDIMENTO: TStringField;
    cdsListaCidadesid: TIntegerField;
    cdsListaCidadesnome: TStringField;
    cdsListaCidadesuf: TStringField;
    cdsListaCidadescodigo_ibge: TIntegerField;
    cdsNotaFiscalCidadeDestinatario: TStringField;
    cdsListaNT_Ref: TClientDataSet;
    cdsListaNT_RefCDR_CODIGO: TIntegerField;
    cdsListaNT_RefCDR_ITEM: TIntegerField;
    cdsListaNT_RefCDR_TIPO_NOTA: TIntegerField;
    cdsListaNT_RefCDR_CHAVE: TStringField;
    cdsListaNT_RefCDR_SERIE: TStringField;
    cdsListaNT_RefCDR_NUMERO: TStringField;
    cdsListaNT_RefCDR_MODELO: TStringField;
    cdsListaNT_RefCDR_UF: TStringField;
    cdsListaNT_RefCDR_MESANO: TStringField;
    cdsListaNT_RefCDR_CNPJ: TStringField;
    cdsListaNT_RefCDR_DESCRICAO_TIPO: TStringField;
    cdsListaCstICMS: TClientDataSet;
    cdsListaCstIPI: TClientDataSet;
    cdsListaPIS: TClientDataSet;
    cdsListaCofins: TClientDataSet;
    cdsListaCstSimples: TClientDataSet;
    cdsListaCstICMSid: TIntegerField;
    cdsListaCstICMSdescricao: TStringField;
    cdsListaCstIPIid: TIntegerField;
    cdsListaCstIPIdescricao: TStringField;
    cdsListaPISid: TIntegerField;
    cdsListaPISdescricao: TStringField;
    cdsListaCofinsid: TIntegerField;
    cdsListaCofinsdescricao: TStringField;
    cdsListaCstSimplesid: TIntegerField;
    cdsListaCstSimplesdescricao: TStringField;
    cdsItemsNotaFiscal: TClientDataSet;
    cdsItemsNotaFiscalCDS_NRITEM: TIntegerField;
    cdsItemsNotaFiscalCDS_CDPROD: TIntegerField;
    cdsItemsNotaFiscalCDS_CODEAN: TStringField;
    cdsItemsNotaFiscalCDS_DESCRICAO: TStringField;
    cdsItemsNotaFiscalCDS_NCM: TStringField;
    cdsItemsNotaFiscalCDS_EXTIPI: TStringField;
    cdsItemsNotaFiscalCDS_CFOP: TStringField;
    cdsItemsNotaFiscalCDS_UNDCOM: TStringField;
    cdsItemsNotaFiscalCDS_QTDECOM: TFloatField;
    cdsItemsNotaFiscalCDS_VLUNITARIO: TFloatField;
    cdsItemsNotaFiscalCDS_SUBTOTAL: TFloatField;
    cdsItemsNotaFiscalCDS_GTIN: TStringField;
    cdsItemsNotaFiscalCDS_UNTRIB: TStringField;
    cdsItemsNotaFiscalCDS_QTDETRIB: TFloatField;
    cdsItemsNotaFiscalCDS_VLUNTRIB: TFloatField;
    cdsItemsNotaFiscalCDS_VLFRETE: TFloatField;
    cdsItemsNotaFiscalCDS_VLSEGURO: TFloatField;
    cdsItemsNotaFiscalCDS_VLDESCONTO: TFloatField;
    cdsItemsNotaFiscalCDS_VLACRESCIMO: TFloatField;
    cdsItemsNotaFiscalCDS_VLOUTRASDESPESAS: TFloatField;
    cdsItemsNotaFiscalCDS_INDTOT: TIntegerField;
    cdsItemsNotaFiscalCDS_BCICMS: TFloatField;
    cdsItemsNotaFiscalCDS_VLICMS: TFloatField;
    cdsItemsNotaFiscalCDS_VLIPI: TFloatField;
    cdsItemsNotaFiscalCDS_BC_IPI: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQICMS: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQIPI: TFloatField;
    cdsItemsNotaFiscalCDS_PEDESC: TFloatField;
    cdsItemsNotaFiscalCDS_PEACRE: TFloatField;
    cdsItemsNotaFiscalCDS_IDMODA_CALC_ICMS_ST: TIntegerField;
    cdsItemsNotaFiscalCDS_PERC_REDUCAO_BC_ICMS_ST: TFloatField;
    cdsItemsNotaFiscalCDS_PERC_MARGEM_LUCRO_ICMS_ST: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQUOTA_ICMS_ST: TFloatField;
    cdsItemsNotaFiscalCDS_BCICMS_ST: TFloatField;
    cdsItemsNotaFiscalCDS_VLICMS_ST: TFloatField;
    cdsItemsNotaFiscalCDS_PEREDUCAO: TFloatField;
    cdsItemsNotaFiscalCDS_BC_PIS: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQ_PIS: TFloatField;
    cdsItemsNotaFiscalCDS_VALOR_PIS: TFloatField;
    cdsItemsNotaFiscalCDS_BC_COFINS: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQ_COFINS: TFloatField;
    cdsItemsNotaFiscalCDS_VALOR_COFINS: TFloatField;
    cdsItemsNotaFiscalCDS_TAXA_REDUCAO_BC_ICMS: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQUOTA_CREDITO_ICMS_SN: TFloatField;
    cdsItemsNotaFiscalCDS_VALOR_CREDITO_ICMS_SN: TFloatField;
    cdsItemsNotaFiscalCDS_EXISTE_PRODUTO: TStringField;
    cdsItemsNotaFiscalCDS_NRLOTE: TStringField;
    cdsItemsNotaFiscalCDS_DTFABRICACAO: TDateField;
    cdsItemsNotaFiscalCDS_DTVENCIMENTO: TDateField;
    cdsItemsNotaFiscalCDS_PRECO_MAX_CONSUMIDOR: TFloatField;
    cdsItemsNotaFiscalCDS_PERC_TRIBUTO: TFloatField;
    cdsItemsNotaFiscalCDS_VTOTTRIB: TFloatField;
    cdsItemsNotaFiscalCDS_MOVIMENTA_ESTOQUE: TStringField;
    cdsItemsNotaFiscalCDS_ORIGEM_PRODUTO: TStringField;
    cdsItemsNotaFiscalCDS_PERC_MERCADORIA_DEVOLVIDA: TFloatField;
    cdsItemsNotaFiscalCDS_VALOR_IPI_DEVOLVIDO: TFloatField;
    cdsItemsNotaFiscalCDS_PERC_ESTADUAL: TFloatField;
    cdsItemsNotaFiscalCDS_PERC_MUNICIPAL: TFloatField;
    cdsItemsNotaFiscalCDS_VLTRIB_ESTADUAL: TFloatField;
    cdsItemsNotaFiscalCDS_VLTRIB_MUNICIPAL: TFloatField;
    cdsItemsNotaFiscalCDS_IPI_CST: TIntegerField;
    cdsItemsNotaFiscalCDS_CST_PIS: TIntegerField;
    cdsItemsNotaFiscalCDS_CST_COFINS: TIntegerField;
    cdsItemsNotaFiscalCDS_CSOSN: TIntegerField;
    cdsItemsNotaFiscalCST_ICMS: TStringField;
    cdsItemsNotaFiscalCST_IPI: TStringField;
    cdsItemsNotaFiscalCST_PIS: TStringField;
    cdsItemsNotaFiscalCST_COFINS: TStringField;
    cdsListaOrigemProduto: TClientDataSet;
    cdsListaOrigemProdutoid: TIntegerField;
    cdsListaOrigemProdutodescricao: TStringField;
    cdsItemsNotaFiscalCDS_DESC_ORIGEM_PRODUTO: TStringField;
    cdsVendaItensNFE: TClientDataSet;
    cdsVendaItensNFENOME_CLIENTE: TStringField;
    cdsVendaItensNFEid: TIntegerField;
    cdsVendaItensNFEcoo: TIntegerField;
    cdsVendaItensNFEid_empresa: TIntegerField;
    cdsVendaItensNFEdata_venda: TSQLTimeStampField;
    cdsVendaItensNFEsituacao: TStringField;
    cdsVendaItensNFEnumero_nfe: TIntegerField;
    cdsVendaItensNFEid_cliente: TIntegerField;
    cdsVendaItensNFEvalor_mercadorias: TFMTBCDField;
    cdsVendaItensNFEvalor_desconto: TFMTBCDField;
    cdsVendaItensNFEvalor_acrescimo: TFMTBCDField;
    cdsVendaItensNFEitem: TIntegerField;
    cdsVendaItensNFEid_produto: TIntegerField;
    cdsVendaItensNFEdescricao: TStringField;
    cdsVendaItensNFEid_ncm: TStringField;
    cdsVendaItensNFEid_unidade: TStringField;
    cdsVendaItensNFEquantidade: TFMTBCDField;
    cdsVendaItensNFEvalor_unitario: TFMTBCDField;
    cdsVendaItensNFEvalor_desconto_item: TFMTBCDField;
    cdsVendaItensNFEperc_desconto: TFMTBCDField;
    cdsVendaItensNFEvalor_acrescimo_item: TFMTBCDField;
    cdsVendaItensNFElote: TStringField;
    cdsVendaItensNFEdata_vencimento_lote: TDateField;
    cdsVendaItensNFEsubtotal: TFMTBCDField;
    cdsVendaItensNFEid_ecf: TIntegerField;
    cdsNotaFiscalNTF_NMNATUREZAOP: TStringField;
    cdsTipoContribuinte: TClientDataSet;
    cdsTipoContribuinteid: TIntegerField;
    cdsTipoContribuintedescricao: TStringField;
    cdsNotaFiscalDESTINO_OPE_DESCRICAO: TStringField;
    cdsRetiradaCidade: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    cdsEntregaCidade: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    cdsTransportadoraCidade: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField6: TIntegerField;
    cdsNotaFiscalTransportadoraNomeCidade: TStringField;
    cdsNotaFiscalTIPO_CONTRIBUINTE: TStringField;
    cdsNotaFiscaldestinatario_entrega_complement: TStringField;
    cdsNotaFiscaldestinatario_entrega_munic_ibge: TIntegerField;
    cdsNotaFiscaldestinatario_entrega_nome_munic: TStringField;
    cdsNotaFiscalemitente_retirada_nome_municipi: TStringField;
    cdsNotaFiscalinformacoes_adicionais_contribu: TMemoField;
    cdsNotaFiscalRetiradaNomeCidade: TStringField;
    cdsNotaFiscalEntregaNomeCidade: TStringField;
    cdsItemsNotaFiscalCST_SIMPLES: TStringField;
    cdsItemsNotaFiscalCDS_BC_IPI_CALC: TFloatField;
    cdsItemsNotaFiscalCDS_BC_PIS_CALC: TFloatField;
    cdsItemsNotaFiscalCDS_BC_COFINS_CALC: TFloatField;
    cdsItemsNotaFiscalCDS_CST: TIntegerField;
    cdsListaDuplicatas: TClientDataSet;
    cdsListaDuplicatasDUP_ID_NOTA_FISCAL: TIntegerField;
    cdsListaDuplicatasDUP_ITEM: TIntegerField;
    cdsListaDuplicatasnumero_fatura: TStringField;
    cdsListaDuplicatasDUP_NUMERO_DUPLICATA: TStringField;
    cdsListaDuplicatasDUP_DATA_VENCIMENTO: TDateField;
    cdsListaDuplicatasDUP_VALOR: TFloatField;
    dstDuplicatas: TSQLDataSet;
    dstDuplicatasid_nota_fiscal: TIntegerField;
    dstDuplicatasitem: TIntegerField;
    dstDuplicatasnumero_duplicata: TStringField;
    dstDuplicatasdata_vencimento: TDateField;
    dstDuplicatasvalor: TFMTBCDField;
    dspDuplicatas: TDataSetProvider;
    cdsDuplicatas: TClientDataSet;
    cdsDuplicatasid_nota_fiscal: TIntegerField;
    cdsDuplicatasitem: TIntegerField;
    cdsDuplicatasnumero_duplicata: TStringField;
    cdsDuplicatasdata_vencimento: TDateField;
    cdsDuplicatasvalor: TFMTBCDField;
    cdsListaVolumes: TClientDataSet;
    cdsListaVolumesVOL_ID_NOTA_FISCAL: TIntegerField;
    cdsListaVolumesVOL_ITEM: TIntegerField;
    cdsListaVolumesVOL_QUANTIDADE: TFloatField;
    cdsListaVolumesVOL_ESPECIE: TStringField;
    cdsListaVolumesVOL_MARCA: TStringField;
    cdsListaVolumesVOL_NUMERACAO: TStringField;
    cdsListaVolumesVOL_PESO_LIQUIDO: TFloatField;
    cdsListaVolumesVOL_PESO_BRUTO: TFloatField;
    dstVolumes: TSQLDataSet;
    dstVolumesid_nota_fiscal: TIntegerField;
    dstVolumesitem: TIntegerField;
    dstVolumesquantidade: TFMTBCDField;
    dstVolumesespecie: TStringField;
    dstVolumesmarca: TStringField;
    dstVolumesnumeracao: TStringField;
    dstVolumespeso_liquido: TFMTBCDField;
    dstVolumespeso_bruto: TFMTBCDField;
    dspVolumes: TDataSetProvider;
    cdsVolumes: TClientDataSet;
    cdsVolumesid_nota_fiscal: TIntegerField;
    cdsVolumesitem: TIntegerField;
    cdsVolumesquantidade: TFMTBCDField;
    cdsVolumesespecie: TStringField;
    cdsVolumesmarca: TStringField;
    cdsVolumesnumeracao: TStringField;
    cdsVolumespeso_liquido: TFMTBCDField;
    cdsVolumespeso_bruto: TFMTBCDField;
    dstNotaReferencia: TSQLDataSet;
    dspNotaReferencia: TDataSetProvider;
    cdsNotaReferencia: TClientDataSet;
    dstNotaReferenciaid_nota_fiscal: TIntegerField;
    dstNotaReferenciaitem: TIntegerField;
    dstNotaReferenciachave_acesso: TStringField;
    dstNotaReferencianota_serie: TStringField;
    dstNotaReferencianota_numero: TStringField;
    dstNotaReferencianota_modelo: TStringField;
    dstNotaReferencianota_uf_emissor: TStringField;
    dstNotaReferencianota_ano_mes: TStringField;
    dstNotaReferencianota_cnpj: TStringField;
    cdsNotaReferenciaid_nota_fiscal: TIntegerField;
    cdsNotaReferenciaitem: TIntegerField;
    cdsNotaReferenciachave_acesso: TStringField;
    cdsNotaReferencianota_serie: TStringField;
    cdsNotaReferencianota_numero: TStringField;
    cdsNotaReferencianota_modelo: TStringField;
    cdsNotaReferencianota_uf_emissor: TStringField;
    cdsNotaReferencianota_ano_mes: TStringField;
    cdsNotaReferencianota_cnpj: TStringField;
    dstNotaReferenciatipo_nota: TIntegerField;
    cdsNotaReferenciatipo_nota: TIntegerField;
    cdsListaOrgaoReceptor: TClientDataSet;
    cdsListaOrgaoReceptorUF: TStringField;
    cdsListaOrgaoReceptorCODIGO: TStringField;
    dstCartaCorrecao: TSQLDataSet;
    dspCartaCorrecao: TDataSetProvider;
    cdsCartaCorrecao: TClientDataSet;
    dstCartaCorrecaoid_nota_fiscal: TIntegerField;
    dstCartaCorrecaosequencia: TIntegerField;
    dstCartaCorrecaochave_acesso: TStringField;
    dstCartaCorrecaomotivo: TStringField;
    dstCartaCorrecaostatus: TIntegerField;
    dstCartaCorrecaonumero_protocolo: TStringField;
    dstCartaCorrecaodata: TSQLTimeStampField;
    dstCartaCorrecaocarta: TMemoField;
    dstCartaCorrecaoretorno_xml: TMemoField;
    cdsCartaCorrecaoid_nota_fiscal: TIntegerField;
    cdsCartaCorrecaosequencia: TIntegerField;
    cdsCartaCorrecaochave_acesso: TStringField;
    cdsCartaCorrecaomotivo: TStringField;
    cdsCartaCorrecaostatus: TIntegerField;
    cdsCartaCorrecaonumero_protocolo: TStringField;
    cdsCartaCorrecaodata: TSQLTimeStampField;
    cdsCartaCorrecaocarta: TMemoField;
    cdsCartaCorrecaoretorno_xml: TMemoField;
    cdsListaSituacao: TClientDataSet;
    cdsListaSituacaoid: TIntegerField;
    cdsListaSituacaodescricao: TStringField;
    cdsListaArquivoNfe: TClientDataSet;
    cdsListaArquivoNfeCNPJ: TStringField;
    cdsListaArquivoNfeNOME_ARQUIVO: TStringField;
    cdsListaVendasNFe: TClientDataSet;
    cdsListaVendasNFeCDS_VENDA: TIntegerField;
    cdsDuplicatasVenda: TClientDataSet;
    cdsDuplicatasVendaid: TIntegerField;
    cdsDuplicatasVendaid_empresa: TIntegerField;
    cdsDuplicatasVendaid_cliente: TIntegerField;
    cdsDuplicatasVendanum_parcela: TIntegerField;
    cdsDuplicatasVendasequencia: TIntegerField;
    cdsDuplicatasVendadata_vencimento: TDateField;
    cdsDuplicatasVendavalor_parcela: TFMTBCDField;
    cdsNotaFiscaltipo_emis: TIntegerField;
    cdsNotaFiscalfinalidade: TIntegerField;
    cdsNotaFiscalnatureza_operacao: TIntegerField;
    OpenDialog1: TOpenDialog;
    dstNotaFiscalid: TIntegerField;
    dstNotaFiscalmodelo: TIntegerField;
    dstNotaFiscalid_fornecedor: TIntegerField;
    dstNotaFiscalid_empresa: TIntegerField;
    dstNotaFiscalid_cliente: TIntegerField;
    dstNotaFiscalindicador_do_emitente: TIntegerField;
    dstNotaFiscalnum_coo: TIntegerField;
    dstNotaFiscalaamm: TStringField;
    dstNotaFiscalid_cfop: TIntegerField;
    dstNotaFiscalnum_ecf: TStringField;
    dstNotaFiscalmodelo_ecf: TStringField;
    dstNotaFiscaldata_impressao_danfe: TSQLTimeStampField;
    dstNotaFiscalnumero_recibo: TStringField;
    dstNotaFiscalsituacao: TIntegerField;
    dstNotaFiscalnatureza_operacao: TIntegerField;
    dstNotaFiscaltipo_operacao: TIntegerField;
    dstNotaFiscalind_pag: TIntegerField;
    dstNotaFiscaltipo_emis: TIntegerField;
    dstNotaFiscalchave_acesso: TStringField;
    dstNotaFiscalversao_xml: TStringField;
    dstNotaFiscaldescricao_natureza_operacao: TStringField;
    dstNotaFiscaldata_saida_entrada: TSQLTimeStampField;
    dstNotaFiscaldata_hora_emissao: TSQLTimeStampField;
    dstNotaFiscalnumero_protocolo: TStringField;
    dstNotaFiscaldata_protocolo: TSQLTimeStampField;
    dstNotaFiscalfinalidade: TIntegerField;
    dstNotaFiscaltipo_danfe: TIntegerField;
    dstNotaFiscalnum_lote_evento: TIntegerField;
    dstNotaFiscalsequencia_cce: TIntegerField;
    dstNotaFiscalvalor_itens: TFMTBCDField;
    dstNotaFiscalvalor_desconto: TFMTBCDField;
    dstNotaFiscalmodalidade_frete: TIntegerField;
    dstNotaFiscalvalor_frete: TFMTBCDField;
    dstNotaFiscalvalor_seguro: TFMTBCDField;
    dstNotaFiscalvalor_outras_despesas: TFMTBCDField;
    dstNotaFiscalvalor_total_servico_nao_inciden: TFMTBCDField;
    dstNotaFiscalvalor_icms: TFMTBCDField;
    dstNotaFiscalvalor_bc_icms: TFMTBCDField;
    dstNotaFiscalvalor_icms_st: TFMTBCDField;
    dstNotaFiscalvalor_bc_icms_st: TFMTBCDField;
    dstNotaFiscalvalor_ipi: TFMTBCDField;
    dstNotaFiscalvalor_ipi_devolvido: TFMTBCDField;
    dstNotaFiscalvalor_ii: TFMTBCDField;
    dstNotaFiscalvalor_pis: TFMTBCDField;
    dstNotaFiscalvalor_pis_servico: TFMTBCDField;
    dstNotaFiscalvalor_pis_st: TFMTBCDField;
    dstNotaFiscalvalor_retido_pis: TFMTBCDField;
    dstNotaFiscalvalor_cofins: TFMTBCDField;
    dstNotaFiscalvalor_cofins_servico: TFMTBCDField;
    dstNotaFiscalvalor_cofins_st: TFMTBCDField;
    dstNotaFiscalvalor_retido_cofins: TFMTBCDField;
    dstNotaFiscalvalor_bc_iss: TFMTBCDField;
    dstNotaFiscalvalor_total_iss: TFMTBCDField;
    dstNotaFiscalvalor_total_tributos: TFMTBCDField;
    dstNotaFiscalvalor_total_nota: TFMTBCDField;
    dstNotaFiscalind_inscricao_estadual_dest: TIntegerField;
    dstNotaFiscaldestinatario_cnpjcpf: TStringField;
    dstNotaFiscaldestinatario_razaosocial: TStringField;
    dstNotaFiscaldestinatario_tipopessoa: TStringField;
    dstNotaFiscaldestinatario_logradouro: TStringField;
    dstNotaFiscaldestinatario_end_numero: TIntegerField;
    dstNotaFiscaldestinatario_end_complemento: TStringField;
    dstNotaFiscaldestinatario_end_bairro: TStringField;
    dstNotaFiscaldestinatario_municipio_ibge: TIntegerField;
    dstNotaFiscaldestinatario_nome_municipio: TStringField;
    dstNotaFiscaldestinatario_cep: TStringField;
    dstNotaFiscaldestinatario_telefone: TStringField;
    dstNotaFiscaldestinatario_ie: TStringField;
    dstNotaFiscaldestinatario_isuf: TStringField;
    dstNotaFiscaldestinatario_email: TStringField;
    dstNotaFiscaldestinatario_entrega_cnpjcpf: TStringField;
    dstNotaFiscaldestinatario_entrega_logradouro: TStringField;
    dstNotaFiscaldestinatario_entrega_numero: TIntegerField;
    dstNotaFiscaldestinatario_entrega_complement: TStringField;
    dstNotaFiscaldestinatario_entrega_bairro: TStringField;
    dstNotaFiscaldestinatario_entrega_munic_ibge: TIntegerField;
    dstNotaFiscaldestinatario_entrega_nome_munic: TStringField;
    dstNotaFiscalemitente_razao: TStringField;
    dstNotaFiscalemitente_fantasia: TStringField;
    dstNotaFiscalemitente_tipo_pessoa: TStringField;
    dstNotaFiscalemitente_cnpj: TStringField;
    dstNotaFiscalemitente_inscricao_suframa: TStringField;
    dstNotaFiscalemitente_ie: TStringField;
    dstNotaFiscalemintente_iest: TStringField;
    dstNotaFiscalemitente_im: TStringField;
    dstNotaFiscalemitente_cnae: TStringField;
    dstNotaFiscalemitente_municipio_ibge: TIntegerField;
    dstNotaFiscalemitente_nome_municipio: TStringField;
    dstNotaFiscalemintente_end_bairro: TStringField;
    dstNotaFiscalemitente_cep: TStringField;
    dstNotaFiscalemitente_end_logradouro: TStringField;
    dstNotaFiscalemitente_end_numero: TIntegerField;
    dstNotaFiscalemitente_end_complemento: TStringField;
    dstNotaFiscalemitente_telefone: TStringField;
    dstNotaFiscalemitente_retirada_cnpjcpf: TStringField;
    dstNotaFiscalemitente_retirada_municipio: TIntegerField;
    dstNotaFiscalemitente_retirada_nome_municipi: TStringField;
    dstNotaFiscalemitente_retirada_bairro: TStringField;
    dstNotaFiscalemitente_retirada_logradouro: TStringField;
    dstNotaFiscalemitente_retirada_numero: TIntegerField;
    dstNotaFiscalemitente_retirada_complemento: TStringField;
    dstNotaFiscalid_transportadora: TIntegerField;
    dstNotaFiscaltransporte_cnpjcpf: TStringField;
    dstNotaFiscaltransporte_razao: TStringField;
    dstNotaFiscaltransporte_ie: TStringField;
    dstNotaFiscaltransporte_endereco: TStringField;
    dstNotaFiscaltransporte_nome_municipio: TStringField;
    dstNotaFiscaltransporte_veiculo_num_placa: TStringField;
    dstNotaFiscaltransporte_veiculo_rntc: TStringField;
    dstNotaFiscaltransporte_reboque_num_placa: TStringField;
    dstNotaFiscaltransporte_reboque_rntc: TStringField;
    dstNotaFiscalinformacoes_adicionais_fisco: TMemoField;
    dstNotaFiscalinformacoes_adicionais_contribu: TMemoField;
    dstNotaFiscallocal_retirada_diferente_emiten: TStringField;
    dstNotaFiscallocal_entrega_diferente_destina: TStringField;
    dstNotaFiscalnum_protocolo_cancelamento: TStringField;
    dstNotaFiscaldata_cancelamento: TSQLTimeStampField;
    dstNotaFiscaljustificativa_cancelamento: TStringField;
    dstNotaFiscalcartao_correcao: TMemoField;
    dstNotaFiscalid_usuario_enviou: TIntegerField;
    dstNotaFiscalnome_computador_digitada: TStringField;
    dstNotaFiscalnome_computador_enviou: TStringField;
    dstNotaFiscalindicador_consumidor_final: TIntegerField;
    dstNotaFiscalindicador_presenca_comprador: TIntegerField;
    dstNotaFiscaldestino_operacao: TIntegerField;
    dstNotaFiscalxml_carta: TMemoField;
    dstNotaFiscalarquivo_xml: TMemoField;
    dstNotaFiscalid_usuario_cadastro: TIntegerField;
    dstNotaFiscalid_usuario_alteracao: TIntegerField;
    dstNotaFiscaldata_cadastro: TSQLTimeStampField;
    dstNotaFiscaldata_alteracao: TSQLTimeStampField;
    dstNotaFiscalnumero_nota_fiscal: TIntegerField;
    dstNotaFiscalserie: TIntegerField;
    dstNotaFiscaldv_chave_acesso: TIntegerField;
    dstNotaFiscalcodigo_numerico_chave_acesso: TIntegerField;
    dstNotaFiscalemintente_crt: TIntegerField;
    dstNotaFiscalemitente_uf: TIntegerField;
    dstNotaFiscalemitente_retirada_uf: TIntegerField;
    dstNotaFiscaldestinatario_uf: TIntegerField;
    dstNotaFiscaldestinatario_entrega_uf: TIntegerField;
    dstNotaFiscaltransporte_uf: TIntegerField;
    dstNotaFiscaltransporte_veiculo_uf: TIntegerField;
    dstNotaFiscaltransporte_reboque_uf: TIntegerField;
    dstNotaFiscalvalor_icms_desonerado: TFMTBCDField;
    dstNotaFiscaldata_prestacao_servico: TDateField;
    dstNotaFiscaldeducao_bc_issqn: TFMTBCDField;
    dstNotaFiscaloutras_reducoes_issqn: TFMTBCDField;
    dstNotaFiscaldesc_incondicional_issqn: TFMTBCDField;
    dstNotaFiscaldesc_condicional_issqn: TFMTBCDField;
    dstNotaFiscalvalor_retencao_iss: TFMTBCDField;
    dstNotaFiscalregime_especial: TIntegerField;
    cdsNotaFiscalnumero_nota_fiscal: TIntegerField;
    cdsNotaFiscalserie: TIntegerField;
    cdsNotaFiscalcodigo_numerico_chave_acesso: TIntegerField;
    cdsNotaFiscaldv_chave_acesso: TIntegerField;
    cdsNotaFiscaldestinatario_uf: TIntegerField;
    cdsNotaFiscaldestinatario_entrega_uf: TIntegerField;
    cdsNotaFiscalemintente_crt: TIntegerField;
    cdsNotaFiscalemitente_uf: TIntegerField;
    cdsNotaFiscalemitente_retirada_uf: TIntegerField;
    cdsNotaFiscaltransporte_uf: TIntegerField;
    cdsNotaFiscaltransporte_veiculo_uf: TIntegerField;
    cdsNotaFiscaltransporte_reboque_uf: TIntegerField;
    dstNotaFiscalItensid_nota_fiscal: TIntegerField;
    dstNotaFiscalItensitem: TIntegerField;
    dstNotaFiscalItensid_produto: TIntegerField;
    dstNotaFiscalItensdescricao: TStringField;
    dstNotaFiscalItensid_unidade: TStringField;
    dstNotaFiscalItensquantidade: TFMTBCDField;
    dstNotaFiscalItensnum_lote: TStringField;
    dstNotaFiscalItensdescricao_complemento: TStringField;
    dstNotaFiscalItensdata_vencimento_lote: TDateField;
    dstNotaFiscalItensdata_fabricacao_lote: TDateField;
    dstNotaFiscalItenspercentual_tributo: TFMTBCDField;
    dstNotaFiscalItensorigem_produto: TIntegerField;
    dstNotaFiscalItensvalor_unitario: TFMTBCDField;
    dstNotaFiscalItensvalor_compra: TFMTBCDField;
    dstNotaFiscalItensvalor_custo: TFMTBCDField;
    dstNotaFiscalItenspercentual_desconto: TFMTBCDField;
    dstNotaFiscalItensvalor_desconto: TFMTBCDField;
    dstNotaFiscalItenspercentual_acrescimo: TFMTBCDField;
    dstNotaFiscalItensvalor_acrescimo: TFMTBCDField;
    dstNotaFiscalItensvalor_frete: TFMTBCDField;
    dstNotaFiscalItensvalor_seguro: TFMTBCDField;
    dstNotaFiscalItensvalor_outrasdespesas: TFMTBCDField;
    dstNotaFiscalItensicms_simples_nacional: TIntegerField;
    dstNotaFiscalItensaliquota_icms: TFMTBCDField;
    dstNotaFiscalItensvalor_icms: TFMTBCDField;
    dstNotaFiscalItensvalor_bc_icms: TFMTBCDField;
    dstNotaFiscalItensaliquota_icms_st: TFMTBCDField;
    dstNotaFiscalItensvalor_icms_st: TFMTBCDField;
    dstNotaFiscalItensvalor_bc_icms_st: TFMTBCDField;
    dstNotaFiscalItenspercentual_reducao_bc_icms_st: TFMTBCDField;
    dstNotaFiscalItenspercentual_margem_lucro_icms_st: TFMTBCDField;
    dstNotaFiscalItenspercentual_reducao_icms: TFMTBCDField;
    dstNotaFiscalItensaliquota_ipi: TFMTBCDField;
    dstNotaFiscalItensvalor_ipi: TFMTBCDField;
    dstNotaFiscalItensvalor_bc_ipi: TFMTBCDField;
    dstNotaFiscalItenspercentual_ipi_devolvido: TFMTBCDField;
    dstNotaFiscalItensvalor_ipi_devolvido: TFMTBCDField;
    dstNotaFiscalItenscst_ipi: TIntegerField;
    dstNotaFiscalItensextipi: TStringField;
    dstNotaFiscalItensaliquota_pis: TFMTBCDField;
    dstNotaFiscalItensvalor_pis: TFMTBCDField;
    dstNotaFiscalItensquantidade_bc_pis: TFMTBCDField;
    dstNotaFiscalItensvalor_bc_pis: TFMTBCDField;
    dstNotaFiscalItenscst_pis: TIntegerField;
    dstNotaFiscalItensaliquota_cofins: TFMTBCDField;
    dstNotaFiscalItensvalor_cofins: TFMTBCDField;
    dstNotaFiscalItensquantidade_bc_cofins: TFMTBCDField;
    dstNotaFiscalItensvalor_bc_cofins: TFMTBCDField;
    dstNotaFiscalItenscst_cofins: TIntegerField;
    dstNotaFiscalItensean: TStringField;
    dstNotaFiscalItensid_ncm: TStringField;
    dstNotaFiscalItensid_cfop: TIntegerField;
    dstNotaFiscalItensceantrib: TStringField;
    dstNotaFiscalItenscst_icms: TIntegerField;
    dstNotaFiscalItensmod_bc: TIntegerField;
    dstNotaFiscalItensmod_bc_st: TIntegerField;
    dstNotaFiscalItensindtot: TBooleanField;
    dstNotaFiscalItensvalor_icms_desonerado: TFMTBCDField;
    dstNotaFiscalItensmotivo_desoneracao_icms: TIntegerField;
    dstNotaFiscalItensvalor_icms_operacao: TFMTBCDField;
    dstNotaFiscalItensper_diferimento_icms: TFMTBCDField;
    dstNotaFiscalItensvalor_icms_diferido: TFMTBCDField;
    cdsNotaFiscalItensindtot: TBooleanField;
    cdsListaUfEmitente: TClientDataSet;
    cdsListaUfEmitenteEUF_CODIGO: TIntegerField;
    cdsListaUfEmitenteEUF_SIGLA: TStringField;
    cdsListaUfEmitenteEUF_DESCRICAO: TStringField;
    cdsNotaFiscalUF_EMITENTE: TStringField;
    cdsListaUFEmitenteRet: TClientDataSet;
    cdsListaUFDestinatario: TClientDataSet;
    cdsListaUFEmitenteRetEUF_CODIGO: TIntegerField;
    cdsListaUFEmitenteRetEUF_SIGLA: TStringField;
    cdsListaUFEmitenteRetEUF_DESCRICAO: TStringField;
    cdsListaUFDestinatarioEUF_CODIGO: TIntegerField;
    cdsListaUFDestinatarioEUF_SIGLA: TStringField;
    cdsListaUFDestinatarioEUF_DESCRICAO: TStringField;
    cdsNotaFiscalUF_DESTINATARIO: TStringField;
    cdsNotaFiscalUF_EMITENTE_RET: TStringField;
    cdsListaUFDestinatarioEnt: TClientDataSet;
    cdsListaUFDestinatarioEntEUF_CODIGO: TIntegerField;
    cdsListaUFDestinatarioEntEUF_SIGLA: TStringField;
    cdsListaUFDestinatarioEntEUF_DESCRICAO: TStringField;
    cdsNotaFiscalUF_DESTINATARIO_ENTREGA: TStringField;
    cdsListaUFTransporte: TClientDataSet;
    cdsListaUFVeiculo: TClientDataSet;
    cdsListaUF_Reboque: TClientDataSet;
    cdsListaUFTransporteEUF_CODIGO: TIntegerField;
    cdsListaUFTransporteEUF_SIGLA: TStringField;
    cdsListaUFTransporteEUF_DESCRICAO: TStringField;
    cdsNotaFiscalUF_TRANSPORTE: TStringField;
    cdsListaUF_ReboqueEUF_CODIGO: TIntegerField;
    cdsListaUF_ReboqueEUF_SIGLA: TStringField;
    cdsListaUF_ReboqueEUF_DESCRICAO: TStringField;
    cdsNotaFiscalUF_REBOQUE: TStringField;
    cdsListaUFVeiculoEUF_CODIGO: TIntegerField;
    cdsListaUFVeiculoEUF_SIGLA: TStringField;
    cdsListaUFVeiculoEUF_DESCRICAO: TStringField;
    cdsNotaFiscalUF_VEICULO: TStringField;
    cdsItemsNotaFiscalCDS_VALOR_ICMS_DESONERADO: TFloatField;
    cdsItemsNotaFiscalCDS_MOTIVO_DESONERACAO_ICMS: TIntegerField;
    cdsMotivoDesoneracao: TClientDataSet;
    cdsMotivoDesoneracaoid: TIntegerField;
    cdsMotivoDesoneracaodescricao: TStringField;
    cdsItemsNotaFiscalCDS_DESC_MOT_DESONER_ICMS: TStringField;
    ACBrNFeDANFERaveCB1: TACBrNFeDANFeRL;
    cdsItemsNotaFiscalCDS_MODALIDADE_BC_ICMS: TIntegerField;
    cdsListaModbcICMS: TClientDataSet;
    cdsListaModbcICMS_ST: TClientDataSet;
    cdsListaModbcICMSMBC_CODIGO: TIntegerField;
    cdsListaModbcICMSMBC_DESCRICAO: TStringField;
    cdsListaModbcICMS_STMBC_CODIGO: TIntegerField;
    cdsListaModbcICMS_STMBC_DESCRICAO: TStringField;
    cdsItemsNotaFiscalCDS_MOD_BC_ICMS_DESCRICAO: TStringField;
    cdsItemsNotaFiscalCDS_MOD_BC_ICMS_ST_DESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsVendaItensNFECalcFields(DataSet: TDataSet);
    procedure cdsItemsNotaFiscalCalcFields(DataSet: TDataSet);
    procedure cdsListaNT_RefCalcFields(DataSet: TDataSet);
    procedure ACBrNFe1StatusChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CarregarlistaCST_ICMS();
    Procedure CarregarlistaCST_IPI();
    Procedure CarregarlistaCST_PIS();
    Procedure CarregarlistaCST_COFINS();
    Procedure CarregarlistaCST_SIMPLES();
    Procedure CarregarlistaOrigemProduto();
    Function VerificaNumeroVendaNFe(iVenda : Integer): Boolean;
    Function GetAbrirVenda(iVenda : Integer): Boolean;
    Function GetCPFCNPJCliente(iCodCliente : Integer): String;
    Function AddRegistroNotaReferencia(iCodigoNFe, iItem, iTipoNF : Integer;
              aCHAVE,  aSERIE, aNUMERO, aMODELO, aUF , aMESANO, aCNPJ : String): Boolean;
    Function CarregarRegistroNotaReferencia(idNota : Integer; aCDsItens : TClientDataSet): Boolean;
    Function SalvarRegistroNotaReferencia(idNota : Integer; aCDsItens : TClientDataSet): Boolean;

    Function ExcluiRegistroNotaReferencia(idNota : Integer): Boolean;

    //
    Procedure CarregarListaFormaPagamento();
    Procedure CarregarTipodeContribuinte();
    Procedure CarregarListaFormaEmissao();
    Procedure CarregarListaFinalidadeEmissao();
    Procedure CarregarListaDestinoOperacao();
    Procedure CarregarListaTipoAtendimento();
    Procedure CarregarListaTipodeContribuinte();
    Procedure CarregarListaSituacaoNFe();
    //
    procedure Abrir_Tabela_Itens;
    procedure AbrirTabelaCobranca(iNota : Integer);
    Function CarregarItensNota(iCodigoNota : Integer; aUFEmissor : String) : Boolean;
    //
    Function ExcluirDuplicatas(idNota : Integer) : Boolean;
    Function ExcluirVolumes(idNota : Integer) : Boolean;
    //
    Function AddItemNota(pNRITEM : Integer;
                         pCDPROD, pCODEAN, pDESCRICAO, pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB : String;
                         pQTDECOM, pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO, pVLACRESCIMO, pVLOUTRASDESPESAS : Double;
                         pINDTOT : Integer;
                         pBCICMS, pVLICMS, pVLIPI, pALIQICMS, pALIQIPI, pBCIPI, pPERCENTUAL_REDUCAO : Double;
                         aCST, aTipoDesc : String; aLote, aDtFabricacao, aDtVencimento : String) : Boolean;

    Function ExcluirItemNota(iNota, iItem : Integer; aProduto : String): Boolean;
    Procedure AtualizarNumItens(aCDS : TClientDataSet);
    Function GetCodigoCNPJCPFInt(aCNPJCPF, aCampoPesquisa, aCampoRetorno, aTabela : String) : Integer;
    Function GetValorNotaFiscal(aCDSItens : TClientDataSet): Double;
    //
    Function SetStatusLoteEmProcessamento(iNotaFiscal, iSituacao : Integer) : Boolean;
    Function SetFreteItensNFe(aCDS : TClientDataSet; fValorFrete : Double): Boolean;
    Function SetOutrasDepesasItensNFe(aCDS : TClientDataSet; fValorOutrasDespesas : Double): Boolean;
    Function SetDescontosItensNFe(aCDS : TClientDataSet; fValorDesconto : Double): Boolean;
    Function GetDescricaoSituacaoNFe(iCodSituacao : Integer): String;
    //
    Procedure FormatarCamposCasasDecimais();
    //
    Procedure AbrirListaCidadeUF(aUF: String; aCDsCidades : TClientDataSet);
    Function GravarItensNotaFiscal(iCodNota : Integer; aCDSItens : TClientDataSet) : Boolean;
    Function ExcluitItensNotaFiscal(iCodNota : Integer) : Boolean;
    Function VerificaItemNota(iCodigoNota, iItem : Integer; aProduto : String) : Boolean;

    Procedure AbrirVolumesNota(iCodNota : Integer);
    Function GetStatusdaNota(iNota, idEmitente : Integer) : Integer;

    Procedure CarregarOrgaoReceptorNfe();
    Function GetOrgaoReceptorNfe(aUF : String): Integer;

    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    Function GravaCartaCorrecao(iCodNfe, iSeq, iStatus : Integer; aChave, aMotivo,
                 aProtocolo, aHora, aCarta, aRetornoWS : String; aDataMov : TDatetime ): Boolean;

    Function GetCodigoFormaEmissao(aDescricao : String) : Integer;
    Function GetDescricaoFormaEmissao(idFormaEmissao : Integer ) : String;
    function GetCodigoSituacaoNota(aDescricao: String): Integer;
    function GetCodNaturezaOperacao(aDescricao: String): Integer;

    //
    Function GetVerificaExisteClienteNFe(iNumeroNota : Integer): Boolean;
    Function LimparChaveNotaFiscal(iNotaFiscal : Integer) : Boolean;
    Function GetProtocoloNota(iNota : Integer): String;

    Function SetStatusNotaFiscal(iNotaFiscal, aStatus : Integer) : Boolean;
    Function SetChaveNotaFiscal(iNotaFiscal, idUsuario : Integer; aChave : String) : Boolean;

    Function SetAtualizarRegistroNotaFiscal(iNotaFiscal, iSituacao : Integer; anRec, aProtocolo : String) : Boolean;
    Function InserirXMLdaNFe(iCodNFe : Integer; PathArquivoXML: String): Boolean;

    Function SetCancelarNotaFiscal(iNotaFiscal, iSituacao : Integer; aData : TDateTime; aProtocolo, aHora, aJustificativa : String) : Boolean;
    procedure PathACBrNFeDANFERave();
    Function GetChaveNotaFiscal(iNotaFiscal : Integer) : Boolean;

    Procedure ConsultaNfe(iCodigo : Integer);
    Function GetProtocoloNF2(iNota : Integer; aProtocolo : String) : Boolean;

    Function GetTipoDanfe(iCodigoNfe : Integer): Integer;
    Function GetVerificarDescricaoSit(aDescricao : String): Integer;
    Function SetStatusdaNotaInutilizada(iStatus, iNotaInicial, iNotaFinal : Integer;
             aProtocolo : String; idEmitente : Integer; aSerie : String) : Boolean;
    Function SetInutizarNFe(aNumeroNFe, aSerie, aProtocolo : String; idEmitente : Integer): Boolean;

    Function ExcluirItemNfe(idSeqNFe : Integer): Boolean;
    Function GetSEQUENCIA_CCE_NF_E(iCodigo : Integer): Integer;

    Function GerarXMLNFe(iCodigoNFe : Integer; aSoImprimir : String; idUsuario : Integer) : Boolean;
    Function GetVerificarExisteNFe(iNumNota : Integer):Boolean;
    Function GetAddArquivoLista(aCNPJ, aFile : String): Boolean;

    //
    Function GetNaturezaVenda(idNatureza : Integer): Boolean;
    Function GetChaveIBPT(aNCM, aUF : String): String;

    Function GetExisteItensNota(iCodigoNFe : Integer ) : Boolean;
    Function GetCFOPVendaImportacao(aCPFCNPJCliente , aUFEmitente : String): String;
    Function AtualizarListaVendaNFe(iNumNFe : Integer; aCDS : TClientDataSet): Boolean;
    Function AtualizarIdNFeVenda(iNumNFe, iVenda, iSequencia : Integer): Boolean;
    Procedure LimparListaVenda();
    Function AddNumeroVenda(iVenda : Integer): Boolean;
    Procedure AtualizarQuantidadeVolume(idNota : Integer; aCdsItens : TClientDataSet);
    //
    Procedure CarregarlistaNatureza_Operacao();
    Procedure CarregarListaUFs(aCdsItens : TClientDataSet);
    Procedure CarregarListaUFEmitente();
    Procedure CarregarListaUFDestinatario();
    Procedure CarregarListaUFEmitenteRet();
    Procedure CarregarListaUFDestinatarioEntrega();
    Procedure CarregarListaUFTransporte();
    Procedure CarregarListaUFVeiculo();
    Procedure CarregarListaUFReboque();
    Procedure CarregarListaMotivosDesoneracao();
    Procedure CarregarListaModalidadesBC_ICMS();
    Procedure CarregarListaModalidadesBC_ICMS_ST();
    Function GetUf(aCodigo : String; aCdsLista : TClientDataSet): String;
    Function GetCodigoUF(aUF : String; aCdsLista : TClientDataSet): String;
  end;

var
  dmNFe: TdmNFe;
  aProtocoloRetorno : String;

implementation

uses udmDados, uFuncoes, uFrmPlusPdvNfe, ufrmStatus;

{$R *.dfm}

procedure TdmNFe.AbrirTabelaCobranca(iNota: Integer);
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select * from nota_fiscal_duplicata where (id_nota_fiscal = :pnota) order by item';
     dmDados.RefreshCDS(cdsListaDuplicatas);
     cdsListaDuplicatas.EmptyDataSet;
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := dmDados.sqlConexao;
         sql.Add(texto);
         Params[0].AsInteger := iNota;
         Open;
         //
         if not (IsEmpty) then
           begin
                While not (Eof) do
                 begin
                      cdsListaDuplicatas.Append;
                      cdsListaDuplicatasDUP_ID_NOTA_FISCAL.AsInteger  := iNota;
                      cdsListaDuplicatasDUP_ITEM.AsInteger            := Fieldbyname('item').AsInteger;
                      cdsListaDuplicatasDUP_NUMERO_DUPLICATA.AsString := Fieldbyname('numero_duplicata').AsString;
                      cdsListaDuplicatasDUP_DATA_VENCIMENTO.AsDateTime:= Fieldbyname('data_vencimento').AsDateTime;
                      cdsListaDuplicatasDUP_VALOR.AsFloat             := Fieldbyname('valor').AsFloat;
                      //
                      cdsListaDuplicatas.Post;
                      //
                      Next;
                 End;
                 //
                 cdsListaDuplicatas.First;
           End;
       finally
         free;
       end;
end;

procedure TdmNFe.Abrir_Tabela_Itens;
begin
    dmDados.RefreshCDS(cdsItemsNotaFiscal);
    cdsItemsNotaFiscal.EmptyDataSet;
end;

function TdmNFe.AddItemNota(pNRITEM: Integer; pCDPROD, pCODEAN, pDESCRICAO,
  pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB: String; pQTDECOM,
  pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO,
  pVLACRESCIMO, pVLOUTRASDESPESAS: Double; pINDTOT: Integer; pBCICMS,
  pVLICMS, pVLIPI, pALIQICMS, pALIQIPI, pBCIPI,
  pPERCENTUAL_REDUCAO: Double; aCST, aTipoDesc, aLote, aDtFabricacao,
  aDtVencimento: String): Boolean;
Var
    M_BC_ICMSST, M_BCIPI, M_VLICMS_ST, M_MARGE_LUCRO_ST, M_ALIQST : Double;
    aCstIPI : String;
begin
     Result := false;
     if not (cdsItemsNotaFiscal.Active) Then
        cdsItemsNotaFiscal.Open;
     //
      With cdsItemsNotaFiscal do
      begin
           Append;
           FieldByName('CDS_NRITEM').AsInteger := pNRITEM;
           FieldByName('CDS_CDPROD').AsString  := pCDPROD;
           FieldByName('CDS_CODEAN').AsString  := pCODEAN;
           FieldByName('CDS_DESCRICAO').AsString := pDESCRICAO;
           FieldByName('CDS_NCM').AsString     := pNCM;
           FieldByName('CDS_EXTIPI').AsString  := pEXTIPI;
           FieldByName('CDS_CFOP').AsString    := pCFOP;
           FieldByName('CDS_UNDCOM').AsString  := pUNDCOM;
           FieldByName('CDS_QTDECOM').AsFloat  := pQTDECOM;
           FieldByName('CDS_VLUNITARIO').AsFloat := pVLUNTRIB;
           FieldByName('CDS_GTIN').AsString    := pGTIN;
           FieldByName('CDS_UNTRIB').AsString  := pUNTRIB;
           FieldByName('CDS_QTDETRIB').AsFloat := pQTDETRIB;
           FieldByName('CDS_VLUNTRIB').AsFloat := pVLUNTRIB;
           FieldByName('CDS_VLFRETE').AsFloat  := pVLFRETE;
           FieldByName('CDS_VLSEGURO').AsFloat := pVLSEGURO;
           If (pVLDESCONTO > 0) Then
           begin
               If (aTipoDesc = '%') Then
               begin
                   FieldByName('CDS_PEDESC').AsFloat     := pVLDESCONTO;
                   FieldByName('CDS_VLDESCONTO').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(
                               (pVLUNTRIB * pQTDECOM), pVLDESCONTO),2);
               End
               Else
               begin
                    {FieldByName('CDS_PEDESC').AsFloat     := 0;
                    FieldByName('CDS_VLDESCONTO').AsFloat := pVLDESCONTO; }
                    //
                    FieldByName('CDS_VLDESCONTO').AsFloat :=  pVLDESCONTO;
                    FieldByName('CDS_PEDESC').AsFloat     :=  uFuncoes.Arredondar((pVLDESCONTO * 100)/pVLUNTRIB * pQTDECOM,2);
               End;
           End
           Else
           begin
                FieldByName('CDS_PEDESC').AsFloat     := 0;
                FieldByName('CDS_VLDESCONTO').AsFloat := 0;
           End;
           //
           if (pVLACRESCIMO > 0) Then
           begin
                FieldByName('CDS_PEACRE').AsFloat      := pVLACRESCIMO;
                FieldByName('CDS_VLACRESCIMO').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(
                               (pVLUNTRIB * pQTDECOM), pVLACRESCIMO),2);
           End
           Else
           begin
                FieldByName('CDS_PEACRE').AsFloat      := 0;
                FieldByName('CDS_VLACRESCIMO').AsFloat := 0;
           End;
           FieldByName('CDS_VLOUTRASDESPESAS').AsFloat := pVLOUTRASDESPESAS;
           FieldByName('CDS_INDTOT').AsInteger := pINDTOT;
           FieldByName('CDS_BCICMS').AsFloat   := pBCICMS;
           FieldByName('CDS_VLICMS').AsFloat   := pVLICMS;
           FieldByName('CDS_ALIQICMS').AsFloat := pALIQICMS;
           // IPI
           FieldByName('CDS_BC_IPI').AsFloat   := 0;
           FieldByName('CDS_ALIQIPI').AsFloat  := pALIQIPI;
           if (pALIQIPI > 0) Then
            begin
                FieldByName('CDS_BC_IPI').AsFloat   := pBCIPI;
                FieldByName('CDS_BC_IPI_CALC').AsFloat := pBCIPI;
                //(pVLUNTRIB * pQTDECOM )- FieldByName('CDS_VLDESCONTO').AsFloat;
                FieldByName('CDS_VLIPI').AsFloat    := pVLIPI;
            End
           Else
               FieldByName('CDS_VLIPI').AsFloat    := 0;
           //    
           aCstIPI := uFuncoes.StrZero(InttoStr(dmDados.GetCST_IPI(StrToInt(pCDPROD))),2);
           if not uFuncoes.Empty(aCstIPI) Then
           begin
               FieldByName('CDS_IPI_CST').AsString  := aCstIPI;
               //
               if (aCstIPI = '51') or (aCstIPI = '52') or (aCstIPI = '53')  Then  // or (aCstIPI = '99')
               begin
                    FieldByName('CDS_VLIPI').AsFloat    := 0;
                    FieldByName('CDS_ALIQIPI').AsFloat  := 0;
               End;
           End
           Else
               FieldByName('CDS_IPI_CST').AsString := '99';
           //
           {FieldByName('CDS_BCICMS_ST').AsFloat := 0;
           FieldByName('CDS_VLICMS_ST').AsFloat := 0;}
           FieldByName('CDS_CST').AsString      := aCST;
           FieldByName('CDS_PEREDUCAO').AsFloat := pPERCENTUAL_REDUCAO;
           //  Medicamento
           If not ufuncoes.Empty(aLote) Then
              FieldByName('CDS_NRLOTE').AsString := aLote;
           If not ufuncoes.Empty(aDtFabricacao) Then
              FieldByName('CDS_DTFABRICACAO').AsDateTime:= StrtoDate(aDtFabricacao);
           If not ufuncoes.Empty(aDtVencimento) Then
              FieldByName('CDS_DTVENCIMENTO').AsDateTime := StrtoDate(aDtVencimento);
           // Pis/Cofins
           if (DMDados.cdsConfigativa_sped_pis_cofins.AsBoolean) Then
           begin
                //
                if (pCFOP = '5929') or (pCFOP = '6929') Then
                begin
                     // PIS
                     FieldByName('CDS_CST_PIS').AsInteger := 49;
                     FieldByName('CDS_BC_PIS').AsFloat    := 0;
                     FieldByName('CDS_ALIQ_PIS').AsFloat  := DMDados.GetAliquotaPis(StrtoInt(pCDPROD));
                     FieldByName('CDS_VALOR_PIS').AsFloat := 0;
                     // COFINS
                     FieldByName('CDS_CST_COFINS').AsInteger := 49;
                     FieldByName('CDS_BC_COFINS').AsFloat    := 0;
                     FieldByName('CDS_ALIQ_COFINS').AsFloat  := DMDados.GetAliquotaCofins(StrtoInt(pCDPROD));
                     FieldByName('CDS_VALOR_COFINS').AsFloat := 0;
                End
                Else
                begin
                     FieldByName('CDS_CST_PIS').AsInteger := DMDados.GetCST_PIS(StrtoInt(pCDPROD));
                     FieldByName('CDS_BC_PIS').AsFloat    := FieldByName('CDS_SUBTOTAL').AsFloat;
                     FieldByName('CDS_ALIQ_PIS').AsFloat  := DMDados.GetAliquotaPis(StrtoInt(pCDPROD));
                     if (FieldByName('CDS_ALIQ_PIS').AsFloat > 0) Then
                        FieldByName('CDS_VALOR_PIS').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FieldByName('CDS_BC_PIS').AsFloat, FieldByName('CDS_ALIQ_PIS').AsFloat), udmDados.iCasasDecimais);
                     //
                     FieldByName('CDS_CST_COFINS').AsInteger := DMDados.GetCST_COFINS(StrtoInt(pCDPROD));
                     FieldByName('CDS_BC_COFINS').AsFloat    := FieldByName('CDS_SUBTOTAL').AsFloat;
                     FieldByName('CDS_ALIQ_COFINS').AsFloat  := DMDados.GetAliquotaCofins(StrtoInt(pCDPROD));
                     If (FieldByName('CDS_ALIQ_COFINS').AsFloat > 0) Then
                        FieldByName('CDS_VALOR_COFINS').AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FieldByName('CDS_BC_COFINS').AsFloat, FieldByName('CDS_ALIQ_COFINS').AsFloat), udmDados.iCasasDecimais);
                End;
           End;
           //
           dmDados.FilterCDS(dmDados.cdsProduto, fsInteger, pCDPROD);
           if not (DMDados.cdsProduto.IsEmpty) Then
            begin
                if not uFuncoes.Empty(DMDados.cdsProdutoorigem.AsString) Then
                    FieldByName('CDS_ORIGEM_PRODUTO').AsInteger := DMDados.cdsProdutoorigem.AsInteger
                Else
                    FieldByName('CDS_ORIGEM_PRODUTO').AsInteger := 0;
               {if (DM.cdsProdutosPRO_FLSUBST_TRIBUTARIA.AsString = 'S') Then    to-do
                begin
                     M_ALIQST := Dm.cdsProdutosPRO_ALIQUOTA_SUBS_TRIBUTARIA.AsFloat;
                     if (M_ALIQST = 0) Then
                     begin
                          Application.MessageBox(PChar('Alíquota da substitução tributária está zerada!!!'),
                             'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                          Cancel;
                          Exit;
                     End;
                     M_MARGE_LUCRO_ST := Dm.cdsProdutosPRO_PERMVA.AsFloat;
                     M_BCIPI     := cdsItensNota.FieldByName('NFI_VLIPI').AsFloat;
                     M_BC_ICMSST := pBCICMS + M_BCIPI ;
                     M_BC_ICMSST := M_BC_ICMSST + uFuncoes.Gerapercentual(M_BC_ICMSST, M_MARGE_LUCRO_ST);
                     //calculos
                     M_VLICMS_ST := uFuncoes.Gerapercentual(M_BC_ICMSST, M_ALIQST);
                     M_VLICMS_ST := M_VLICMS_ST - pVLICMS;
                     //

                     FieldByName('CDS_IDMODA_CALC_ICMS_ST').AsInteger := 5;  // margem valor agregado
                     FieldByName('CDS_PERC_REDUCAO_BC_ICMS_ST').AsFloat   := 0;
                     FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').AsFloat := M_MARGE_LUCRO_ST;
                     FieldByName('CDS_ALIQUOTA_ICMS_ST').AsFloat := M_ALIQST;
                     FieldByName('CDS_BCICMS_ST').AsFloat := M_BC_ICMSST;
                     FieldByName('CDS_VLICMS_ST').AsFloat := M_VLICMS_ST;
                End; }
                // Alteração 21/01/2015
                With dmDados.cdsNCM do
                begin
                     close;
                     Params[0].AsString  := cdsNotaFiscalemitente_uf.AsString;
                     Params[1].AsString  := cdsItemsNotaFiscal.FieldByName('CDS_NCM').AsString;
                     Open;
                end;
                //
                if not (dmDados.cdsNCM.IsEmpty) Then
                begin
                     FieldByName('CDS_PERC_TRIBUTO').AsFloat   := dmDados.cdsNCMaliquota_nacional.AsFloat;
                     if (dmDados.cdsNCMaliquota_estadual.AsFloat > 0) Then
                        FieldByName('CDS_PERC_ESTADUAL').AsFloat  := dmDados.cdsNCMaliquota_estadual.AsFloat;
                     if (dmDados.cdsNCMaliquota_municipal.AsFloat > 0) Then
                        FieldByName('CDS_PERC_MUNICIPAL').AsFloat := dmDados.cdsNCMaliquota_municipal.AsFloat;
                End;
                dmDados.cdsNCM.close;
                //
            End;
            //
            DMDados.cdsProduto.Close;
           //
           Post;
      End;
      //
      Result := true;
end;

function TdmNFe.AddRegistroNotaReferencia(iCodigoNFe, iItem,
  iTipoNF: Integer; aCHAVE, aSERIE, aNUMERO, aMODELO, aUF, aMESANO,
  aCNPJ: String): Boolean;
begin
    Result := False;
    Try
         if not (cdsListaNT_Ref.Active) Then
         begin
              dmDados.RefreshCDS(cdsListaNT_Ref);
              cdsListaNT_Ref.EmptyDataSet;
         End;
         //
         With cdsListaNT_Ref do
          begin
               Append;
               FieldByName('CDR_CODIGO').AsInteger := iCodigoNFe;
               FieldByName('CDR_ITEM').AsInteger   := iItem;
               FieldByName('CDR_TIPO_NOTA').AsInteger := iTipoNF;
               FieldByName('CDR_CHAVE').AsString   := aCHAVE;
               if (iTipoNF = 3) Then
               begin
                    FieldByName('CDR_SERIE').AsString  := aSERIE;
                    FieldByName('CDR_NUMERO').AsString := aNUMERO;
                    FieldByName('CDR_MODELO').AsString := aMODELO;
                    FieldByName('CDR_UF').AsString     := aUF;
                    FieldByName('CDR_MESANO').AsString := aMESANO;
                    FieldByName('CDR_CNPJ').AsString   := aCNPJ;
               End;
               //
               Post;
          End;
    Except

    End;
end;

procedure TdmNFe.AtualizarNumItens(aCDS: TClientDataSet);
begin

end;

function TdmNFe.CarregarItensNota(iCodigoNota: Integer; aUFEmissor : String): Boolean;
begin
     Result := False;
     //
     dmDados.RefreshCDS( cdsItemsNotaFiscal );
     {cdsItemsNotaFiscal.Close;
     cdsItemsNotaFiscal.Open;}
     cdsItemsNotaFiscal.EmptyDataSet;
     //
     With cdsNotaFiscalItens do
      begin
           Close;
           Params[0].AsInteger := iCodigoNota;
           Open;
           //
           If not (IsEmpty) then
            begin
                 DisableControls;
                 First;
                 While not (Eof) do
                  begin
                       cdsItemsNotaFiscal.Append;
                       cdsItemsNotaFiscalCDS_NRITEM.AsInteger := FieldByName('item').AsInteger;
                       cdsItemsNotaFiscalCDS_CDPROD.AsString  := FieldByName('id_produto').AsString;
                       cdsItemsNotaFiscalCDS_NCM.AsString     := FieldByName('id_ncm').AsString;
                       cdsItemsNotaFiscalCDS_DESCRICAO.AsString := FieldByName('descricao').AsString;
                       //cdsItemsNotaFiscalCDS_CFOP.AsString    := dmDados.GetCFOPProduto(FieldByName('NFI_PRODUTO').AsString);
                       cdsItemsNotaFiscalCDS_CFOP.AsString    := FieldByName('id_cfop').AsString;
                       if not uFuncoes.Empty(FieldByName('origem_produto').AsString) Then
                          cdsItemsNotaFiscalCDS_ORIGEM_PRODUTO.AsString := FieldByName('origem_produto').AsString
                       Else
                           cdsItemsNotaFiscalCDS_ORIGEM_PRODUTO.AsString := '0';
                       cdsItemsNotaFiscalCDS_CST.AsString     := FieldByName('cst_icms').AsString;    //Cst ICMS
                       cdsItemsNotaFiscalCDS_UNDCOM.AsString  := FieldByName('id_unidade').AsString;
                       cdsItemsNotaFiscalCDS_QTDECOM.AsFloat  := FieldByName('quantidade').AsFloat;
                       cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat := FieldByName('valor_unitario').AsFloat;
                       cdsItemsNotaFiscalCDS_VLDESCONTO.asFloat := FieldByName('valor_desconto').AsFloat;
                       cdsItemsNotaFiscalCDS_PEDESC.AsFloat     := FieldByName('percentual_desconto').AsFloat;
                       cdsItemsNotaFiscalCDS_PEACRE.AsFloat      := FieldByName('percentual_acrescimo').AsFloat;
                       cdsItemsNotaFiscalCDS_VLACRESCIMO.AsFloat := FieldByName('valor_acrescimo').AsFloat;
                       cdsItemsNotaFiscalCDS_VLFRETE.AsFloat  := FieldByName('valor_frete').AsFloat;
                       cdsItemsNotaFiscalCDS_VLSEGURO.AsFloat := FieldByName('valor_seguro').AsFloat;
                       cdsItemsNotaFiscalCDS_VLOUTRASDESPESAS.AsFloat := FieldByName('valor_outrasdespesas').AsFloat;
                       if not (FieldByName('indtot').IsNull) Then
                       begin
                       If (FieldByName('indtot').AsBoolean) Then
                           cdsItemsNotaFiscalCDS_INDTOT.AsInteger := 1
                       Else
                           cdsItemsNotaFiscalCDS_INDTOT.AsInteger := 0;
                       End
                       Else
                           cdsItemsNotaFiscalCDS_INDTOT.AsInteger := 1;
                       // ICMS    
                       cdsItemsNotaFiscalCDS_ALIQICMS.AsFloat := FieldByName('aliquota_icms').AsFloat;
                       cdsItemsNotaFiscalCDS_BCICMS.AsFloat   := FieldByName('valor_bc_icms').AsFloat;
                       cdsItemsNotaFiscalCDS_VLICMS.AsFloat   := FieldByName('valor_icms').AsFloat;
                       if (FieldByName('percentual_reducao_icms').AsFloat > 0) Then
                           cdsItemsNotaFiscalCDS_PEREDUCAO.AsFloat   := FieldByName('percentual_reducao_icms').AsFloat;
                       if not uFuncoes.Empty(FieldByName('cst_ipi').AsString) Then   // cst IPI
                          cdsItemsNotaFiscalCDS_IPI_CST.AsString := uFuncoes.Alltrim(FieldByName('cst_ipi').AsString);
                       // IPI
                       cdsItemsNotaFiscalCDS_ALIQIPI.AsFloat  := FieldByName('aliquota_ipi').AsFloat;
                       cdsItemsNotaFiscalCDS_BC_IPI.AsFloat   := FieldByName('valor_bc_ipi').AsFloat;
                       if (FieldByName('valor_bc_ipi').AsFloat > 0) then
                          cdsItemsNotaFiscalCDS_BC_IPI_CALC.AsFloat := FieldByName('valor_bc_ipi').AsFloat;
                       cdsItemsNotaFiscalCDS_VLIPI.AsFloat    := FieldByName('valor_ipi').AsFloat;
                       // Pis
                       cdsItemsNotaFiscalCDS_CST_PIS.AsString  := uFuncoes.Alltrim(FieldByName('cst_pis').AsString);
                       cdsItemsNotaFiscalCDS_BC_PIS.AsFloat    := FieldByName('valor_bc_pis').AsFloat;
                       cdsItemsNotaFiscalCDS_ALIQ_PIS.AsFloat  := FieldByName('aliquota_pis').AsFloat;
                       cdsItemsNotaFiscalCDS_VALOR_PIS.AsFloat := FieldByName('valor_pis').AsFloat;
                       // Cofins
                       cdsItemsNotaFiscalCDS_CST_COFINS.AsString := uFuncoes.Alltrim(FieldByName('cst_cofins').AsString);
                       cdsItemsNotaFiscalCDS_BC_COFINS.AsFloat   := FieldByName('valor_bc_cofins').AsFloat;
                       cdsItemsNotaFiscalCDS_ALIQ_COFINS.AsFloat := FieldByName('aliquota_cofins').AsFloat;
                       cdsItemsNotaFiscalCDS_VALOR_COFINS.AsFloat := FieldByName('valor_cofins').AsFloat;
                       //
                       if not uFuncoes.Empty(FieldByName('icms_simples_nacional').AsString) Then
                           cdsItemsNotaFiscalCDS_CSOSN.AsString := FieldByName('icms_simples_nacional').AsString;
                       //
                       if (FieldByName('valor_bc_icms_st').AsFloat > 0 ) Then
                       begin
                            cdsItemsNotaFiscalCDS_IDMODA_CALC_ICMS_ST.AsInteger   :=  FieldByName('mod_bc_st').AsInteger;
                            cdsItemsNotaFiscalCDS_PERC_REDUCAO_BC_ICMS_ST.AsFloat :=  FieldByName('percentual_reducao_bc_icms_st').AsFloat;
                            cdsItemsNotaFiscalCDS_PERC_MARGEM_LUCRO_ICMS_ST.AsFloat :=FieldByName('percentual_margem_lucro_icms_st').AsFloat;
                            cdsItemsNotaFiscalCDS_ALIQUOTA_ICMS_ST.AsFloat       :=  FieldByName('aliquota_icms_st').AsFloat;
                            cdsItemsNotaFiscalCDS_BCICMS_ST.AsFloat := FieldByName('valor_bc_icms_st').AsFloat;
                            cdsItemsNotaFiscalCDS_VLICMS_ST.AsFloat := FieldByName('valor_icms_st').AsFloat;
                       End;
                       //
                       if not uFuncoes.Empty(FieldByName('num_lote').AsString) Then
                            cdsItemsNotaFiscalCDS_NRLOTE.AsString := FieldByName('num_lote').AsString;
                       if not uFuncoes.Empty(FieldByName('data_fabricacao_lote').AsString) Then
                            cdsItemsNotaFiscalCDS_DTFABRICACAO.AsDateTime := FieldByName('data_fabricacao_lote').AsDateTime;
                       if not uFuncoes.Empty(FieldByName('data_vencimento_lote').AsString) Then
                            cdsItemsNotaFiscalCDS_DTVENCIMENTO.AsDateTime := FieldByName('data_vencimento_lote').AsDateTime;
                       //
                       cdsItemsNotaFiscalCDS_PERC_TRIBUTO.AsFloat := FieldByName('percentual_tributo').AsFloat;
                       //  
                       if (FieldByName('percentual_ipi_devolvido').AsFloat > 0) Then
                          cdsItemsNotaFiscal.FieldByName('CDS_PERC_MERCADORIA_DEVOLVIDA').AsFloat := FieldByName('percentual_ipi_devolvido').AsFloat;
                       if (FieldByName('valor_ipi_devolvido').AsFloat > 0) Then
                          cdsItemsNotaFiscal.FieldByName('CDS_VALOR_IPI_DEVOLVIDO').AsFloat       := FieldByName('valor_ipi_devolvido').AsFloat;
                       // 21/01/2015
                       With dmDados.cdsNCM do
                       begin
                            Close;
                            Params.ParamByName('pUF').AsString     := aUFEmissor;
                            Params.ParamByName('pid_ncm').AsString := cdsItemsNotaFiscal.FieldByName('CDS_NCM').AsString;
                            Open;
                       End;
                       if not (dmDados.cdsNCM.IsEmpty) Then
                        begin
                             if (dmDados.cdsNCMaliquota_estadual.AsFloat > 0) Then
                               cdsItemsNotaFiscal.FieldByName('CDS_PERC_ESTADUAL').AsFloat  := dmDados.cdsNCMaliquota_estadual.AsFloat;
                             if (dmDados.cdsNCMaliquota_municipal.AsFloat > 0) Then
                               cdsItemsNotaFiscal.FieldByName('CDS_PERC_MUNICIPAL').AsFloat := dmDados.cdsNCMaliquota_municipal.AsFloat;
                        End;
                        dmDados.cdsNCM.close;
                       //
                       cdsItemsNotaFiscal.Post;
                       //
                       Next;
                  End;
                  EnableControls;
            End;
      End;
      Result := true;
end;

procedure TdmNFe.CarregarlistaCST_COFINS;
begin
     dmDados.RefreshCDS(cdsListaCofins);
     cdsListaCofins.EmptyDataSet;
     With cdsListaCofins do
     begin
         // 01	Operação Tributável com Alíquota Básica
         Append;
         FieldByName('id').AsInteger       := 1;
         FieldByName('descricao').AsString := '01-Operação Tributável com Alíquota Básica';
         Post;
         // 02	Operação Tributável com Alíquota Diferenciada
         Append;
         FieldByName('id').AsInteger       := 2;
         FieldByName('descricao').AsString := '02-Operação Tributável com Alíquota Diferenciada';
         Post;
         // 03	Operação Tributável com Alíquota por Unidade de Medida de Produto
         Append;
         FieldByName('id').AsInteger       := 3;
         FieldByName('descricao').AsString := '03-Operação Tributável com Alíquota por Unidade de Medida de Produto';
         Post;
         //
         Append;
         FieldByName('id').AsInteger       := 4;
         FieldByName('descricao').AsString := '04-Operação Tributável Monofásica - Revenda a Alíquota Zero';
         Post;
         //
         Append;
         FieldByName('id').AsInteger       := 5;
         FieldByName('descricao').AsString := '05-Operação Tributável por Substituição Tributária';
         Post;
         //  06	Operação Tributável a Alíquota Zero
         Append;
         FieldByName('id').AsInteger       := 6;
         FieldByName('descricao').AsString := '06-Operação Tributável a Alíquota Zero';
         Post;
         // 07	Operação Isenta da Contribuição
         Append;
         FieldByName('id').AsInteger       := 7;
         FieldByName('descricao').AsString := '07-Operação Isenta da Contribuição';
         Post;
         //  08	Operação sem Incidência da Contribuição
         Append;
         FieldByName('id').AsInteger       := 8;
         FieldByName('descricao').AsString := '08-Operação sem Incidência da Contribuição';
         Post;
         //  09	Operação com Suspensão da Contribuição
         Append;
         FieldByName('id').AsInteger       := 9;
         FieldByName('descricao').AsString := '09-Operação com Suspensão da Contribuição';
         Post;
         // 49	Outras Operações de Saída
         Append;
         FieldByName('id').AsInteger       := 49;
         FieldByName('descricao').AsString := '49-Outras Operações de Saída';
         Post;
         // 50	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 50;
         FieldByName('descricao').AsString := '50-Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno';
         Post;
         // 51	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 51;
         FieldByName('descricao').AsString := '51-Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno';
         Post;
         // 52	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
         Append;
         FieldByName('id').AsInteger       := 52;
         FieldByName('descricao').AsString := '52-Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação';
         Post;
         //  53	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 53;
         FieldByName('descricao').AsString := '53-Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno';
         Post;
         // 54	Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 54;
         FieldByName('descricao').AsString := '54	Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação';
         Post;
         // 55	Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 55;
         FieldByName('descricao').AsString := '55	Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação';
         Post;
         // 56	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 56;
         FieldByName('descricao').AsString := '56-Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação';
         Post;
         // 60	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 60;
         FieldByName('descricao').AsString := '60-Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno';
         Post;
         // 61	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 61;
         FieldByName('descricao').AsString := '61-Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno';
         Post;
         // 62	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
         Append;
         FieldByName('id').AsInteger       := 62;
         FieldByName('descricao').AsString := '62-Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação';
         Post;
         // 63	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 63;
         FieldByName('descricao').AsString := '63-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno';
         Post;
         // 64	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 64;
         FieldByName('descricao').AsString := '64-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação';
         Post;
         // 65	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 65;
         FieldByName('descricao').AsString := '65-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação';
         Post;
         //  66	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 66;
         FieldByName('descricao').AsString := '66-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação';
         Post;
         // 67	Crédito Presumido - Outras Operações
         Append;
         FieldByName('id').AsInteger       := 67;
         FieldByName('descricao').AsString := '67-Crédito Presumido - Outras Operações';
         Post;
         //  70	Operação de Aquisição sem Direito a Crédito
         Append;
         FieldByName('id').AsInteger       := 70;
         FieldByName('descricao').AsString := '70-Operação de Aquisição sem Direito a Crédito';
         Post;
         // 71	Operação de Aquisição com Isenção
         Append;
         FieldByName('id').AsInteger       := 71;
         FieldByName('descricao').AsString := '71-Operação de Aquisição com Isenção';
         Post;
         // 72	Operação de Aquisição com Suspensão
         Append;
         FieldByName('id').AsInteger       := 72;
         FieldByName('descricao').AsString := '72-Operação de Aquisição com Suspensão';
         Post;
         // 73	Operação de Aquisição a Alíquota Zero
         Append;
         FieldByName('id').AsInteger       := 73;
         FieldByName('descricao').AsString := '73-Operação de Aquisição a Alíquota Zero';
         Post;
         // 74	Operação de Aquisição sem Incidência da Contribuição
         Append;
         FieldByName('id').AsInteger       := 74;
         FieldByName('descricao').AsString := '74-Operação de Aquisição sem Incidência da Contribuição';
         Post;
         // 75	Operação de Aquisição por Substituição Tributária
         Append;
         FieldByName('id').AsInteger       := 75;
         FieldByName('descricao').AsString := '75-Operação de Aquisição por Substituição Tributária';
         Post;
         // 98	Outras Operações de Entrada
         Append;
         FieldByName('id').AsInteger       := 98;
         FieldByName('descricao').AsString := '98-Outras Operações de Entrada';
         Post;
         // 99	Outras Operações
         Append;
         FieldByName('id').AsInteger       := 99;
         FieldByName('descricao').AsString := '99-Outras Operações';
         Post;
     End;
end;

procedure TdmNFe.CarregarlistaCST_ICMS;
begin
     dmDados.RefreshCDS(cdsListaCstICMS);
     cdsListaCstICMS.EmptyDataSet;
     With cdsListaCstICMS do
     begin
         // "00";"00 - TRIBUTADA INTEGRALMENTE"
         Append;
         FieldByName('id').AsInteger       := 0;
         FieldByName('descricao').AsString := '00 - TRIBUTADA INTEGRALMENTE';
         Post;
         // "10";"10 - TRIBUTACAO COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA"
         Append;
         FieldByName('id').AsInteger       := 10;
         FieldByName('descricao').AsString := '10 - TRIBUTACAO COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA';
         Post;
         // "20";"20 - COM REDUCAO DE BASE DE CALCULO"
         Append;
         FieldByName('id').AsInteger       := 20;
         FieldByName('descricao').AsString := '20 - COM REDUCAO DE BASE DE CALCULO';
         Post;
         // "30";"30 - ISENTA OU NAO TRIBUTADA E COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA"
         Append;
         FieldByName('id').AsInteger       := 30;
         FieldByName('descricao').AsString := '30 - ISENTA OU NAO TRIBUTADA E COM COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA';
         Post;
         // "40";"40 - ISENTA"
         Append;
         FieldByName('id').AsInteger       := 40;
         FieldByName('descricao').AsString := '40 - ISENTA';
         Post;
         // "41";"41 - NAO TRIBUTADA"
         Append;
         FieldByName('id').AsInteger       := 41;
         FieldByName('descricao').AsString := '41 - NAO TRIBUTADA';
         Post;
         // "50";"50 - SUSPENSAO"
         Append;
         FieldByName('id').AsInteger       := 50;
         FieldByName('descricao').AsString := '50 - SUSPENSAO';
         Post;
         // "51";"51 - DIFERIMENTO"
         Append;
         FieldByName('id').AsInteger       := 51;
         FieldByName('descricao').AsString := '51 - DIFERIMENTO';
         Post;
         // "60";"60 - COBRADO ANTERIOMENTE POR SUBSTITUICAO TRIBUTARIA"
         Append;
         FieldByName('id').AsInteger       := 60;
         FieldByName('descricao').AsString := '60 - COBRADO ANTERIOMENTE POR SUBSTITUICAO TRIBUTARIA';
         Post;
         // "70";"70 - COM REDUCAO DE BASE DE CALCULO E COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA"
         Append;
         FieldByName('id').AsInteger       := 70;
         FieldByName('descricao').AsString := '70 - COM REDUCAO DE BASE DE CALCULO E COBRANCA DO ICMS POR SUBSTITUICAO TRIBUTARIA';
         Post;
         // "90";"90 - OUTRAS"
         Append;
         FieldByName('id').AsInteger       := 90;
         FieldByName('descricao').AsString := '90 - OUTRAS';
         Post;
     End;
end;

procedure TdmNFe.CarregarlistaCST_IPI;
begin
     dmDados.RefreshCDS(cdsListaCstIPI);
     cdsListaCstIPI.EmptyDataSet;
     with cdsListaCstIPI do
     begin
         // 00	Entrada com recuperação de crédito
         Append;
         FieldByName('id').AsInteger       := 0;
         FieldByName('descricao').AsString := '00-Entrada com recuperação de crédito';
         Post;
         // 01	Entrada tributada com alíquota zero
         Append;
         FieldByName('id').AsInteger       := 1;
         FieldByName('descricao').AsString := '01-Entrada tributada com alíquota zero';
         Post;
         // 02	Entrada isenta
         Append;
         FieldByName('id').AsInteger       := 2;
         FieldByName('descricao').AsString := '02-Entrada isenta';
         Post;
         // 03	Entrada não-tributada
         Append;
         FieldByName('id').AsInteger       := 3;
         FieldByName('descricao').AsString := '03-Entrada não-tributada';
         Post;
         // 04	Entrada imune
         Append;
         FieldByName('id').AsInteger       := 4;
         FieldByName('descricao').AsString := '04-Entrada imune';
         Post;
         // 05	Entrada com suspensão
         Append;
         FieldByName('id').AsInteger       := 5;
         FieldByName('descricao').AsString := '05-Entrada com suspensão';
         Post;
         // 49	Outras entradas
         Append;
         FieldByName('id').AsInteger       := 49;
         FieldByName('descricao').AsString := '49-Outras entradas';
         Post;
         // 50	Saída tributada
         Append;
         FieldByName('id').AsInteger       := 50;
         FieldByName('descricao').AsString := '50-Saída tributada';
         Post;
         // 51	Saída tributada com alíquota zero
         Append;
         FieldByName('id').AsInteger       := 51;
         FieldByName('descricao').AsString := '51-Saída tributada com alíquota zero';
         Post;
         // 52	Saída isenta
         Append;
         FieldByName('id').AsInteger       := 52;
         FieldByName('descricao').AsString := '52-Saída isenta';
         Post;
         // 53	Saída não-tributada
         Append;
         FieldByName('id').AsInteger       := 53;
         FieldByName('descricao').AsString := '53-Saída não-tributada';
         Post;
         // 54	Saída imune
         Append;
         FieldByName('id').AsInteger       := 54;
         FieldByName('descricao').AsString := '54-Saída imune';
         Post;
         // 55	Saída com suspensão
         Append;
         FieldByName('id').AsInteger       := 55;
         FieldByName('descricao').AsString := '55-Saída com suspensão';
         Post;
         // 99	Outras saídas
         Append;
         FieldByName('id').AsInteger       := 99;
         FieldByName('descricao').AsString := '99-Outras saídas';
         Post;
     End;
end;

procedure TdmNFe.CarregarlistaCST_PIS;
begin
     dmDados.RefreshCDS(cdsListaPIS);
     cdsListaPIS.EmptyDataSet;
     With cdsListaPIS do
     begin
         // 01	Operação Tributável com Alíquota Básica
         Append;
         FieldByName('id').AsInteger       := 1;
         FieldByName('descricao').AsString := '01-Operação Tributável com Alíquota Básica';
         Post;
         // 02	Operação Tributável com Alíquota Diferenciada
         Append;
         FieldByName('id').AsInteger       := 2;
         FieldByName('descricao').AsString := '02-Operação Tributável com Alíquota Diferenciada';
         Post;
         // 03	Operação Tributável com Alíquota por Unidade de Medida de Produto
         Append;
         FieldByName('id').AsInteger       := 3;
         FieldByName('descricao').AsString := '03-Operação Tributável com Alíquota por Unidade de Medida de Produto';
         Post;
         //
         Append;
         FieldByName('id').AsInteger       := 4;
         FieldByName('descricao').AsString := '04-Operação Tributável Monofásica - Revenda a Alíquota Zero';
         Post;
         //
         Append;
         FieldByName('id').AsInteger       := 5;
         FieldByName('descricao').AsString := '05-Operação Tributável por Substituição Tributária';
         Post;
         //  06	Operação Tributável a Alíquota Zero
         Append;
         FieldByName('id').AsInteger       := 6;
         FieldByName('descricao').AsString := '06-Operação Tributável a Alíquota Zero';
         Post;
         // 07	Operação Isenta da Contribuição
         Append;
         FieldByName('id').AsInteger       := 7;
         FieldByName('descricao').AsString := '07-Operação Isenta da Contribuição';
         Post;
         //  08	Operação sem Incidência da Contribuição
         Append;
         FieldByName('id').AsInteger       := 8;
         FieldByName('descricao').AsString := '08-Operação sem Incidência da Contribuição';
         Post;
         //  09	Operação com Suspensão da Contribuição
         Append;
         FieldByName('id').AsInteger       := 9;
         FieldByName('descricao').AsString := '09-Operação com Suspensão da Contribuição';
         Post;
         // 49	Outras Operações de Saída
         Append;
         FieldByName('id').AsInteger       := 49;
         FieldByName('descricao').AsString := '49-Outras Operações de Saída';
         Post;
         // 50	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 50;
         FieldByName('descricao').AsString := '50-Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno';
         Post;
         // 51	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 51;
         FieldByName('descricao').AsString := '51-Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno';
         Post;
         // 52	Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
         Append;
         FieldByName('id').AsInteger       := 52;
         FieldByName('descricao').AsString := '52-Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação';
         Post;
         //  53	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 53;
         FieldByName('descricao').AsString := '53-Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno';
         Post;
         // 54	Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 54;
         FieldByName('descricao').AsString := '54-Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação';
         Post;
         // 55	Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 55;
         FieldByName('descricao').AsString := '55-Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação';
         Post;
         // 56	Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 56;
         FieldByName('descricao').AsString := '56-Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação';
         Post;
         // 60	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 60;
         FieldByName('descricao').AsString := '60-Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno';
         Post;
         // 61	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 61;
         FieldByName('descricao').AsString := '61-Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno';
         Post;
         // 62	Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
         Append;
         FieldByName('id').AsInteger       := 62;
         FieldByName('descricao').AsString := '62-Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação';
         Post;
         // 63	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
         Append;
         FieldByName('id').AsInteger       := 63;
         FieldByName('descricao').AsString := '63-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno';
         Post;
         // 64	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 64;
         FieldByName('descricao').AsString := '64-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação';
         Post;
         // 65	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 65;
         FieldByName('descricao').AsString := '65-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação';
         Post;
         //  66	Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação
         Append;
         FieldByName('id').AsInteger       := 66;
         FieldByName('descricao').AsString := '66-Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação';
         Post;
         // 67	Crédito Presumido - Outras Operações
         Append;
         FieldByName('id').AsInteger       := 67;
         FieldByName('descricao').AsString := '67-Crédito Presumido - Outras Operações';
         Post;
         //  70	Operação de Aquisição sem Direito a Crédito
         Append;
         FieldByName('id').AsInteger       := 70;
         FieldByName('descricao').AsString := '70-Operação de Aquisição sem Direito a Crédito';
         Post;
         // 71	Operação de Aquisição com Isenção
         Append;
         FieldByName('id').AsInteger       := 71;
         FieldByName('descricao').AsString := '71-Operação de Aquisição com Isenção';
         Post;
         // 72	Operação de Aquisição com Suspensão
         Append;
         FieldByName('id').AsInteger       := 72;
         FieldByName('descricao').AsString := '72-Operação de Aquisição com Suspensão';
         Post;
         // 73	Operação de Aquisição a Alíquota Zero
         Append;
         FieldByName('id').AsInteger       := 73;
         FieldByName('descricao').AsString := '73-Operação de Aquisição a Alíquota Zero';
         Post;
         // 74	Operação de Aquisição sem Incidência da Contribuição
         Append;
         FieldByName('id').AsInteger       := 74;
         FieldByName('descricao').AsString := '74-Operação de Aquisição sem Incidência da Contribuição';
         Post;
         // 75	Operação de Aquisição por Substituição Tributária
         Append;
         FieldByName('id').AsInteger       := 75;
         FieldByName('descricao').AsString := '75-Operação de Aquisição por Substituição Tributária';
         Post;
         // 98	Outras Operações de Entrada
         Append;
         FieldByName('id').AsInteger       := 98;
         FieldByName('descricao').AsString := '98-Outras Operações de Entrada';
         Post;
         // 99	Outras Operações
         Append;
         FieldByName('id').AsInteger       := 99;
         FieldByName('descricao').AsString := '99-Outras Operações';
         Post;
     End;
end;

procedure TdmNFe.CarregarlistaCST_SIMPLES;
begin
     dmDados.RefreshCDS(cdsListaCstSimples);
     cdsListaCstSimples.EmptyDataSet;
     With cdsListaCstSimples do
     begin
         // 101 - Tributada pelo Simples Nacional com permissão de crédito
         Append;
         FieldByName('id').AsInteger       := 101;
         FieldByName('descricao').AsString := '101-Tributada pelo Simples Nacional com permissão de crédito';
         Post;
         // 102 - Tributada pelo Simples Nacional sem permissão de crédito
         Append;
         FieldByName('id').AsInteger       := 102;
         FieldByName('descricao').AsString := '102-Tributada pelo Simples Nacional sem permissão de crédito';
         Post;
         // 103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta
         Append;
         FieldByName('id').AsInteger       := 103;
         FieldByName('descricao').AsString := '103-Isenção do ICMS no Simples Nacional para faixa de receita bruta';
         Post;
         //
         Append;
         FieldByName('id').AsInteger       := 201;
         FieldByName('descricao').AsString := '201-Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária';
         Post;
         //
         Append;
         FieldByName('id').AsInteger       := 202;
         FieldByName('descricao').AsString := '202-Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária';
         Post;
         // 203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária
         Append;         FieldByName('id').AsInteger       := 203;
         FieldByName('descricao').AsString := '203-Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária';
         Post;         // 300 - Imune
         Append;         FieldByName('id').AsInteger       := 300;
         FieldByName('descricao').AsString := '300-Imune';
         Post;         // 400 - Não tributada pelo Simples Nacional
         Append;         FieldByName('id').AsInteger       := 400;
         FieldByName('descricao').AsString := '400-Não tributada pelo Simples Nacional';
         Post;         // 500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação
         Append;         FieldByName('id').AsInteger       := 500;
         FieldByName('descricao').AsString := '500-ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação';
         Post;         // 900 - Outros
         Append;         FieldByName('id').AsInteger       := 900;
         FieldByName('descricao').AsString := '900-Outros';
         Post;  
     End;
end;

procedure TdmNFe.CarregarListaFinalidadeEmissao;
begin
     dmDados.RefreshCDS(cdsListaFinalidadeEmissao);
     cdsListaFinalidadeEmissao.EmptyDataSet;
     With cdsListaFinalidadeEmissao do
     begin
         //  1;"NF-e NORMAL"
         Append;
         FieldByName('id').AsInteger       := 1;
         FieldByName('descricao').AsString := '1 - NF-e NORMAL';
         Post;
         //  2;"NF-e COMPLEMENTA"
         Append;
         FieldByName('id').AsInteger       := 2;
         FieldByName('descricao').AsString := '2 - NF-e COMPLEMENTA';
         Post;
         // 3;"NF-e DE AJUSTE"
         Append;
         FieldByName('id').AsInteger       := 3;
         FieldByName('descricao').AsString := '3 - NF-e DE AJUSTE';
         Post;
         // 4;"DEVOLUCAO/RETORNO"
         Append;
         FieldByName('id').AsInteger       := 4;
         FieldByName('descricao').AsString := '4 - DEVOLUCAO/RETORNO';
         Post;
     End;
end;

procedure TdmNFe.CarregarListaFormaEmissao;
begin
    dmDados.RefreshCDS(cdsListaFormaEmissao);
    cdsListaFormaEmissao.EmptyDataSet;
    //
    With cdsListaFormaEmissao do
    begin
         //
         Append;
         FieldByName('FRM_CODIGO').AsInteger    := 1;
         FieldByName('FRM_DESCRICAO').AsString  := '1-NORMAL';
         Post;
         //  2;"CONTINGENCIA FS
         Append;
         FieldByName('FRM_CODIGO').AsInteger    := 2;
         FieldByName('FRM_DESCRICAO').AsString  := '2-CONTINGENCIA FS';
         Post;
         //  3;"CONTINGENCIA SCAN
         Append;
         FieldByName('FRM_CODIGO').AsInteger    := 3;
         FieldByName('FRM_DESCRICAO').AsString  := '3-CONTINGENCIA SCAN';
         Post;
         //  4;"CONTINGENCIA DPEC
         Append;
         FieldByName('FRM_CODIGO').AsInteger    := 4;
         FieldByName('FRM_DESCRICAO').AsString  := '4-CONTINGENCIA DPEC';
         Post;
         //  5;"CONTINGENCIA FS-DA
         Append;
         FieldByName('FRM_CODIGO').AsInteger    := 5;
         FieldByName('FRM_DESCRICAO').AsString  := '5-CONTINGENCIA FS-DA';
         Post;
    End;
end;

procedure TdmNFe.CarregarListaFormaPagamento;
begin
    dmDados.RefreshCDS(cdsListaPagamento);
    cdsListaPagamento.EmptyDataSet;
    //
    With cdsListaPagamento do
    begin
         //  0;"0 - PAGAMENTO A VISTA"
         Append;
         FieldByName('id').AsInteger       := 0;
         FieldByName('descricao').AsString := '0-PAGAMENTO A VISTA';
         Post;
         // 1;"1 - PAGAMENTO A PRAZO"
         Append;
         FieldByName('id').AsInteger       := 1;
         FieldByName('descricao').AsString := '1-PAGAMENTO A PRAZO';
         Post;
         // 2;"2 - OUTROS"
         Append;
         FieldByName('id').AsInteger       := 2;
         FieldByName('descricao').AsString := '2-OUTROS';
         Post;
    End;
end;

procedure TdmNFe.CarregarlistaOrigemProduto;
begin
    dmDados.RefreshCDS(cdsListaOrigemProduto);
    cdsListaOrigemProduto.EmptyDataSet;
    //
    With cdsListaOrigemProduto do
    begin
         // 0;"0 - Nacional"
         Append;
         FieldByName('id').AsInteger       := 0;
         FieldByName('descricao').AsString := '0-Nacional';
         Post;
         // 1;"1 - Estrangeira - Importação direta"
         Append;
         FieldByName('id').AsInteger       := 1;
         FieldByName('descricao').AsString := '1-Estrangeira - Importação direta';
         Post;
         // 2;"2 -  Estrangeira – Adquirida no mercado interno, exceto a indicada no código 7"
         Append;
         FieldByName('id').AsInteger       := 2;
         FieldByName('descricao').AsString := '2-Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7';
         Post;
         // 3;"3 - ""3 - Nacional, conteúdo de importação superior a 40%"
         Append;
         FieldByName('id').AsInteger       := 3;
         FieldByName('descricao').AsString := '3-Nacional, conteúdo de importação superior a 40%';
         Post;
         // 4;"4 - Nacional, conforme leis n° 288/67, 8.248/91, 8.387/91, 0.176/01 e 11.484/07"
         Append;
         FieldByName('id').AsInteger       := 4;
         FieldByName('descricao').AsString := '4-Nacional, conforme leis n° 288/67, 8.248/91, 8.387/91, 0.176/01 e 11.484/07';
         Post;
         // 5;"5 - Nacional, conteúdo de importação inferior ou igual a 40% "
         Append;
         FieldByName('id').AsInteger       := 5;
         FieldByName('descricao').AsString := '5-Nacional, conteúdo de importação inferior ou igual a 40%';
         Post;
         // 6;"6 - Estrangeira - Importação direta, sem similar nacional"
         Append;
         FieldByName('id').AsInteger       := 6;
         FieldByName('descricao').AsString := '6-Estrangeira - Importação direta, sem similar nacional';
         Post;
         // 7;"7 - Estrangeira - Adiquirida no mercado interno, sem similar nacional"
         Append;
         FieldByName('id').AsInteger       := 7;
         FieldByName('descricao').AsString := '7-Estrangeira - Adiquirida no mercado interno, sem similar nacional';
         Post;
         // 8; 8 - Nacional, conteúdo de importação superior a 70%
         Append;
         FieldByName('id').AsInteger       := 8;
         FieldByName('descricao').AsString := '8-Nacional, conteúdo de importação superior a 70%';
         Post;
    End;
end;

function TdmNFe.CarregarRegistroNotaReferencia(idNota: Integer;
  aCDsItens: TClientDataSet): Boolean;
begin
     Result := False;
     Try
          DMDados.RefreshCDS(cdsListaNT_Ref);
          cdsListaNT_Ref.EmptyDataSet;
          With cdsNotaReferencia do
           begin
                Close;
                Params[0].AsInteger := idNota;
                Open;
                //
                If not (IsEmpty) Then
                 begin
                      First;
                      While not (Eof) do
                       begin
                             AddRegistroNotaReferencia(
                             idNota,
                             FieldByname('item').AsInteger,
                             FieldByname('tipo_nota').AsInteger,
                             FieldByname('chave_acesso').AsString,
                             FieldByname('nota_serie').AsString,
                             FieldByname('nota_numero').AsString,
                             FieldByname('nota_modelo').AsString,
                             FieldByname('nota_uf_emissor').AsString,
                             FieldByname('nota_ano_mes').AsString,
                             FieldByname('nota_cnpj').AsString);
                            //
                            Next;
                       End;  // While not (Eof) do
                 End;
           End; // With cdsNotaReferencia do
    Except

    End;
end;

procedure TdmNFe.DataModuleCreate(Sender: TObject);
Var
   DirCan, DirNFe, DirInu, DirEvento, DirMDe, DirCCe: string;
begin   
    DirCan := ExtractFilePath( Application.ExeName )+'CancelamentoNfe';
    DirNFe := ExtractFilePath( Application.ExeName )+'XML';    // RetornoNfe
    DirInu := ExtractFilePath( Application.ExeName )+'InutilizacaoNfe';
    DirEvento := ExtractFilePath( Application.ExeName )+'EventoNfe';
    DirMDe  := ExtractFilePath( Application.ExeName )+'MDe';
    DirCCe  := ExtractFilePath( Application.ExeName )+'CCe';
    //
    if not DirectoryExists(DirNFe) then
       ForceDirectories(DirNFe);
    if not DirectoryExists(DirCan) then
       ForceDirectories(DirCan);
    if not DirectoryExists(DirInu) then
       ForceDirectories(DirInu);
     if not DirectoryExists(DirMDe) then
       ForceDirectories(DirMDe);
     if not DirectoryExists(DirCCe) then
       ForceDirectories(DirCCe);
    //
    if not DirectoryExists(DirEvento) then
       ForceDirectories(DirEvento);
    // 25/09/2014
    ACBrNFe1.Configuracoes.Geral.Salvar := True;
    //  ---- tipo NF-e ou NFC-
    ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
    // ---- modelo 3.10
    ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
    //
    if DirectoryExists(DirNFe) then
        ACBrNFe1.Configuracoes.Arquivos.PathNFe := DirNFe;
    {if DirectoryExists(DirCan) then
        ACBrNFe1.Configuracoes.Arquivos.PathCan := DirCan;}
    if DirectoryExists(DirInu) then
        ACBrNFe1.Configuracoes.Arquivos.PathInu := DirInu;
    if DirectoryExists(DirEvento) then
        ACBrNFe1.Configuracoes.Arquivos.PathEvento := DirEvento;
    {if DirectoryExists(DirMDe) Then
       ACBrNFe1.Configuracoes.Arquivos.PathMDe  := DirMDe;
    if DirectoryExists(DirCCe) Then
       ACBrNFe1.Configuracoes.Arquivos.PathCCe  := DirCCe;}
    //
    //ACBrNFe1.Configuracoes.Arquivos.PastaMensal := true;
    ACBrNFe1.Configuracoes.Arquivos.Salvar      := true;
    //
    dstListas.CommandText := '';
    //
    FormatarCamposCasasDecimais();
    //
    PathACBrNFeDANFERave();
    //
    CarregarlistaNatureza_Operacao();
    // UFs
    CarregarListaUFEmitente;
    CarregarListaUFEmitenteRet();
    CarregarListaUFDestinatario();
    CarregarListaUFDestinatarioEntrega();
    CarregarListaUFTransporte();
    CarregarListaUFVeiculo();
    CarregarListaUFReboque();
    CarregarListaMotivosDesoneracao();
end;

function TdmNFe.ExcluirDuplicatas(idNota: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto := 'Delete from nota_fiscal_duplicata Where (id_nota_fiscal = :pNUMERO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      Try
           SQLConnection := dmDados.sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pNUMERO').AsInteger := idNota;
           ExecSQL();
           result := True;
      Except
           result := false;
      End;
    finally
      free;
    end;
end;

function TdmNFe.ExcluiRegistroNotaReferencia(idNota: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
    Result := False;
    texto := 'Delete from nota_fiscal_referencias where (id_nota_fiscal = :pCODIGO) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := DMDados.sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := idNota;
           ExecSQL();
           Result := True;
     finally
         free;
     end;
end;

function TdmNFe.ExcluirItemNota(iNota, iItem: Integer;
  aProduto: String): Boolean;
var qraux, qraux2 : TSQLquery;
    texto, SQLTexto : string;
begin
  Result := false;
  texto := 'Select id_nota_fiscal, item, id_produto from nota_fiscal_itens ';
  texto := texto + ' Where (id_nota_fiscal = :pCODIGO) and (item = :pItem) and (id_produto = :pProduto) ';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger  := iNota;
      Params.ParamByName('pItem').AsInteger    := iItem;
      Params.ParamByName('pProduto').AsInteger := StrtoInt(aProduto);
      Open;
      //
      if not (IsEmpty) Then
       begin
            SQLTexto := 'Delete from nota_fiscal_itens where (id_nota_fiscal = :pCODIGO) and (item = :pItem) and (id_produto = :pProduto) ';
            QrAux2 := TSQLquery.Create(nil);
            with QrAux2 do
             try
                 SQLConnection := dmDados.sqlConexao;
                 sql.Add(SQLTexto);
                 Params.ParamByName('pCODIGO').AsInteger := iNota;
                 Params.ParamByName('pItem').AsInteger   := iItem;
                 Params.ParamByName('pProduto').AsInteger := StrtoInt(aProduto);
                 ExecSQL();
                 result := true
             finally
                 free;
             end;
       End;
    finally
      free;
    end;

end;

function TdmNFe.ExcluirVolumes(idNota: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto := 'Delete from nota_fiscal_volumes Where (id_nota_fiscal = :pNUMERO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      Try
           SQLConnection := dmDados.sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pNUMERO').AsInteger := idNota;
           ExecSQL();
           result := True;
      Except
           result := false;
      End;
    finally
      free;
    end;
end;

function TdmNFe.GetAbrirVenda(iVenda: Integer): Boolean;
begin
     Result := False;
     // 
     With cdsVendaItensNFE do
      begin
           DisableControls;
           Close;
           Params[0].AsInteger := iVenda;
           Open;
           //
           if not (IsEmpty) then
              Result := true;
           EnableControls;
      End;
end;

function TdmNFe.GetCodigoCNPJCPFInt(aCNPJCPF, aCampoPesquisa,
  aCampoRetorno, aTabela: String): Integer;
Var
    qryAux :  TSQLquery;
    texto : String;
begin
     Result := 0;

     texto  := 'Select '+ aCampoRetorno+', '+ aCampoPesquisa +' from '+aTabela+' Where ('+aCampoPesquisa+' = :pDescricao) ';
     //
     qryAux:=  TSQLquery.Create(nil);
     with qryAux do
      try
           SQLConnection := dmDados.sqlConexao;
           SQL.Add(texto);
           Params.ParamByName('pDescricao').AsString := aCNPJCPF;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName(aCampoRetorno).AsInteger;
      Finally
         Free;
      End;

end;

function TdmNFe.GetCPFCNPJCliente(iCodCliente: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select id, tipo_pessoa, cpf_cnpj from CLIENTES Where (id = :pCODIGO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := dmDados.sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pCODIGO').AsInteger := iCodCliente;
         Open;
         //
         if not (IsEmpty) then
            Result := FieldByName('cpf_cnpj').AsString;
       finally
         free;
       end;
end;


function TdmNFe.GetValorNotaFiscal(aCDSItens: TClientDataSet): Double;
Var
   M_VALOR, M_TOTRIB : Double;
begin
      M_VALOR  := 0;
      M_TOTRIB := 0;
      //
      With aCDSItens do
        begin
              DisableControls;
              First;
              While not (EoF) do
                begin
                     M_VALOR := M_VALOR + FieldByName('CDS_SUBTOTAL').AsFloat;
                     If (FieldByName('CDS_VTOTTRIB').AsFloat > 0) Then
                        M_TOTRIB := M_TOTRIB + FieldByName('CDS_VTOTTRIB').AsFloat;
                     // Proximo
                     Next;
                End;
              EnableControls;
        End;
        //
        cdsNotaFiscalvalor_total_tributos.AsFloat := M_TOTRIB;
        Result := M_VALOR;
end;

function TdmNFe.SalvarRegistroNotaReferencia(idNota: Integer;
  aCDsItens: TClientDataSet): Boolean;
begin
    Result := False;
    Try
           //
           With cdsNotaReferencia do
           begin
                Close;
                Params[0].AsInteger := idNota;
                Open;
                //
                {If (IsEmpty) Then
                 begin}
                      aCDsItens.First;
                      While not (aCDsItens.Eof) do
                       begin
                             Append;
                             FieldByname('id_nota_fiscal').AsInteger      := idNota;
                             FieldByname('item').AsInteger                := aCDsItens.fieldByName('CDR_ITEM').AsInteger;
                             FieldByname('tipo_nota').AsInteger           := aCDsItens.fieldByName('CDR_TIPO_NOTA').AsInteger;
                             FieldByname('chave_acesso').AsString         := aCDsItens.fieldByName('CDR_CHAVE').AsString;
                             If (aCDsItens.fieldByName('CDR_TIPO_NOTA').AsInteger = 3) Then
                             begin
                                  FieldByname('nota_serie').AsString      := aCDsItens.fieldByName('CDR_SERIE').AsString;
                                  FieldByname('nota_numero').AsString     := aCDsItens.fieldByName('CDR_NUMERO').AsString;
                                  FieldByname('nota_modelo').AsString     := aCDsItens.fieldByName('CDR_MODELO').AsString;
                                  FieldByname('nota_uf_emissor').AsString := aCDsItens.fieldByName('CDR_UF').AsString;
                                  FieldByname('nota_ano_mes').AsString    := aCDsItens.fieldByName('CDR_MESANO').AsString;
                                  FieldByname('nota_cnpj').AsString       := aCDsItens.fieldByName('CDR_CNPJ').AsString;
                             End;
                             //
                             Post;
                            //
                            aCDsItens.Next;
                       End;   // While not (aCDsItens.Eof) do
                       ApplyUpdates(0);
                // End;       // Vazio
           End;     // With cdsNotaReferencia do

          Result := True;
    Except
          on e: exception do
          begin
              Application.MessageBox(Pchar('Erro:'+#13
                      + E.Message),'Atenção',MB_OK+MB_APPLMODAL);
          End;
    End;
end;

function TdmNFe.SetDescontosItensNFe(aCDS: TClientDataSet;
  fValorDesconto: Double): Boolean;
Var
   fValorDescontoItem , fValor, fValorDiferenca, fSaldoOutras : Double;
   iQuantItens : Integer;
begin
     With aCDS do
      begin
           DisableControls;
           First;
           iQuantItens := aCDS.RecordCount;
           //
           if (fValorDesconto > 0) Then
           begin                             
                fValorDescontoItem := uFuncoes.Arredondar((fValorDesconto / iQuantItens),2);
                fValor := fValorDescontoItem;
                fValorDiferenca := 0;
                fSaldoOutras     := 0;
                //
                fValorDiferenca := fValorDescontoItem - (fValorDescontoItem * iQuantItens);
                //
                While not (Eof) do
                 begin
                      If (fValor > 0) Then
                      begin
                           Edit;
                           If (RecNo = iQuantItens) Then
                            begin
                               FieldByName('CDS_VLDESCONTO').AsFloat := fValor;
                               //
                               fValor := 0;
                            End
                           Else
                           begin
                               FieldByName('CDS_VLDESCONTO').AsFloat := fValorDescontoItem;
                               //
                               fValor := fValor - fValorDescontoItem;
                           End;
                      End;
                      //
                      Next;
                 End;
            End
            Else
            begin
                 While not (Eof) do
                 begin
                      Edit;
                      FieldByName('CDS_VLDESCONTO').AsFloat := 0;
                      //
                      Next;
                 End;
            End;
           EnableControls;
      End;
end;

function TdmNFe.SetFreteItensNFe(aCDS: TClientDataSet;
  fValorFrete: Double): Boolean;
Var
   fValorFreteItem , fValor, fValorDiferenca, fSaldoFrete : Double;
   iQuantItens : Integer;
begin
     With aCDS do
      begin
           DisableControls;
           First;
           iQuantItens := aCDS.RecordCount;
           //
           if (fValorFrete > 0) Then
           begin
                fValor := fValorFrete;
                fValorFreteItem := uFuncoes.Arredondar((fValorFrete / iQuantItens),2);
                fValorDiferenca := 0;
                fSaldoFrete     := 0; 
                //
                fValorDiferenca := fValorFrete - (fValorFreteItem * iQuantItens);
                //
                While not (Eof) do
                 begin
                      If (fValor > 0) Then
                      begin
                           Edit;
                           If (RecNo = iQuantItens) Then
                            begin
                               {if (fValorDiferenca > 0) Then
                                begin
                                    if (fValor + fValorFreteItem > fValorFrete) Then
                                        FieldByName('CDS_VLFRETE').AsFloat := fValor
                                    Else
                                        FieldByName('CDS_VLFRETE').AsFloat := fValorFreteItem;
                                End;}
                               FieldByName('CDS_VLFRETE').AsFloat := fValor;
                               //
                               fValor := 0;
                            End
                           Else
                           begin
                               FieldByName('CDS_VLFRETE').AsFloat := fValorFreteItem;
                               //
                               fValor := fValor - fValorFreteItem;
                           End;
                      End;
                      //
                      Next;
                 End;
            End
            Else
            begin
                 While not (Eof) do
                 begin
                      Edit;
                      FieldByName('CDS_VLFRETE').AsFloat := 0;
                      //
                      Next;
                 End;
            End;
           EnableControls;
      End;

end;

function TdmNFe.SetOutrasDepesasItensNFe(aCDS: TClientDataSet;
  fValorOutrasDespesas: Double): Boolean;
Var
   fValorOutrasItem , fValor, fValorDiferenca, fSaldoOutras : Double;
   iQuantItens : Integer;
begin
     With aCDS do
      begin
           DisableControls;
           First;
           iQuantItens := aCDS.RecordCount;
           //
           if (fValorOutrasDespesas > 0) Then
           begin
                fValor := fValorOutrasDespesas;
                fValorOutrasItem := uFuncoes.Arredondar((fValorOutrasDespesas / iQuantItens),2);
                fValorDiferenca := 0;
                fSaldoOutras     := 0;
                //
                fValorDiferenca := fValorOutrasDespesas - (fValorOutrasItem * iQuantItens);
                //
                While not (Eof) do
                 begin
                      If (fValor > 0) Then
                      begin
                           Edit;
                           If (RecNo = iQuantItens) Then
                            begin
                               FieldByName('CDS_VLOUTRASDESPESAS').AsFloat := fValor;
                               //
                               fValor := 0;
                            End
                           Else
                           begin
                               FieldByName('CDS_VLOUTRASDESPESAS').AsFloat := fValorOutrasItem;
                               //
                               fValor := fValor - fValorOutrasItem;
                           End;
                      End;
                      //
                      Next;
                 End;
            End
            Else
            begin
                 While not (Eof) do
                 begin
                      Edit;
                      FieldByName('CDS_VLOUTRASDESPESAS').AsFloat := 0;
                      //
                      Next;
                 End;
            End;
           EnableControls;
      End;

end;

function TdmNFe.SetStatusLoteEmProcessamento(iNotaFiscal,
  iSituacao: Integer): Boolean;
begin
     Result := False;
     dmDados.FilterCDS(cdsNotaFiscal, fsInteger, InttoStr(iNotaFiscal));
     //
     if not (cdsNotaFiscal.IsEmpty) Then
      begin
           dmDados.Start;
           try
                With cdsNotaFiscal do
                  begin
                       Edit;
                       //
                       FieldByName('situacao').AsInteger  := iSituacao;
                       ApplyUpdates(0);
                  End;
                dmDados.Comit(dmDados.Transc);
                Result := True;
           Except
               on e: exception do
                begin
                    dmDados.Rollback(E.Message);
                End;
           End;
      End;
end;

function TdmNFe.VerificaNumeroVendaNFe(iVenda: Integer): Boolean;
begin
     Result := cdsListaVendasNFe.Locate('CDS_VENDA', iVenda, []);
end;

procedure TdmNFe.cdsVendaItensNFECalcFields(DataSet: TDataSet);
begin
     If (cdsVendaItensNFE.State = dsInternalcalc) and not uFuncoes.Empty(cdsVendaItensNFEid_cliente.AsString) Then
          cdsVendaItensNFENOME_CLIENTE.asString := dmDados.GetNomeCliente(cdsVendaItensNFEid_cliente.AsInteger, '1');
end;

procedure TdmNFe.FormatarCamposCasasDecimais;
Var
    idQuantCasas : Integer;
begin
    idQuantCasas := udmDados.iCasasDecimais;

    Case idQuantCasas of
      1 :
         begin
             cdsItemsNotaFiscalCDS_VLUNITARIO.DisplayFormat := '###,##0.0';
             cdsItemsNotaFiscalCDS_VLUNITARIO.EditFormat    := '###,##0.0';
             //
         End;
      2 :
         begin
             cdsItemsNotaFiscalCDS_VLUNITARIO.DisplayFormat := '###,##0.#0';
             cdsItemsNotaFiscalCDS_VLUNITARIO.EditFormat    := '###,##0.#0';
             //
         End;
      3 :
         begin
             cdsItemsNotaFiscalCDS_VLUNITARIO.DisplayFormat := '###,##0.#00';
             cdsItemsNotaFiscalCDS_VLUNITARIO.EditFormat    := '###,##0.#00';
         End;
      4 :
        begin
             cdsItemsNotaFiscalCDS_VLUNITARIO.DisplayFormat := '###,##0.#000';
             cdsItemsNotaFiscalCDS_VLUNITARIO.EditFormat    := '###,##0.#000';
         End;
      5 :
        begin
             cdsItemsNotaFiscalCDS_VLUNITARIO.DisplayFormat := '###,##0.#0000';
             cdsItemsNotaFiscalCDS_VLUNITARIO.EditFormat    := '###,##0.#0000';
         End;
    End;
    //
    if (idQuantCasas > 2) Then
    begin
         {ACBrNFeDANFERave1.CasasDecimais._qCom     :=  idQuantCasas;
         ACBrNFeDANFERave1.CasasDecimais._vUnCom   :=  idQuantCasas;}
         //
         ACBrNFeDANFERaveCB1.CasasDecimais._qCom   :=  idQuantCasas;
         ACBrNFeDANFERaveCB1.CasasDecimais._vUnCom :=  idQuantCasas;

         //
         if (idQuantCasas > 4) Then
          begin
               //ACBrNFeDANFERave1.CasasDecimais._qCom   := 4;
               ACBrNFeDANFERaveCB1.CasasDecimais._qCom := 4;
          End;
    End;
    //
    cdsNotaFiscalvalor_total_nota.DisplayFormat := '###,##0.#0';
    cdsNotaFiscalvalor_total_nota.EditFormat    := '###,##0.#0';
    //
    cdsNotaFiscalvalor_itens.DisplayFormat := '###,##0.#0';
    cdsNotaFiscalvalor_itens.EditFormat    := '###,##0.#0';
    //

end;

procedure TdmNFe.CarregarListaDestinoOperacao;
begin
     dmDados.RefreshCDS(cdsListaDestinoOperacao);
     cdsListaDestinoOperacao.EmptyDataSet;
     With cdsListaDestinoOperacao do
     begin
          Append;
          FieldByName('id').AsInteger    := 1;
          FieldByName('descricao').AsString  := '1-Operação Interna';
          Post;
          //
          Append;
          FieldByName('id').AsInteger    := 2;
          FieldByName('descricao').AsString  := '2-Operação Interestadual';
          Post;
          //
          Append;
          FieldByName('id').AsInteger    := 3;
          FieldByName('descricao').AsString  := '3-Operação com Exterior';
          Post;
     End;
end;

procedure TdmNFe.CarregarListaTipoAtendimento;
begin
     dmDados.RefreshCDS(cdsListaTipoAtendimento);
     cdsListaTipoAtendimento.EmptyDataSet;
     With cdsListaTipoAtendimento do
     begin
          // 0=Não se aplica (por exemplo, para a Nota Fiscal complementar ou de ajuste);
          Append;
          FieldByName('id').AsInteger    := 0;
          FieldByName('descricao').AsString  := '0-Não se aplica';
          Post;
          //  1=Operação presencial;
          Append;
          FieldByName('id').AsInteger    := 1;
          FieldByName('descricao').AsString  := '1-Operação presencial';
          Post;
          // 2=Operação não presencial, pela Internet;
          Append;
          FieldByName('id').AsInteger    := 2;
          FieldByName('descricao').AsString  := '2-Operação não presencial, pela INTERNET';
          Post;
          // 3=Operação não presencial, Teleatendimento;
          Append;
          FieldByName('id').AsInteger    := 3;
          FieldByName('descricao').AsString  := '3-Operação não presencial, TELEATENDIMENTO';
          Post;
          // 4=NFC-e em operação com entrega em domicílio;
          {Append;
          FieldByName('id').AsInteger    := 4;
          FieldByName('descricao').AsString  := '4-NFC-e em operação com entrega em domicílio';
          Post;}
          // 9=Operação não presencial, outros.
          Append;
          FieldByName('id').AsInteger    := 9;
          FieldByName('descricao').AsString  := '9-Operação não presencial, OUTROS';
          Post;
     End;

end;

procedure TdmNFe.CarregarListaTipodeContribuinte;
begin
     DMDados.RefreshCDS(cdsTipoContribuinte);
     cdsTipoContribuinte.EmptyDataSet;
     With cdsTipoContribuinte do
     begin
          // 1=Contribuinte ICMS (informar a IE do destinatário);
          Append;
          FieldByName('id').AsInteger    := 1;
          FieldByName('descricao').AsString  := '1-Contribuinte ICMS';
          Post;
          // 2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS;
          Append;
          FieldByName('id').AsInteger    := 2;
          FieldByName('descricao').AsString  := '2-Contribuinte ISENTO';
          Post;
          //  9=Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS.
          Append;
          FieldByName('id').AsInteger    := 9;
          FieldByName('descricao').AsString  := '9-Não Contribuinte';
          Post;
     End;
end;

procedure TdmNFe.AbrirListaCidadeUF(aUF: String;
  aCDsCidades: TClientDataSet);
begin
     With aCDsCidades do
     begin
          Close;
          Params[0].AsString := aUF;
          Open;
     End;
end;

procedure TdmNFe.CarregarTipodeContribuinte;
begin
     DMDados.RefreshCDS(cdsTipoContribuinte);
     cdsTipoContribuinte.EmptyDataSet;
     With cdsTipoContribuinte do
     begin
          // 1=Contribuinte ICMS (informar a IE do destinatário);
          Append;
          FieldByName('TCT_CODIGO').AsInteger    := 1;
          FieldByName('TCT_DESCRICAO').AsString  := '1-Contribuinte ICMS';
          Post;
          // 2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS;
          Append;
          FieldByName('TCT_CODIGO').AsInteger    := 2;
          FieldByName('TCT_DESCRICAO').AsString  := '2-Contribuinte ISENTO';
          Post;
          //  9=Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS.
          Append;
          FieldByName('TCT_CODIGO').AsInteger    := 9;
          FieldByName('TCT_DESCRICAO').AsString  := '9-Não Contribuinte';
          Post;
     End;
end;

procedure TdmNFe.cdsItemsNotaFiscalCalcFields(DataSet: TDataSet);
Var
   fSubTotal : Double;
begin
     fSubTotal := 0;
     If (cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat > 0)
        and (cdsItemsNotaFiscalCDS_QTDECOM.AsFloat > 0) Then
        begin
           fSubTotal :=  uFuncoes.Arredondar(
              ((cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat * cdsItemsNotaFiscalCDS_QTDECOM.AsFloat)
              + cdsItemsNotaFiscalCDS_VLACRESCIMO.AsFloat)
              - cdsItemsNotaFiscalCDS_VLDESCONTO.AsFloat, 2);
            cdsItemsNotaFiscalCDS_SUBTOTAL.AsFloat := fSubTotal;
            //

        End;
     //
     If (cdsItemsNotaFiscal.State in [dsInternalCalc]) Then
     begin 
           cdsItemsNotaFiscalCDS_VTOTTRIB.AsFloat :=
               uFuncoes.Arredondar(uFuncoes.Gerapercentual(fSubTotal, cdsItemsNotaFiscalCDS_PERC_TRIBUTO.AsFloat),2);
           //
           If (cdsItemsNotaFiscalCDS_PERC_ESTADUAL.AsFloat > 0) Then
              cdsItemsNotaFiscalCDS_VLTRIB_ESTADUAL.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(fSubTotal, cdsItemsNotaFiscalCDS_PERC_ESTADUAL.AsFloat),2);
           if (cdsItemsNotaFiscalCDS_PERC_MUNICIPAL.AsFloat > 0) Then
              cdsItemsNotaFiscalCDS_VLTRIB_MUNICIPAL.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(fSubTotal, cdsItemsNotaFiscalCDS_PERC_MUNICIPAL.AsFloat),2);
           //
           cdsItemsNotaFiscalCDS_BC_PIS_CALC.AsFloat   :=  fSubTotal;
           cdsItemsNotaFiscalCDS_BC_COFINS_CALC.AsFloat:=  fSubTotal;
           // IPI
           if (cdsItemsNotaFiscalCDS_BC_IPI_CALC.AsFloat > 0) and (cdsItemsNotaFiscalCDS_ALIQIPI.AsFloat > 0) then
                cdsItemsNotaFiscalCDS_VLIPI.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsItemsNotaFiscalCDS_BC_IPI_CALC.AsFloat, cdsItemsNotaFiscalCDS_ALIQIPI.AsFloat) ,2)
           Else
                cdsItemsNotaFiscalCDS_VLIPI.AsFloat := 0;
           // PIS
            If (cdsItemsNotaFiscalCDS_BC_PIS_CALC.AsFloat > 0) and (cdsItemsNotaFiscalCDS_ALIQ_PIS.AsFloat > 0) Then
               cdsItemsNotaFiscalCDS_VALOR_PIS.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsItemsNotaFiscalCDS_BC_PIS_CALC.AsFloat, cdsItemsNotaFiscalCDS_ALIQ_PIS.AsFloat),2)
           Else
               cdsItemsNotaFiscalCDS_VALOR_PIS.AsFloat := 0;
           // COFINS
           If (cdsItemsNotaFiscalCDS_BC_COFINS_CALC.AsFloat > 0) and (cdsItemsNotaFiscalCDS_ALIQ_COFINS.AsFloat > 0 ) Then
               cdsItemsNotaFiscalCDS_VALOR_COFINS.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsItemsNotaFiscalCDS_BC_COFINS_CALC.AsFloat, cdsItemsNotaFiscalCDS_ALIQ_COFINS.AsFloat ),2)
           Else
               cdsItemsNotaFiscalCDS_VALOR_COFINS.AsFloat := 0;
     End;
end;

function TdmNFe.GravarItensNotaFiscal(iCodNota: Integer;
  aCDSItens: TClientDataSet): Boolean;
Var
    iItem : Integer;
    aCstIPI : String;
begin
      Result := False;
      //
      ExcluitItensNotaFiscal(iCodNota);
      //
      With cdsNotaFiscalItens do
        begin
             Close;
             Params.ParamByName('pid_nota_fiscal').AsInteger := iCodNota;
             Open;
        End;
      //
      // Dm.Start;
      try
          With aCDSItens do
          begin
              DisableControls;
              First;
              iItem  := 1;
              While not (EoF) do
                begin
                     If not (VerificaItemNota(iCodNota, FieldByName('CDS_NRITEM').AsInteger,
                           FieldByName('CDS_CDPROD').AsString)) Then
                          cdsNotaFiscalItens.Append
                      Else
                          cdsNotaFiscalItens.Edit;
                     //
                     cdsNotaFiscalItensid_nota_fiscal.AsInteger   := iCodNota;
                     cdsNotaFiscalItensitem.AsInteger             := iItem;   //FieldByName('CDS_NRITEM').AsInteger;
                     cdsNotaFiscalItensid_produto.AsInteger       := FieldByName('CDS_CDPROD').AsInteger;
                     cdsNotaFiscalItensdescricao.AsString         := FieldByName('CDS_DESCRICAO').AsString;
                     cdsNotaFiscalItensid_cfop.AsString           := FieldByName('CDS_CFOP').AsString;
                     cdsNotaFiscalItensid_ncm.AsString            := uFuncoes.Alltrim(FieldByName('CDS_NCM').AsString);
                     cdsNotaFiscalItensid_unidade.AsString        := FieldByName('CDS_UNDCOM').AsString;
                     cdsNotaFiscalItensquantidade.AsFloat         := FieldByName('CDS_QTDECOM').AsFloat;
                     If not uFuncoes.Empty(FieldByName('CDS_ORIGEM_PRODUTO').AsString) Then
                        cdsNotaFiscalItensorigem_produto.AsString := FieldByName('CDS_ORIGEM_PRODUTO').AsString
                     Else
                        cdsNotaFiscalItensorigem_produto.AsString := '0';
                     cdsNotaFiscalItensvalor_unitario.AsFloat     := FieldByName('CDS_VLUNITARIO').AsFloat;
                     cdsNotaFiscalItensvalor_desconto.AsFloat     := FieldByName('CDS_VLDESCONTO').AsFloat;
                     cdsNotaFiscalItenspercentual_desconto.AsFloat  := FieldByName('CDS_PEDESC').AsFloat;
                     cdsNotaFiscalItensvalor_acrescimo.AsFloat    := FieldByName('CDS_VLACRESCIMO').AsFloat;
                     cdsNotaFiscalItenspercentual_acrescimo.AsFloat := FieldByName('CDS_PEACRE').AsFloat;
                     cdsNotaFiscalItensvalor_frete.AsFloat        := FieldByName('CDS_VLFRETE').AsFloat;
                     cdsNotaFiscalItensvalor_seguro.AsFloat       := FieldByName('CDS_VLSEGURO').AsFloat;
                     cdsNotaFiscalItensvalor_outrasdespesas.AsFloat := FieldByName('CDS_VLOUTRASDESPESAS').AsFloat;
                     if (FieldByName('CDS_INDTOT').AsInteger = 1) Then
                         cdsNotaFiscalItensindtot.Asboolean       := True
                     Else
                         cdsNotaFiscalItensindtot.Asboolean       := False;
                     cdsNotaFiscalItensaliquota_icms.AsFloat      := FieldByName('CDS_ALIQICMS').AsFloat;
                     cdsNotaFiscalItensvalor_bc_icms.AsFloat      := Roundto( FieldByName('CDS_BCICMS').AsFloat, -2);
                     cdsNotaFiscalItensvalor_icms.AsFloat         := Roundto( FieldByName('CDS_VLICMS').AsFloat, -2);
                     cdsNotaFiscalItensvalor_ipi.AsFloat          := uFuncoes.Arredondar(FieldByName('CDS_VLIPI').AsFloat,2);
                     //
                     if not uFuncoes.Empty(FieldByName('CDS_NRLOTE').AsString) Then
                         cdsNotaFiscalItensnum_lote.AsString := uFuncoes.Alltrim(FieldByName('CDS_NRLOTE').AsString);
                     if not uFuncoes.Empty(FieldByName('CDS_DTFABRICACAO').AsString) Then
                         cdsNotaFiscalItensdata_fabricacao_lote.AsDateTime := FieldByName('CDS_DTFABRICACAO').AsDateTime;
                     if not uFuncoes.Empty(FieldByName('CDS_DTVENCIMENTO').AsString) Then
                         cdsNotaFiscalItensdata_vencimento_lote.AsDateTime := FieldByName('CDS_DTVENCIMENTO').AsDateTime;
                     //
                     cdsNotaFiscalItensaliquota_ipi.AsFloat       := uFuncoes.Arredondar(FieldByName('CDS_ALIQIPI').AsFloat,2);
                     cdsNotaFiscalItensvalor_bc_ipi.AsFloat       := uFuncoes.Arredondar(FieldByName('CDS_VLUNITARIO').AsFloat*FieldByName('CDS_QTDECOM').AsFloat,2);
                     cdsNotaFiscalItenscst_icms.AsString          := uFuncoes.StrZero(FieldByName('CDS_CST').AsString,2);
                     // Cst  IPI
                     {if (DM.cdsConfigCFG_COD_REGIME_TRIBUTARIO.AsInteger > 0)  to-do
                       and (DM.cdsConfigCFG_COD_REGIME_TRIBUTARIO.AsInteger <> 3) Then
                         cdsNotaFiscalItens.FieldByName('NFI_IPI_SIT_TRIBUTARIA').AsString := '99'
                     Else
                     begin                                                               }
                          if not uFuncoes.Empty(FieldByName('CDS_IPI_CST').AsString) Then
                              cdsNotaFiscalItenscst_ipi.AsString := FieldByName('CDS_IPI_CST').AsString
                          Else
                          begin
                              aCstIPI := InttoStr(dmDados.GetCST_IPI(FieldByName('CDS_CDPROD').AsInteger));
                              // dmDados.GetCST_IPI(StrtoInt(Copy(FieldByName('CDS_CDPROD').AsString),2,2));
                              if not uFuncoes.Empty(aCstIPI) Then
                                  cdsNotaFiscalItenscst_ipi.AsString := aCstIPI
                              Else
                                  cdsNotaFiscalItenscst_pis.AsString := '99';
                          End;
                     //End;
                     //    
                     if not uFuncoes.Empty(FieldByName('CDS_CST_PIS').AsString) Then
                        cdsNotaFiscalItenscst_pis.AsString := FieldByName('CDS_CST_PIS').AsString;
                     if not uFuncoes.Empty(FieldByName('CDS_CST_COFINS').AsString) Then
                        cdsNotaFiscalItenscst_cofins.AsString := FieldByName('CDS_CST_COFINS').AsString;
                     //
                     If (FieldByName('CDS_PEREDUCAO').AsFloat > 0) Then
                        cdsNotaFiscalItenspercentual_reducao_icms.AsFloat := FieldByName('CDS_PEREDUCAO').AsFloat;
                     //
                     dmDados.FilterCDS(DmDados.cdsProduto, fsInteger, FieldByName('CDS_CDPROD').AsString);
                     if not (DmDados.cdsProduto.IsEmpty) Then
                     begin
                          cdsNotaFiscalItensvalor_compra.AsFloat  := DmDados.cdsProdutovalor_compra.AsFloat;
                          cdsNotaFiscalItensvalor_custo.AsFloat   := DmDados.cdsProdutovalor_custo.AsFloat;
                     End;
                     //
                     DmDados.cdsProduto.Close;
                     //
                     dmDados.RefreshCDS(dmDados.cdsConfig);

                     If (dmDados.cdsConfigativa_sped_pis_cofins.AsBoolean) Then
                     begin
                          //    PIS
                          if uFuncoes.Empty(FieldByName('CDS_CST_PIS').AsString) Then
                              cdsNotaFiscalItenscst_pis.AsInteger  := DMDados.GetCST_PIS(FieldByName('CDS_CDPROD').AsInteger)
                          Else
                              cdsNotaFiscalItenscst_pis.AsString := uFuncoes.StrZero(FieldByName('CDS_CST_PIS').AsString,2);
                          //
                          cdsNotaFiscalItensvalor_bc_pis.AsFloat              := FieldByName('CDS_SUBTOTAL').AsFloat;
                          //
                          If uFuncoes.Empty(FieldByName('CDS_ALIQ_PIS').AsString) Then
                           begin
                              if (cdsNotaFiscalItenscst_pis.AsInteger <> 4)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 6)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 7)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 8)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 9)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 70)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 71)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 72)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 73)
                                 or (cdsNotaFiscalItenscst_pis.AsInteger <> 74) Then
                                    cdsNotaFiscalItensaliquota_pis.AsFloat := dmDados.GetAliquotaPis(FieldByName('CDS_CDPROD').AsInteger);
                           End
                          Else
                          begin
                              if (FieldByName('CDS_ALIQ_PIS').AsFloat > 0) Then
                                 cdsNotaFiscalItensaliquota_pis.AsFloat       := FieldByName('CDS_ALIQ_PIS').AsFloat
                              Else
                                 cdsNotaFiscalItensaliquota_pis.Clear;
                          End;
                          //
                          // cdsNotaFiscalItensNFI_QUANT_BC_PIS.AsFloat           := 0;
                          // cdsNotaFiscalItensNFI_ALIQ_PIS_QUANT_REAIS.AsFloat   := 0;
                          cdsNotaFiscalItensvalor_pis.AsFloat                 := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FieldByName('CDS_SUBTOTAL').AsFloat, cdsNotaFiscalItensaliquota_pis.AsFloat),2);
                          // COFINS
                          If ufuncoes.Empty(FieldByName('CDS_CST_COFINS').AsString) Then
                              cdsNotaFiscalItenscst_cofins.AsInteger := dmDados.GetCST_Cofins(FieldByName('CDS_CDPROD').AsInteger)
                          Else
                              cdsNotaFiscalItenscst_cofins.AsString  := uFuncoes.StrZero(FieldByName('CDS_CST_COFINS').AsString,2);
                          cdsNotaFiscalItensvalor_bc_cofins.AsFloat  := FieldByName('CDS_SUBTOTAL').AsFloat;
                          if ufuncoes.Empty(FieldByName('CDS_ALIQ_COFINS').AsString) Then
                           begin
                              if (cdsNotaFiscalItenscst_cofins.AsInteger <> 4)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 6)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 7)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 8)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 9)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 70)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 71)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 72)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 73)
                                 or (cdsNotaFiscalItenscst_cofins.AsInteger <> 74) Then
                                      cdsNotaFiscalItensaliquota_cofins.AsFloat := DMDados.GetAliquotaCofins(FieldByName('CDS_CDPROD').AsInteger)
                           End
                          Else
                          begin
                               if (FieldByName('CDS_ALIQ_COFINS').AsFloat > 0) Then
                                  cdsNotaFiscalItensaliquota_cofins.AsFloat  := FieldByName('CDS_ALIQ_COFINS').AsFloat
                               Else
                                  cdsNotaFiscalItensaliquota_cofins.Clear;
                          End;
                          // cdsNotaFiscalItensNFI_QUANT_BC_COFINS.AsFloat        := 0;
                          // cdsNotaFiscalItensNFI_ALIQ_COFINS_QUANT.AsFloat      := 0;
                          cdsNotaFiscalItensvalor_cofins.AsFloat              := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FieldByName('CDS_SUBTOTAL').AsFloat, cdsNotaFiscalItensaliquota_cofins.AsFloat),2);
                     End;
                     // 1 – Simples Nacional;
                     // 2 – Simples Nacional – excesso de sublimite de receita bruta;
                     // 3 – Regime Normal. (v2.0).
                     if (uFrmPlusPdvNfe.iCodRegimeTributario > 0)
                       and (uFrmPlusPdvNfe.iCodRegimeTributario <> 3) Then
                        Begin
                           if not uFuncoes.Empty(FieldByName('CDS_CSOSN').AsString) Then
                              cdsNotaFiscalItensicms_simples_nacional.AsString := FieldByName('CDS_CSOSN').AsString
                           Else
                              cdsNotaFiscalItensicms_simples_nacional.AsInteger := 102;
                        End
                        Else
                            cdsNotaFiscalItensicms_simples_nacional.Clear;
                     // substituição tributária 
                     If (FieldByName('CDS_BCICMS_ST').AsFloat > 0) Then
                     begin
                          cdsNotaFiscalItensmod_bc_st.AsInteger                     := FieldByName('CDS_IDMODA_CALC_ICMS_ST').AsInteger;
                          cdsNotaFiscalItenspercentual_reducao_bc_icms_st.AsFloat   := FieldByName('CDS_PERC_REDUCAO_BC_ICMS_ST').AsFloat;
                          cdsNotaFiscalItenspercentual_margem_lucro_icms_st.AsFloat :=  FieldByName('CDS_PERC_MARGEM_LUCRO_ICMS_ST').AsFloat;
                          cdsNotaFiscalItensaliquota_icms_st.AsFloat                :=  FieldByName('CDS_ALIQUOTA_ICMS_ST').AsFloat;
                          cdsNotaFiscalItensvalor_bc_icms_st.AsFloat                :=  uFuncoes.Arredondar(FieldByName('CDS_BCICMS_ST').AsFloat,2);
                          cdsNotaFiscalItensvalor_icms_st.AsFloat                   :=  uFuncoes.Arredondar(FieldByName('CDS_VLICMS_ST').AsFloat,2);
                     End;
                     // 17/10/2013
                     cdsNotaFiscalItenspercentual_tributo.AsFloat                   := FieldByName('CDS_PERC_TRIBUTO').AsFloat;
                     //
                     if (FieldByName('CDS_PERC_MERCADORIA_DEVOLVIDA').AsFloat > 0) Then
                         cdsNotaFiscalItenspercentual_ipi_devolvido.AsFloat := FieldByName('CDS_PERC_MERCADORIA_DEVOLVIDA').AsFloat;
                     if (FieldByName('CDS_VALOR_IPI_DEVOLVIDO').AsFloat > 0) Then
                         cdsNotaFiscalItensvalor_ipi_devolvido.AsFloat      := FieldByName('CDS_VALOR_IPI_DEVOLVIDO').AsFloat;
                     //
                     cdsNotaFiscalItens.Post;
                     //
                     iItem := iItem + 1;
                     // Proximo
                     Next;
                End;
                EnableControls;
                //
                If (cdsNotaFiscalItens.ApplyUpdates(0) = 0) Then
                    Result := true;
          End;
          // Comit
          // Dm.Comit(dm.Transc);
      Except
           on Exc:Exception do
            begin
                  Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                    'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
            End;
      End;
end;

function TdmNFe.ExcluitItensNotaFiscal(iCodNota: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto := 'Delete from nota_fiscal_itens where (id_nota_fiscal = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := icodNota;
      ExecSQL();
      result := true
    finally
      free;
    end;
end;

function TdmNFe.VerificaItemNota(iCodigoNota, iItem: Integer;
  aProduto: String): Boolean;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     Result := False;
     texto  := 'Select id_nota_fiscal, item, id_produto from nota_fiscal_itens ';
     texto  := texto + ' where (id_nota_fiscal = :pnotaf) and (item = :pnritem) and (id_produto = :pproduto) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := dmDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pnotaf').AsInteger  := iCodigoNota;
           Params.ParamByName('pnritem').AsInteger := iItem;
           Params.ParamByName('pproduto').AsInteger := StrtoInt(aProduto);
           Open;
           //
           If not (IsEmpty) Then
              Result := True;
      Finally
         Free;
      End;
end;

procedure TdmNFe.AbrirVolumesNota(iCodNota : Integer);
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select * from nota_fiscal_volumes where (id_nota_fiscal = :pnota) order by item';
     dmDados.RefreshCDS(cdsListaVolumes);
     cdsListaVolumes.EmptyDataSet;
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := dmDados.sqlConexao;
         sql.Add(texto);
         Params[0].AsInteger := iCodNota;
         Open;
         //
         if not (IsEmpty) then
           begin
                While not (Eof) do
                 begin
                      cdsListaVolumes.Append;
                      cdsListaVolumesVOL_ID_NOTA_FISCAL.asInteger := iCodNota;
                      cdsListaVolumesVOL_ITEM.asInteger           := FieldByName('item').asInteger;
                      cdsListaVolumesVOL_QUANTIDADE.asFloat       := FieldByName('quantidade').asFloat;
                      cdsListaVolumesVOL_ESPECIE.asString         := FieldByName('especie').asString;
                      cdsListaVolumesVOL_MARCA.asString           := FieldByName('marca').asString;
                      cdsListaVolumesVOL_NUMERACAO.asString       := FieldByName('numeracao').asString;
                      cdsListaVolumesVOL_PESO_LIQUIDO.asFloat     := FieldByName('peso_liquido').asFloat;
                      cdsListaVolumesVOL_PESO_BRUTO.asFloat       := FieldByName('peso_bruto').asFloat;
                      //
                      cdsListaVolumes.Post;
                      //
                      Next;
                 End;
                 //
                 cdsListaDuplicatas.First;
           End;
       finally
         free;
       end;
end;

procedure TdmNFe.cdsListaNT_RefCalcFields(DataSet: TDataSet);
begin
    if (cdsListaNT_Ref.State = dsInternalCalc) Then
     begin
          Case cdsListaNT_RefCDR_TIPO_NOTA.AsInteger of
             1 : cdsListaNT_RefCDR_DESCRICAO_TIPO.AsString := 'NF-e';
             2 : cdsListaNT_RefCDR_DESCRICAO_TIPO.AsString := 'CT-e';
             3 : cdsListaNT_RefCDR_DESCRICAO_TIPO.AsString := 'Nota Fiscal';
          End;
     End;
end;

function TdmNFe.GetStatusdaNota(iNota, idEmitente: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  Result := 0;                                                                                   // numero_nota_fiscal
  texto := 'select id, situacao, numero_nota_fiscal, serie, id_empresa from nota_fiscal where (id = :pCODIGO) and (id_empresa = :pemitente) and (indicador_do_emitente = '+QuotedStr('0')+') ';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger   := iNota;
      Params.ParamByName('pemitente').asinteger := idEmitente;
      Open;
      if not (IsEmpty) Then
         result := FieldByName('situacao').AsInteger;
    finally
      free;
    end;
end;

procedure TdmNFe.CarregarOrgaoReceptorNfe;
begin
     DmDados.RefreshCDS( cdsListaOrgaoReceptor);
     cdsListaOrgaoReceptor.EmptyDataSet;
     // (AC,AL,AP,AM,BA,CE,DF,ES,GO,MA,MT,MS,MG,PA,PB,PR,PE,PI,RJ,RN,RS,RO,RR,SC,SP,SE,TO);
     // (12,27,16,13,29,23,53,32,52,21,51,50,31,15,25,41,26,22,33,24,43,11,14,42,35,28,17);
     With cdsListaOrgaoReceptor do
     begin
          Append;
          FieldByname('UF').asString     := 'AC';
          FieldByname('CODIGO').asString := '12';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'AL';
          FieldByname('CODIGO').asString := '27';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'AP';
          FieldByname('CODIGO').asString := '16';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'AM';
          FieldByname('CODIGO').asString := '13';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'BA';
          FieldByname('CODIGO').asString := '29';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'CE';
          FieldByname('CODIGO').asString := '23';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'DF';
          FieldByname('CODIGO').asString := '53';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'ES';
          FieldByname('CODIGO').asString := '32';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'GO';
          FieldByname('CODIGO').asString := '52';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'MA';
          FieldByname('CODIGO').asString := '21';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'MT';
          FieldByname('CODIGO').asString := '51';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'MS';
          FieldByname('CODIGO').asString := '50';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'MG';
          FieldByname('CODIGO').asString := '31';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'PA';
          FieldByname('CODIGO').asString := '15';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'PB';
          FieldByname('CODIGO').asString := '25';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'PR';
          FieldByname('CODIGO').asString := '41';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'PE';
          FieldByname('CODIGO').asString := '26';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'PI';
          FieldByname('CODIGO').asString := '22';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'RJ';
          FieldByname('CODIGO').asString := '33';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'RN';
          FieldByname('CODIGO').asString := '24';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'RS';
          FieldByname('CODIGO').asString := '43';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'RO';
          FieldByname('CODIGO').asString := '11';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'RR';
          FieldByname('CODIGO').asString := '14';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'SC';
          FieldByname('CODIGO').asString := '42';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'SP';
          FieldByname('CODIGO').asString := '35';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'SE';
          FieldByname('CODIGO').asString := '28';
          Post;
          //
          Append;
          FieldByname('UF').asString     := 'TO';
          FieldByname('CODIGO').asString := '17';
          Post;
          //
     End;
end;

function TdmNFe.GetOrgaoReceptorNfe(aUF: String): Integer;
begin
     if (cdsListaOrgaoReceptor.IsEmpty) Then
         CarregarOrgaoReceptorNfe();
     //
     if (cdsListaOrgaoReceptor.Locate('UF',aUF,[])) Then
         Result :=  cdsListaOrgaoReceptor.FieldByname('CODIGO').asInteger;
end;

procedure TdmNFe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
     MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
     MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

function TdmNFe.GravaCartaCorrecao(iCodNfe, iSeq, iStatus: Integer; aChave,
  aMotivo, aProtocolo, aHora, aCarta, aRetornoWS: String;
  aDataMov: TDatetime): Boolean;
begin
     Result := False;
     //
     DMDados.FilterCDS(cdsCartaCorrecao, fsInteger, InttoStr(iCodNFe));
     With cdsCartaCorrecao do
      begin
           Append;
           FieldByName('id_nota_fiscal').AsInteger  := iCodNfe;
           FieldByName('sequencia').AsInteger       := iSeq;
           FieldByName('chave_acesso').AsString     := aChave;
           FieldByName('motivo').AsString           := aMotivo;
           FieldByName('status').AsInteger          := iStatus;
           FieldByName('numero_protocolo').AsString := aProtocolo;
           FieldByName('data').AsDateTime           := aDataMov;
           FieldByName('carta').AsString            := aCarta;
           FieldByName('retorno_xml').AsString      := aRetornoWS;
           ApplyUpdates(0);
      End;
end;

procedure TdmNFe.CarregarListaSituacaoNFe;
begin
     DmDados.RefreshCDS( cdsListaSituacao );
     cdsListaSituacao.EmptyDataSet;
     With cdsListaSituacao do
     begin
          // 1;"ASSINADA"
          Append;
          FieldByname('id').asinteger       := 1;
          FieldByname('descricao').asString := 'ASSINADA';
          Post;
          //  2;"AUTORIZADA"
          Append;
          FieldByname('id').asinteger       := 2;
          FieldByname('descricao').asString := 'AUTORIZADA';
          Post;
          //  3;"CANCELADA"
          Append;
          FieldByname('id').asinteger       := 3;
          FieldByname('descricao').asString := 'CANCELADA';
          Post;
          //  4;"DENEGADA"
          Append;
          FieldByname('id').asinteger       := 4;
          FieldByname('descricao').asString := 'DENEGADA';
          Post;
          //  5;"EM DIGITACAO"
          Append;
          FieldByname('id').asinteger       := 5;
          FieldByname('descricao').asString := 'EM DIGITACAO';
          Post;
          //  6;"EM PROCESSAMENTO NA SEFAZ"
          Append;
          FieldByname('id').asinteger       := 6;
          FieldByname('descricao').asString := 'EM PROCESSAMENTO NA SEFAZ';
          Post;
          //  7;"REJEITADA"
          Append;
          FieldByname('id').asinteger       := 7;
          FieldByname('descricao').asString := 'REJEITADA';
          Post;
          //  8;"TRANSMITIDA COM PENDENCIA"
          Append;
          FieldByname('id').asinteger       := 8;
          FieldByname('descricao').asString := 'TRANSMITIDA COM PENDENCIA';
          Post;
          //  9;"VALIDADA"
          Append;
          FieldByname('id').asinteger       := 9;
          FieldByname('descricao').asString := 'VALIDADA';
          Post;
          //  10;"NOTA INUTILIZADA"
          Append;
          FieldByname('id').asinteger       := 10;
          FieldByname('descricao').asString := 'NOTA INUTILIZADA';
          Post;
          //  99 nota entrada
          Append;
          FieldByname('id').asinteger       := 99;
          FieldByname('descricao').asString := 'NOTA ENTRADA MERCADORIA';
          Post;
     End;
end;

function TdmNFe.GetCodigoFormaEmissao(aDescricao: String): Integer;
begin
    If (cdsListaFormaEmissao.locate('FRM_DESCRICAO', aDescricao, [])) then
        Result := cdsListaFormaEmissaoFRM_CODIGO.AsInteger;
end;

function TdmNFe.GetCodigoSituacaoNota(aDescricao: String): Integer;
begin
      if (cdsListaSituacao.IsEmpty) Then
        CarregarListaSituacaoNFe();
        
      If (cdsListaSituacao.locate('descricao', aDescricao, [])) then
           Result := cdsListaSituacaoid.AsInteger;
end;

function TdmNFe.GetCodNaturezaOperacao(aDescricao: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
 { texto := 'select id, descricao from natureza_operacao Where (descricao = :pNOME)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.SqlConexao;
      sql.Add(texto);
      Params.ParamByName('pNOME').AsString := aDescricao;
      Open;
      //
      if not (IsEmpty) then
        result := FieldByName('id').AsInteger;
    finally
      free;
    end;}
    If not (dmNFe.cdsListaNaturezaOpr.isempty) Then
     begin
         if (dmNFe.cdsListaNaturezaOpr.locate('descricao', aDescricao, [])) Then
             Result := dmNFe.cdsListaNaturezaOpr.FieldByName('id').asInteger;
     End;
end;

function TdmNFe.GetVerificaExisteClienteNFe(iNumeroNota: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto := 'Select id, id_cliente, id_fornecedor from nota_fiscal Where (id = :pNOTA_FISCAL)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.SqlConexao;
      sql.Add(texto);
      Params.ParamByName('pNOTA_FISCAL').AsInteger := iNumeroNota;
      Open;
      If not (IsEmpty) Then
         If not uFuncoes.Empty(FieldByName('id_cliente').AsString) Then
             result := True
         Else
            If not uFuncoes.Empty(FieldByName('id_fornecedor').AsString) Then
               result := True;
    finally
      free;
    end;
end;

function TdmNFe.LimparChaveNotaFiscal(iNotaFiscal: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
     Result := false;
     texto := 'Update nota_fiscal set chave_acesso = :pCHAVE where (id = :pCODIGO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := DmDados.sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pCODIGO').AsInteger := iNotaFiscal;
         Params.ParamByName('pCHAVE').AsString   := '';
         try
            DMDados.Start;
            ExecSQL();
            dmDados.Comit(DMDados.Transc);
         Except
            on e: exception do
             begin
                 DMDados.Rollback(e.Message);
             End;
         End;
         //
         Result := True;
       finally
         free;
       end;
end;

function TdmNFe.GetProtocoloNota(iNota: Integer): String;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     texto  := 'Select id, numero_protocolo from nota_fiscal where (id = :pCODIGO)';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := DmDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iNota;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('numero_protocolo').AsString;
      Finally
         Free;
      End;
end;

function TdmNFe.SetChaveNotaFiscal(iNotaFiscal, idUsuario: Integer;
  aChave: String): Boolean;
begin
     Result := False;
     DmDados.FilterCDS(cdsNotaFiscal, fsInteger, InttoStr(iNotaFiscal));
     //
     if not (cdsNotaFiscal.IsEmpty) Then
      begin
           DmDados.Start;
           try
                With cdsNotaFiscal do
                  begin
                       Edit;
                       FieldByName('chave_acesso').AsString := aChave;
                       if (idUsuario > 0) Then
                       begin
                           FieldByName('id_usuario_enviou').AsInteger     := idUsuario;
                           // FieldByName('NTF_HORA_USUARIO_ENVIOU').AsString := Timetostr(Time());
                       End;
                       //
                       FieldByName('nome_computador_enviou').AsString := ufuncoes.Alltrim(Copy(uFuncoes.NomeMaquina(), 1, 40));
                       ApplyUpdates(0);
                  End;
                DmDados.Comit(DmDados.Transc);
                Result := True;
           Except
                on e: exception do
                begin
                     DMDados.Rollback(e.Message);
                End;
           End;
      End;
end;

function TdmNFe.SetStatusNotaFiscal(iNotaFiscal, aStatus: Integer): Boolean;
begin
     Result := False;
     DmDados.FilterCDS(cdsNotaFiscal, fsInteger, InttoStr(iNotaFiscal));
     //
     if not (cdsNotaFiscal.IsEmpty) Then
      begin
           DmDados.Start;
           try
                With cdsNotaFiscal do
                  begin
                       Edit;
                       FieldByName('situacao').AsInteger := aStatus;
                       ApplyUpdates(0);
                  End;
                DmDados.Comit(DmDados.Transc);
                Result := True;
           Except
                on e: exception do
                begin
                     DMDados.Rollback(e.Message);
                End;
           End;
      End;
end;

function TdmNFe.SetAtualizarRegistroNotaFiscal(iNotaFiscal,
  iSituacao: Integer; anRec, aProtocolo: String): Boolean;
Var
   M_DTMOVI : Tdatetime;
begin
     Result := False;
     DmDados.FilterCDS(cdsNotaFiscal, fsInteger, InttoStr(iNotaFiscal));
     //
     if not (cdsNotaFiscal.IsEmpty) Then
      begin
           DmDados.Start;
           try
                With cdsNotaFiscal do
                  begin
                       Edit;
                       M_DTMOVI := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;
                       If (iSituacao = 2) Then
                       begin
                            // FieldByName('NTF_DTATUALIZACAO_NF').AsDateTime := M_DTMOVI;
                            //FieldByName('NTF_DTDANFE').AsDateTime          := M_DTMOVI;
                            FieldByName('numero_recibo').AsString             := anRec;
                            FieldByName('numero_protocolo').AsString          := aProtocolo;
                            FieldByName('data_protocolo').AsDateTime          := M_DTMOVI;
                       End;
                       FieldByName('situacao').AsInteger                       := iSituacao;
                       ApplyUpdates(0);
                  End;
                DmDados.Comit(DmDados.Transc);
                Result := True;
           Except
                on e: exception do
                begin
                     DMDados.Rollback(e.Message);
                End;
           End;
      End;
end;

function TdmNFe.InserirXMLdaNFe(iCodNFe: Integer;
  PathArquivoXML: String): Boolean;
var FileStream : TFileStream;
    BlobStream : TStream;
    qraux : TSQLquery;
    texto : string;
begin
   Result := True;
   //
   try
        DMDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(iCodNFe));
        //
        if not (dmNFe.cdsNotaFiscal.IsEmpty) then
        begin
             With dmNFe.cdsNotaFiscal do
             begin
                  Edit;
                  FileStream := TFileStream.Create(PathArquivoXML, fmOpenRead or fmShareDenyWrite);
                  BlobStream := dmNFe.cdsNotaFiscal.CreateBlobStream(dmNFe.cdsNotaFiscal.FieldByName('arquivo_xml'), bmWrite);
                  //
                  try
                      BlobStream.CopyFrom(FileStream, FileStream.Size);
                  finally
                      FileStream.Free;
                      BlobStream.Free;
                  end;
                  //
                  ApplyUpdates(0);
             End;
        End;
   Except
        Result := False;
   End;
end;

procedure TdmNFe.PathACBrNFeDANFERave;
begin
     {ACBrNFeDANFERave1.PathPDF   := ExtractFilePath( Application.ExeName )+'PDF\';
     ACBrNFeDANFERave1.RavFile   := ExtractFilePath( Application.ExeName )+'Report\DANFE_Rave513.rav';}
     //
     ACBrNFeDANFERaveCB1.PathPDF :=  ExtractFilePath( Application.ExeName )+'PDF\';
     //
     ACBrNFeDANFERaveCB1.MostrarPreview := true;
     ACBrNFeDANFERaveCB1.MostrarStatus  := true;
     //
     ACBrNFe1.Configuracoes.Arquivos.PathSalvar := ExtractFilePath( Application.ExeName )+'XML\';
     ACBrNFe1.DANFE.Sistema := 'InfoG2';
     ACBrNFe1.DANFE.Usuario := 'PlusPdvNFe';
     //
     If FileExists(ExtractFilePath( Application.ExeName )+'logo.bmp') Then
       dmNFe.ACBrNFe1.DANFE.Logo := ExtractFilePath( Application.ExeName ) + 'logo.bmp';
     if FileExists(ExtractFilePath( Application.ExeName )+'logo.jpg') Then
        ACBrNFeDANFERaveCB1.Logo := ExtractFilePath( Application.ExeName ) + 'logo.jpg';
end;

function TdmNFe.SetCancelarNotaFiscal(iNotaFiscal, iSituacao: Integer;
  aData: TDateTime; aProtocolo, aHora, aJustificativa: String): Boolean;
begin
     Result := False;
     DmDados.FilterCDS(cdsNotaFiscal, fsInteger, InttoStr(iNotaFiscal));
     //
     if not (cdsNotaFiscal.IsEmpty) Then
      begin
           DmDados.Start;
           try
                With cdsNotaFiscal do
                  begin
                       Edit;
                       FieldByName('num_protocolo_cancelamento').AsString   := aProtocolo;
                       FieldByName('data_cancelamento').AsDateTime          := aData;
                       // FieldByName('NTF_HORA_CANCELAMENTO').AsString      := aHora;
                       FieldByName('situacao').AsInteger                    := iSituacao;
                       FieldByName('justificativa_cancelamento').AsString   := aJustificativa;
                       ApplyUpdates(0);
                  End;
                DmDados.Comit(DmDados.Transc);
                Result := True;
           Except
               On e: exception do
               begin
                    DmDados.Rollback(E.Message);
               End;
           End;
      End;
end;

function TdmNFe.GetChaveNotaFiscal(iNotaFiscal: Integer): Boolean;
Var
    qryAux : TSQLQuery;
    texto : String;
begin
     result := False;
     texto  := 'Select id, chave_acesso from nota_fiscal Where (id = :pCODIGO) ';
     //
     qryAux := TSQLQuery.Create(nil);
     with qryAux do
      try
           SQLConnection := DmDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iNotaFiscal;
           Open;
           //
           If not (IsEmpty) Then
              if uFuncoes.Empty(FieldByName('chave_acesso').AsString) Then
                 Result := True;
      Finally
         Free;
      End;
end;

procedure TdmNFe.ConsultaNfe(iCodigo: Integer);
Var
   aArquivo : String;
   iCodigoNFe : Integer;
begin
       dmNFe.PathACBrNFeDANFERave();
       udmNFe.aProtocoloRetorno := '';
       OpenDialog1.Title  := 'Selecione a NFE';
       OpenDialog1.DefaultExt := '*-nfe.XML';
       OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
       OpenDialog1.InitialDir := dmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
       //
       DMDados.FilterCDS(cdsNotaFiscal, fsInteger, InttoStr(iCodigo));
       iCodigoNFe := iCodigo;
       aArquivo := OpenDialog1.InitialDir+'\'+dmNFe.cdsNotaFiscalchave_acesso.AsString+'-NFe.XML';
       OpenDialog1.FileName := aArquivo;
       //
       dmNFe.ACBrNFe1.NotasFiscais.Clear;
       //
       dmNFe.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DMDados.cdsEmpresacertificado_numero_serie.AsString;
        If (DMDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
           ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;

       If (DMDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
           ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
       //
       dmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       dmNFe.ACBrNFe1.Consultar;
       {ShowMessage('Status : '+  dmNFe.ACBrNFe1.WebServices.Consulta.XMotivo + #13 +
                'Protocolo : ' + dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo);}
       //
       udmNFe.aProtocoloRetorno := dmNFe.ACBrNFe1.WebServices.Consulta.Protocolo;
       //
       If (dmNFe.ACBrNFe1.WebServices.Retorno.cStat = 100) Then
           GetProtocoloNF2(iCodigoNFe, udmNFe.aProtocoloRetorno);
end;

function TdmNFe.GetProtocoloNF2(iNota: Integer;
  aProtocolo: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto := 'Select id, numero_protocolo, situacao from nota_fiscal Where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := iNota;
      Open;
      If not (IsEmpty) Then
      begin
        {If uFuncoes.Empty(FieldByName('NTF_PROTOCOLO').AsString) Then
        begin     }
             DMDados.FilterCDS(cdsNotaFiscal, fsInteger, IntToStr(iNota));
             if not (cdsNotaFiscal.IsEmpty) Then
             begin
                  With cdsNotaFiscal do
                  begin
                       dmDados.start;
                       Try
                          Edit;
                          //FieldByName('NTF_DTATUALIZACAO_NF').AsDateTime := Date();
                          FieldByName('data_impressao_danfe').AsDateTime   := Date();
                          FieldByName('situacao').AsInteger  := 2;
                          FieldByName('numero_protocolo').AsString         := aProtocolo;
                          FieldByName('data_protocolo').AsDateTime         := Date();
                          If (ApplyUpdates(0) = 0) Then
                            begin
                                 dmdados.Comit( dmDados.Transc);
                                 result := true;
                            End
                          Else
                              dmdados.rollback('Erro ao tentar atualizar dados NF-e!!!');
                       Except
                          on e: exception do
                           begin
                              dmdados.rollback(e.Message);
                           End;
                       End;
                  End;
                  cdsNotaFiscal.close;
             End;
        //End;
      End;
    finally
      free;
    end;
end;

function TdmNFe.GetTipoDanfe(iCodigoNfe: Integer): Integer;
Var
    qryAux : TSQLQuery;
    texto : String;
begin
     Result := 1;
     texto  := 'Select id , tipo_danfe from NOTA_FISCAL Where (id = :pCODIGO) ';
     //
     qryAux:= TSQLQuery.Create(nil);
     with qryAux do
      try
           SQLConnection := DmDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodigoNfe;
           Open;
           //
           If not (IsEmpty) Then
              Result := FieldByName('tipo_danfe').AsInteger;
      Finally
         Free;
      End;

end;

function TdmNFe.GetVerificarDescricaoSit(aDescricao: String): Integer;
begin

end;

function TdmNFe.SetStatusdaNotaInutilizada(iStatus, iNotaInicial,
  iNotaFinal: Integer; aProtocolo: String; idEmitente: Integer; aSerie : String): Boolean;
Var
   Cont, iCodStatus, idNota : Integer;
begin
     result := false;
     Cont := iNotaInicial;
     DMDados.Start;
     try
          For Cont := iNotaInicial to iNotaFinal do
          begin
              idNota := dmDados.GetIdRegistoNFe(Cont, idEmitente, aSerie);
              if (idNota <> -1) Then
               begin
                  if (GetStatusdaNota(idNota, idEmitente) <> 2) Then
                   begin
                       if not (SetInutizarNFe(InttoStr(idNota), '1', aProtocolo, idEmitente)) Then
                           ShowMessage('Erro ao tentar gravar dados! Erro:'+#13+
                                       'NF-e : '+ InttoStr(Cont)+'  Série: ');
                   End;
               End; // if (idNota <> -1) Then
           End;     // fim-do-para
           //
           DMDados.Comit(DMDados.Transc);
           //
           Result := True;
     Except
        on e: exception do
          begin
                 DMDados.Rollback(E.Message);
          End;
     End;
end;

function TdmNFe.SetInutizarNFe(aNumeroNFe, aSerie, aProtocolo: String;
  idEmitente: Integer): Boolean;
Var
    qryAux : TSQLQuery;
    texto : String;
begin
     Result := False;
     texto  := 'Update nota_fiscal set data_protocolo = :pDATAPROTOCOLO, situacao = :pSITUACAO_ENUM, numero_protocolo = :pPROTOCOLO ';
     texto  := texto + ' Where (id = :pCODIGO) and (id_empresa = :pemitente) and (serie = :pserie) ';       // numero_nota_fiscal
     //
     qryAux:= TSQLQuery.Create(nil);
     with qryAux do
      try
           SQLConnection := DmDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger         := StrtoInt(aNumeroNFe);  //  uFuncoes.StrZero(aNumeroNFe,9);
           Params.ParamByName('pemitente').AsInteger       := idEmitente;
           Params.ParamByName('pserie').AsString           := aSerie;
           //
           Params.ParamByName('pDATAPROTOCOLO').AsDate     := Date();
           Params.ParamByName('pSITUACAO_ENUM').AsInteger  := 10;
           Params.ParamByName('pPROTOCOLO').AsString       := uFuncoes.Alltrim(aProtocolo);
           //
           ExecSQL();
           //
           Result := True;
      Finally
         Free;
      End;
end;

function TdmNFe.ExcluirItemNfe(idSeqNFe: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
    Result := False;
    texto := 'Delete from nota_fiscal_itens where (id_nota_fiscal = :pcodigo) ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
             SQLConnection := DmDados.sqlConexao;
             sql.Add(texto);
             Params.ParamByName('pcodigo').AsInteger  := idSeqNFe;
             ExecSQL();
             DMDados.Comit(DMDados.Transc);
             //
             Result := True;
       finally
           free;
       end;
end;

function TdmNFe.GetSEQUENCIA_CCE_NF_E(iCodigo: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto := 'select id, sequencia_cce from nota_fiscal Where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(Self);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := iCodigo;
      Open;
      //
      if not (IsEmpty) then
        result := FieldByName('sequencia_cce').AsInteger;
    finally
      free;
    end;
end;

function TdmNFe.GerarXMLNFe(iCodigoNFe : Integer;
  aSoImprimir: String; idUsuario: Integer): Boolean;
Var
    StringList: TStringList;
    qryAux : TSQLQuery;
    texto : String;
    M_VLNOTA, M_VLITENS : Double;
    M_IDNOTA, M_EMCNPJ, M_CGCCPF : String;
    M_UFEMIT, M_CAMINHO, aDV, aCodCST : String;
    M_NRITEM, M_ITEMVOL : Integer;
    M_NMPROD : String;
    M_VLALIQ, W_VLALIQ , M_TOTAL_PIS, M_TOTAL_COFINS : Double;
    aArquivo, aChave, X : String;
    M_CSOSN, M_QTCASA : Integer;
    aDataFabricacao : String;
    aUnidProduto : String;
    iQuantArmaz : Integer;
    aMsgImpostos, aMsgNotasRefereciadas : String;
    FTotalImposto, FPercentualImposto, M_TOTAL_ICMS_ITEMS, M_VALOR_TOTAL_BC_ICMS : Double;
    bNatVenda, bSpedPisCofins : boolean;
    iCstICMS, iCstIPI, iCstPis, iCstCofins, idNFe, iOrigemProd : Integer;
    M_TOTAL_BC_PIS, M_VALOR_PIS,  M_TOTAL_BC_COFINS, M_VALOR_COFINS : Double;
    FTotalTributoFederal, FTotalTributoEstadual, FTotalTributoMunicipal,
    FTotalPeloProdutos, FSubTotal, FPercentualImpostoItem : Double;
    aDescricaoTributos, aChaveIBPT, aChaveIBPTAtual, aDescricaoNatureza : String;
    bTemCupomFiscal : Boolean;
    aMsgCupomFiscal, aMsgBuscaCupomFiscal : String;
begin
      Result := False;
      bNatVenda := false;
      bTemCupomFiscal := False;
      aMsgNotasRefereciadas := '';
      aDescricaoTributos    := '';
      aChaveIBPT := '';
      bSpedPisCofins := False;
      // Nota Fiscal
      dmDados.FilterCDS(cdsNotaFiscal, fsInteger, IntToStr(iCodigoNFe));
      If not (cdsNotaFiscal.IsEmpty) Then
       begin
            bNatVenda := GetNaturezaVenda(cdsNotaFiscalnatureza_operacao.AsInteger);
            aDescricaoNatureza := dmDados.GetDescricaoNaturezaOperacao(cdsNotaFiscalnatureza_operacao.AsInteger);
            // Emitente
            DMDados.FilterCDS(DMDados.cdsEmpresa, fsInteger, dmNFe.cdsNotaFiscalid_empresa.AsString);
           //
           If not (DmDados.CdsEmpresa.IsEmpty) Then
           begin
                M_EMCNPJ := DmDados.CdsEmpresacnpj.AsString;
                M_UFEMIT := dmDados.GetUFEmitente(dmNFe.cdsNotaFiscalid_empresa.AsInteger) ;
           End;
           // Cliente
           if not uFuncoes.Empty(dmNFe.cdsNotaFiscalid_cliente.AsString) Then
               dmDados.FilterCDS(DmDados.CdsCliente, fsInteger, dmNFe.cdsNotaFiscalid_cliente.AsString)
           Else
               dmDados.FilterCDS(DmDados.CdsCliente, fsInteger, '-1');
           M_CGCCPF := DmNFe.cdsNotaFiscaldestinatario_cnpjcpf.asString;
      End
      Else
          Exit;
      //
      M_VLALIQ := 0;
      M_TOTAL_PIS := 0;
      M_TOTAL_COFINS := 0;
      M_TOTAL_ICMS_ITEMS := 0;
      M_VALOR_TOTAL_BC_ICMS := 0;
      //
      M_TOTAL_BC_PIS := 0;
      M_VALOR_PIS    := 0;
      M_TOTAL_BC_COFINS := 0;
      M_VALOR_COFINS    := 0;
      //
      FSubTotal := 0;
      FTotalTributoFederal   := 0;
      FTotalTributoEstadual  := 0;
      FTotalTributoMunicipal := 0;
      FTotalPeloProdutos     := 0;
      //
      ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
      // ---- modelo 3.10
      ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
      //
      ACBrNFe1.NotasFiscais.Clear;
      //
      M_QTCASA := 2;
      //
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DMDados.cdsEmpresacertificado_numero_serie.AsString;
      // Produção
      If (DMDados.cdsEmpresaambiente_nfe.AsInteger = 1) Then
       begin
         ACBrNFe1.Configuracoes.WebServices.Ambiente  := taProducao;
         ACBrNFe1.Configuracoes.WebServices.UF := M_UFEMIT;
       End;
       // Homologação
      If (DMDados.cdsEmpresaambiente_nfe.AsInteger = 2) Then
       begin
          ACBrNFe1.Configuracoes.WebServices.Ambiente  := taHomologacao;
          ACBrNFe1.Configuracoes.WebServices.UF := M_UFEMIT;
       End;
      //
      If (cdsNotaFiscaltipo_danfe.AsInteger = 1) Then
          ACBrNFe1.DANFE.TipoDANFE := tiRetrato
      Else
          ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;      //
      //bNatVenda := false;
      aMsgNotasRefereciadas := '';
      aDescricaoTributos    := '';
      aChaveIBPT := '';
      // Nota Fiscal
      dmDados.RefreshCDS(dmDados.cdsConfig);
      dmDados.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, IntToStr(iCodigoNFe));
      If not (dmNFe.cdsNotaFiscal.IsEmpty) Then
      begin
          // bNatVenda := GetNaturezaVenda(cdsNotaFiscalid_natureza_operacao.AsInteger);
          // Emitente
          DMDados.FilterCDS(DMDados.cdsEmpresa, fsInteger, dmNFe.cdsNotaFiscalid_empresa.AsString);
          //
          If not (DmDados.CdsEmpresa.IsEmpty) Then
          begin
               M_EMCNPJ := DmDados.CdsEmpresacnpj.AsString;
               M_UFEMIT := dmDados.GetUFEmitente(dmNFe.cdsNotaFiscalid_empresa.AsInteger) ;
               bSpedPisCofins := DmDados.cdsConfigativa_sped_pis_cofins.asBoolean;
          End;
          // Cliente
             if not uFuncoes.Empty(dmNFe.cdsNotaFiscalid_cliente.AsString) Then
               dmDados.FilterCDS(DmDados.CdsCliente, fsInteger, dmNFe.cdsNotaFiscalid_cliente.AsString)
           Else
               dmDados.FilterCDS(DmDados.CdsCliente, fsInteger, '-1');
          // dmDados.FilterCDS(DmDados.CdsCliente, fsInteger, dmNFe.cdsNotaFiscalid_cliente.AsString);
          M_CGCCPF := DmNFe.cdsNotaFiscaldestinatario_cnpjcpf.asString;
      End
      Else
          Exit;
      //
      M_VLALIQ := 0;
      M_TOTAL_PIS := 0;
      M_TOTAL_COFINS := 0;
      M_TOTAL_ICMS_ITEMS := 0;
      M_VALOR_TOTAL_BC_ICMS := 0;
      //
      M_TOTAL_BC_PIS := 0;
      M_VALOR_PIS    := 0;
      M_TOTAL_BC_COFINS := 0;
      M_VALOR_COFINS    := 0;
      //
      FSubTotal := 0;
      FTotalTributoFederal   := 0;
      FTotalTributoEstadual  := 0;
      FTotalTributoMunicipal := 0;
      FTotalPeloProdutos     := 0;
      //
      M_QTCASA := 2;
      //
      Try
          With ACBrNFe1.NotasFiscais.Add.NFe do
           begin
               // Cabeçalho - Identificação
               idNFe         := cdsNotaFiscalnumero_nota_fiscal.AsInteger;
               Ide.cNF       := idNFe;  // iCodigo;
               Ide.nNF       := idNFe;  //  iCodigo;
               Ide.natOp     := aDescricaoNatureza;
               Case (cdsNotaFiscalind_pag.AsInteger) of
                   0 : Ide.indPag    := ipVista;
                   1 : Ide.indPag    := ipPrazo;
                   2 : Ide.indPag    := ipOutras;
               End;
               Ide.modelo    := 55; // cdsNotaFiscalmodelo.AsInteger;
               Ide.serie     := cdsNotaFiscalserie.AsInteger;
               Ide.dEmi      := cdsNotaFiscaldata_hora_emissao.AsDateTime;
               if not uFuncoes.Empty(cdsNotaFiscaldata_saida_entrada.asString) Then
                  Ide.dSaiEnt   := cdsNotaFiscaldata_saida_entrada.AsDateTime;
               // 03/11/2014
               // Identificador de local de destino da operação
               // 1=Operação interna;  2=Operação interestadual; 3=Operação com exterior.
               Case cdsNotaFiscaldestino_operacao.AsInteger of
                       1 : Ide.idDest := doInterna;
                       2 : Ide.idDest := doInterestadual;
                       3 : Ide.idDest := doExterior;
               End;
               //  Indica operação com Consumidor final
               // 0=Normal; 1=Consumidor final;
               Case cdsNotaFiscalindicador_consumidor_final.AsInteger of
                        0 : Ide.indFinal := cfNao;
                        1 : Ide.indFinal := cfConsumidorFinal;
               End;
               // Indicador de presença do comprador no estabelecimento comercial no momento da operação
               {0=Não se aplica (por exemplo, Nota Fiscal complementar ou de ajuste);
                1=Operação presencial;
                2=Operação não presencial, pela Internet;
                3=Operação não presencial, Teleatendimento;
                4=NFC-e em operação com entrega a domicílio;
                9=Operação não presencial, outros.
                }
                Case cdsNotaFiscalindicador_presenca_comprador.AsInteger of
                    0 : Ide.indPres := pcNao;
                    1 : Ide.indPres := pcPresencial;
                    2 : Ide.indPres := pcInternet ;
                    3 : Ide.indPres := pcTeleatendimento;
                    9 : Ide.indPres := pcOutros;
                End;
                //
               Case cdsNotaFiscaltipo_operacao.AsInteger of
                   0 : Ide.tpNF      := tnEntrada;
                   1 : Ide.tpNF      := tnSaida;
                End;

                // Tipo de Emissão da NF-e
               Case cdsNotaFiscaltipo_emis.AsInteger of
                   1: Ide.tpEmis    := teNormal;
                   2: Ide.tpEmis    := teContingencia;
                   3: Ide.tpEmis    := teSCAN;
                   4: Ide.tpEmis    := teDPEC;
                   5: Ide.tpEmis    := teFSDA;
               End;
               //
               Ide.verProc   := '3.1.0.0';      //Versão do seu sistema
               Ide.cUF       := uFuncoes.UF_N(M_UFEMIT);
               Ide.cMunFG    := cdsNotaFiscalemitente_municipio_ibge.AsInteger;
               // Finalidade de emissão
               Case cdsNotaFiscalfinalidade.AsInteger of
                   1 : Ide.finNFe := fnNormal;
                   2 : Ide.finNFe := fnComplementar;
                   3 : Ide.finNFe := fnAjuste;
                   4 : Ide.finNFe := fnDevolucao;
               End;
               //
               Case uFrmPlusPdvNfe.iCodRegimeTributario of
                   1 : Emit.CRT := crtSimplesNacional;
                   2 : Emit.CRT := crtSimplesExcessoReceita;
                   3 : Emit.CRT := crtRegimeNormal;
               End;
               //
               Emit.CNPJCPF := cdsNotaFiscalemitente_cnpj.AsString;
               if not uFuncoes.Empty(cdsNotaFiscalemitente_ie.AsString) Then
                   Emit.IE  := cdsNotaFiscalemitente_ie.AsString;
               // Cupom Fiscal
               If not uFuncoes.Empty(cdsNotaFiscalnum_coo.AsString) then
               begin
                  if not uFuncoes.Empty(cdsNotaFiscalnum_ecf.asString)
                     and not uFuncoes.Empty(cdsNotaFiscalmodelo_ecf.AsString) Then
                  begin
                    With Ide.NFref.Add do
                    begin
                         if (cdsNotaFiscalmodelo_ecf.AsString = '2B') Then
                              RefECF.modelo := ECFModRef2B;
                         if (cdsNotaFiscalmodelo_ecf.asString = '2C') Then
                              RefECF.modelo := ECFModRef2C;
                         if (cdsNotaFiscalmodelo_ecf.AsString = '2D') Then
                              RefECF.modelo := ECFModRef2D;
                          //
                          RefECF.nECF := cdsNotaFiscalnum_ecf.AsString;
                          RefECF.nCOO := cdsNotaFiscalnum_coo.AsString;
                          //
                          bTemCupomFiscal := True;
                          if (cdsNotaFiscalfinalidade.AsInteger = 4) Then
                          begin
                               aMsgCupomFiscal := ' Cupom Fiscal referenciado: MOD.REF: '+ cdsNotaFiscalmodelo_ecf.asString
                                                 +'          PDV/CUPOM: '+cdsNotaFiscalnum_ecf.AsString+'/'+cdsNotaFiscalnum_coo.AsString+';';
                          End
                          Else
                          begin
                               aMsgCupomFiscal := ' MOD.REF: '+ cdsNotaFiscalmodelo_ecf.asString+';'+
                                         'NT. FISCAL C/ICMS RECOLHIDO NO PDV/CUPOM:'+cdsNotaFiscalnum_ecf.AsString+'/'+cdsNotaFiscalnum_coo.AsString+';'+
                                         'DATA CUPOM: '+cdsNotaFiscaldata_hora_emissao.asString+';'
                          End;
                    End;
                  End;
               End;
               // Notas de Referencias
               CarregarRegistroNotaReferencia(cdsNotaFiscalid.AsInteger, cdsListaNT_Ref);
               //  se existe notas referencias
               if not (cdsListaNT_Ref.IsEmpty) Then
               begin
                    cdsListaNT_Ref.First;
                    While not (cdsListaNT_Ref.Eof) do
                    begin
                         If (cdsListaNT_RefCDR_TIPO_NOTA.AsInteger <> 3) Then
                         begin
                              with Ide.NFref.Add do
                               begin
                                    case cdsListaNT_RefCDR_TIPO_NOTA.AsInteger of
                                       1 :
                                          begin
                                               refNFe := cdsListaNT_RefCDR_CHAVE.AsString;
                                               aMsgNotasRefereciadas := aMsgNotasRefereciadas+'NF-e referenciada - '+cdsListaNT_RefCDR_CHAVE.AsString+';';
                                          End;
                                       2 :
                                          begin
                                               refCTe := cdsListaNT_RefCDR_CHAVE.AsString;
                                               aMsgNotasRefereciadas := aMsgNotasRefereciadas+'CT-e referenciada - '+cdsListaNT_RefCDR_CHAVE.AsString+';';
                                          end;
                                    End;
                               End;
                         End
                         Else
                         begin
                              With Ide.NFref.Add do
                              begin
                                RefNF.cUF    := UFtoCUF(cdsListaNT_RefCDR_UF.AsString);
                                RefNF.AAMM   := Copy(cdsListaNT_RefCDR_MESANO.AsString,3,2)+Copy(cdsListaNT_RefCDR_MESANO.AsString,1,2);
                                RefNF.CNPJ   := cdsListaNT_RefCDR_CNPJ.AsString;
                                RefNF.modelo := cdsListaNT_RefCDR_MODELO.AsInteger;
                                RefNF.serie  := cdsListaNT_RefCDR_SERIE.AsInteger;
                                RefNF.nNF    := cdsListaNT_RefCDR_NUMERO.AsInteger;
                                aMsgNotasRefereciadas := aMsgNotasRefereciadas+'Nota referenciada - N.: '+cdsListaNT_RefCDR_NUMERO.AsString+'  Série: '+cdsListaNT_RefCDR_SERIE.AsString+' Mes/Ano: '+cdsListaNT_RefCDR_MESANO.AsString+';';
                              end;
                         End;
                         //
                         cdsListaNT_Ref.Next;
                    End;
                    cdsListaNT_Ref.Close;
               End;
               //
               Emit.xNome   := cdsNotaFiscalemitente_razao.AsString;
               Emit.xFant   := cdsNotaFiscalemitente_fantasia.AsString;
               Emit.EnderEmit.xLgr := cdsNotaFiscalemitente_end_logradouro.AsString;
               Emit.EnderEmit.nro  := cdsNotaFiscalemitente_end_numero.AsString;
               if not uFuncoes.Empty(cdsNotaFiscalemitente_cep.AsString) Then
                  Emit.EnderEmit.CEP  := cdsNotaFiscalemitente_cep.AsInteger;
               Emit.EnderEmit.xBairro := cdsNotaFiscalemintente_end_bairro.AsString;
               Emit.EnderEmit.cMun    := cdsNotaFiscalemitente_municipio_ibge.AsInteger;
               Emit.EnderEmit.xMun    := cdsNotaFiscalemitente_nome_municipio.AsString;
               Emit.EnderEmit.UF      := GetUf(cdsNotaFiscalemitente_uf.AsString, cdsListaUfEmitente);
               //
               if not uFuncoes.Empty(cdsNotaFiscalemitente_telefone.AsString) Then
                  Emit.EnderEmit.fone := cdsNotaFiscalemitente_telefone.AsString;
               Emit.EnderEmit.cPais   := 1058;
               //cdsNotaFiscalemitente_cod_pais.AsInteger;
               Emit.EnderEmit.xPais   := 'BRASIL';
               // cdsNotaFiscalemitente_nome_pais.AsString;
               // Destinatário
               Dest.CNPJCPF        := cdsNotaFiscaldestinatario_cnpjcpf.AsString;
               Dest.xNome          := cdsNotaFiscaldestinatario_razaosocial.AsString;
               if not uFuncoes.Empty(cdsNotaFiscaldestinatario_ie.AsString) and (cdsNotaFiscalind_inscricao_estadual_dest.AsInteger <> 2) then   // and (cdsNotaFiscaldestinatario_tipopessoa.AsString = 'J')
                   Dest.IE          := cdsNotaFiscaldestinatario_ie.AsString;
               //
               // 17/11/2014
               // Indicador da IE do Destinatário
               {1=Contribuinte ICMS (informar a IE do destinatário);
               2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS;
               9=Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS.
               Nota 1: No caso de NFC-e informar indIEDest=9 e não informar a tag IE do destinatário;
               Nota 2: No caso de operação com o Exterior informar indIEDest=9 e não informar a tag IE do destinatário;
               Nota 3: No caso de Contribuinte Isento de Inscrição (indIEDest=2), não informar a tag IE do destinatário.
               }
               Case cdsNotaFiscalind_inscricao_estadual_dest.AsInteger of
                  1 :  Dest.indIEDest := inContribuinte;
                  2 :  Dest.indIEDest := inIsento;
                  9 :  Dest.indIEDest := inNaoContribuinte;
               End;
               //
               Dest.EnderDest.xLgr    := cdsNotaFiscaldestinatario_logradouro.AsString;
               Dest.EnderDest.nro     := cdsNotaFiscaldestinatario_end_numero.AsString;
               if not uFuncoes.Empty(cdsNotaFiscaldestinatario_end_complemento.AsString) Then
                  Dest.EnderDest.xCpl := cdsNotaFiscaldestinatario_end_complemento.AsString;
               Dest.EnderDest.xBairro := cdsNotaFiscaldestinatario_end_bairro.AsString;
               Dest.EnderDest.cMun    := cdsNotaFiscaldestinatario_municipio_ibge.AsInteger;
               if not uFuncoes.Empty(cdsNotaFiscaldestinatario_nome_municipio.AsString) Then
                   Dest.EnderDest.xMun    := cdsNotaFiscaldestinatario_nome_municipio.AsString
               Else
                   Dest.EnderDest.xMun    := dmDados.GetNomeCidadeCodigoIBEG(cdsNotaFiscaldestinatario_municipio_ibge.AsInteger);
               Dest.EnderDest.UF      := GetUF( cdsNotaFiscaldestinatario_uf.AsString, cdsListaUFDestinatario);
               Dest.EnderDest.xPais   := 'BRASIL';
               Dest.EnderDest.cPais   := 1058;
               //
               if not uFuncoes.Empty(cdsNotaFiscaldestinatario_cep.AsString) Then
                   Dest.EnderDest.CEP := cdsNotaFiscaldestinatario_cep.AsInteger;
               if not uFuncoes.Empty(cdsNotaFiscaldestinatario_telefone.AsString) Then
                   Dest.EnderDest.fone := uFuncoes.FormataFONE(cdsNotaFiscaldestinatario_telefone.AsString);
               // Identificação do Local de Retirada
               If not uFuncoes.empty(cdsNotaFiscalemitente_retirada_cnpjcpf.AsString)
                 and not uFuncoes.empty(cdsNotaFiscalemitente_retirada_logradouro.AsString)
                 and not uFuncoes.empty(cdsNotaFiscalemitente_retirada_numero.AsString)
                 and not uFuncoes.empty(cdsNotaFiscalemitente_retirada_bairro.AsString)
                 and not uFuncoes.empty(cdsNotaFiscalemitente_retirada_municipio.AsString)
                 and not uFuncoes.empty(cdsNotaFiscalemitente_retirada_uf.AsString)
                  Then
               begin
                    Retirada.CNPJCPF := cdsNotaFiscalemitente_retirada_cnpjcpf.AsString;
                    Retirada.xLgr    := cdsNotaFiscalemitente_retirada_logradouro.AsString;
                    Retirada.nro     := cdsNotaFiscalemitente_retirada_numero.AsString;
                    if not uFuncoes.Empty(cdsNotaFiscalemitente_retirada_complemento.AsString) Then
                        Retirada.xCpl := cdsNotaFiscalemitente_retirada_complemento.AsString;
                    Retirada.xBairro := cdsNotaFiscalemitente_retirada_bairro.AsString;
                    Retirada.cMun    := cdsNotaFiscalemitente_retirada_municipio.AsInteger;
                    Retirada.xMun    := dmDados.GetNomeCidadeCodigoIBEG(cdsNotaFiscalemitente_retirada_municipio.AsInteger);
                    // cdsNotaFiscalemitente_retirada_nome_municipi.AsString;
                    Retirada.UF      := GetUF( cdsNotaFiscalemitente_retirada_uf.AsString, cdsListaUFEmitenteRet);
               End;
               // Identificação do Local de Entrega diferente endereço destinatário
               If not uFuncoes.empty(cdsNotaFiscaldestinatario_entrega_cnpjcpf.AsString)
                and not uFuncoes.empty(cdsNotaFiscaldestinatario_entrega_logradouro.AsString)
                and not uFuncoes.empty(cdsNotaFiscaldestinatario_entrega_numero.AsString)
                and not uFuncoes.empty(cdsNotaFiscaldestinatario_entrega_bairro.AsString)
                and not uFuncoes.empty(cdsNotaFiscaldestinatario_entrega_munic_ibge.AsString)
                and not uFuncoes.empty(cdsNotaFiscaldestinatario_entrega_uf.AsString)
                 then
               begin
                    Entrega.CNPJCPF := cdsNotaFiscaldestinatario_entrega_cnpjcpf.AsString;
                    Entrega.xLgr    := cdsNotaFiscaldestinatario_entrega_logradouro.AsString;
                    Entrega.nro     := cdsNotaFiscaldestinatario_entrega_numero.AsString;
                    if not uFuncoes.Empty(cdsNotaFiscaldestinatario_entrega_complement.AsString) Then
                        Entrega.xCpl := cdsNotaFiscaldestinatario_entrega_complement.AsString;
                    Entrega.xBairro := cdsNotaFiscaldestinatario_entrega_bairro.AsString;
                    Entrega.cMun    := cdsNotaFiscaldestinatario_entrega_munic_ibge.AsInteger;
                    Entrega.xMun    := dmDados.GetNomeCidadeCodigoIBEG(cdsNotaFiscaldestinatario_entrega_munic_ibge.AsInteger);
                    //cdsNotaFiscaldestinatario_entrega_nome_munic.AsString;
                    Entrega.UF      := GetUF( cdsNotaFiscaldestinatario_entrega_uf.AsString, cdsListaUFDestinatarioEnt);
               End;
               // Produtos e Serviços da NF-e
               FTotalImposto := 0;
               M_NRITEM := 1;
               aChaveIBPTAtual := '';
               With cdsNotaFiscalItens do
                begin
                     Close;
                     Params[0].AsInteger := iCodigoNFe;
                     Open;
                     //
                     If not (IsEmpty) Then
                     begin
                          First;
                          While not (Eof) do
                           begin
                                W_VLALIQ  := 0;
                                 //
                                 With Det.Add do
                                  begin
                                       Prod.nItem  := M_NRITEM;
                                       Prod.CFOP   := cdsNotaFiscalItensid_cfop.AsString;
                                       Prod.NCM    := cdsNotaFiscalItensid_ncm.AsString;
                                       //cEAN  := cdsItensNotaNFI_EAN.AsString;
                                       //Prod.cProd  := cdsItensNotaNFI_PRODUTO.AsString;
                                       Prod.cProd  := uFuncoes.StrZero(cdsNotaFiscalItensid_produto.AsString,9);
                                       Prod.xProd  := cdsNotaFiscalItensdescricao.AsString;
                                       //
                                       aChaveIBPTAtual := GetChaveIBPT(cdsNotaFiscalItensid_ncm.AsString, M_UFEMIT);
                                       //
                                       If not uFuncoes.Empty(aChaveIBPTAtual) Then
                                          aChaveIBPT := aChaveIBPTAtual;
                                       //
                                       Prod.qCom   := cdsNotaFiscalItensquantidade.AsFloat;
                                       Prod.uCom   := cdsNotaFiscalItensid_unidade.AsString;
                                       Prod.vUnCom := cdsNotaFiscalItensvalor_unitario.AsFloat;
                                       if (cdsNotaFiscalItensvalor_desconto.AsFloat > 0) Then
                                           Prod.vDesc := cdsNotaFiscalItensvalor_desconto.AsFloat
                                       Else
                                           Prod.vDesc := 0;
                                       //Prod.vProd  := uFuncoes.Arredondar(((Prod.vUnCom) * Prod.qCom),2);
                                       Prod.vProd   := uFuncoes.Arredondar(((Prod.vUnCom) * Prod.qCom),M_QTCASA);
                                       //
                                       FSubTotal    := uFuncoes.Arredondar(Prod.vProd - Prod.vDesc,2);
                                       // Alteração
                                       aUnidProduto := DMDados.GetUnidadeProduto(cdsNotaFiscalItensid_produto.AsString);
                                       //
                                       Prod.qTrib   := cdsNotaFiscalItensquantidade.AsFloat;
                                       Prod.vUnTrib := cdsNotaFiscalItensvalor_unitario.AsFloat;
                                       Prod.uTrib   := cdsNotaFiscalItensid_unidade.AsString;
                                       //
                                      { if (cdsNotaFiscalItensid_unidade.AsString; = aUnidProduto) Then
                                       begin
                                            Prod.qTrib  := cdsNotaFiscalItensquantidade.AsFloat;
                                            Prod.vUnTrib := cdsNotaFiscalItensvalor_unitario.AsFloat;
                                            Prod.uTrib  := cdsNotaFiscalItensid_unidade.AsString;
                                       End
                                       Else
                                       begin
                                            iQuantArmaz  := DMDados.GetUnidArmazProduto(cdsNotaFiscalItensid_produto.AsString);
                                            //
                                            Prod.qTrib   := (cdsNotaFiscalItensquantidade.AsFloat;* iQuantArmaz);
                                            Prod.vUnTrib := uFuncoes.Arredondar((cdsNotaFiscalItensvalor_unitario.AsFloat / iQuantArmaz),M_QTCASA);
                                            Prod.uTrib   := aUnidProduto;
                                       End;   }
                                       //uFuncoes.Arredondar(((Prod.vUnCom - Prod.vDesc) * Prod.qCom),2);
                                       //
                                       If (cdsNotaFiscalItensvalor_frete.AsFloat > 0) Then
                                           Prod.vFrete    := cdsNotaFiscalItensvalor_frete.AsFloat
                                       Else
                                           Prod.vFrete    := 0;
                                       //
                                       If (cdsNotaFiscalItensvalor_outrasdespesas.AsFloat > 0) Then
                                          Prod.vOutro := cdsNotaFiscalItensvalor_outrasdespesas.AsFloat
                                       Else
                                          Prod.vOutro := 0;
                                       //
                                       Prod.vSeg      := 0;
                                       //
                                       if not uFuncoes.Empty(cdsNotaFiscalItensnum_lote.AsString)
                                            and (cdsNotaFiscalItensnum_lote.AsString <> 'GERAL') Then
                                             begin
                                                if (dmDados.GetVerificaProdutoMedicamento(cdsNotaFiscalItensid_produto.asinteger)) Then
                                                 begin
                                                   //infAdProd := 'LOTE: '+cdsItensNotaNFI_NRLOTE.AsString +' :: VALIDADE: '+cdsItensNotaNFI_LOTE_DTVENC.AsString;
                                                   aDataFabricacao := dmDados.GetDataFabricacaoProduto(cdsNotaFiscalid_empresa.AsInteger,
                                                                                                 cdsNotaFiscalItensid_produto.asinteger,
                                                                                                 cdsNotaFiscalItensnum_lote.AsString);
                                                   //
                                                   if not uFuncoes.Empty(cdsNotaFiscalItensnum_lote.AsString) and (cdsNotaFiscalItensnum_lote.AsString <> 'GERAL')
                                                       and not uFuncoes.Empty(cdsNotaFiscalItensdata_vencimento_lote.asstring)
                                                       and not uFuncoes.Empty(aDataFabricacao) Then
                                                   begin
                                                        With Prod.med.Add do
                                                         begin
                                                              nLote := cdsNotaFiscalItensnum_lote.AsString;
                                                              qLote := Prod.qTrib;
                                                              dFab  := StrtoDate(aDataFabricacao);
                                                              dVal  := cdsNotaFiscalItensdata_vencimento_lote.AsDateTime;
                                                         End;
                                                   End
                                                   Else
                                                   begin
                                                         if not uFuncoes.Empty(cdsNotaFiscalItensnum_lote.AsString) and (cdsNotaFiscalItensnum_lote.AsString <> 'GERAL')
                                                            and not uFuncoes.Empty(cdsNotaFiscalItensdata_vencimento_lote.AsString)
                                                            and not uFuncoes.Empty(cdsNotaFiscalItensdata_fabricacao_lote.AsString) Then
                                                            begin
                                                                 With Prod.med.Add do
                                                                  begin
                                                                       nLote := cdsNotaFiscalItensnum_lote.AsString;
                                                                       qLote := Prod.qTrib;
                                                                       dFab  := cdsNotaFiscalItensdata_fabricacao_lote.AsDateTime;
                                                                       dVal  := cdsNotaFiscalItensdata_vencimento_lote.AsDateTime;
                                                                  End;
                                                            End;
                                                   End;
                                                 End;
                                             End;     //  if not uFuncoes.Empty(cdsNotaFiscalItensnum_lote.AsString)   and (cdsNotaFiscalItensnum_lote.AsString <> 'GERAL')
                                             // with Det.Items[M_NRITEM].Imposto do
                                             with Imposto do
                                              begin
                                                   // origem do produto
                                                   iOrigemProd := cdsNotaFiscalItensorigem_produto.AsInteger;
                                                   //
                                                   Case iOrigemProd of
                                                       0 : ICMS.orig    := oeNacional;
                                                       1 : ICMS.orig    := oeEstrangeiraImportacaoDireta;
                                                       2 : ICMS.orig    := oeEstrangeiraAdquiridaBrasil;
                                                       3 : ICMS.orig    := oeNacionalConteudoImportacaoSuperior40;
                                                       4 : ICMS.orig    := oeNacionalProcessosBasicos;
                                                       5 : ICMS.orig    := oeNacionalConteudoImportacaoInferiorIgual40;
                                                       6 : ICMS.orig    := oeEstrangeiraImportacaoDiretaSemSimilar;
                                                       7 : ICMS.orig    := oeNacionalConteudoImportacaoSuperior70;
                                                   Else
                                                       ICMS.orig    := oeNacional;
                                                   End;
                                                   //
                                                   With ICMS do
                                                    begin
                                                         //
                                                         if (Emit.CRT = crtSimplesNacional) Then
                                                         begin
                                                              if not uFuncoes.Empty(cdsNotaFiscalItensicms_simples_nacional.AsString) Then
                                                                  M_CSOSN := cdsNotaFiscalItensicms_simples_nacional.asInteger
                                                              Else
                                                                  M_CSOSN := 102;
                                                              //
                                                              case M_CSOSN of
                                                                  101: CSOSN := csosn101;
                                                                  102: CSOSN := csosn102;
                                                                  103: CSOSN := csosn103;
                                                                  201: CSOSN := csosn201;
                                                                  202: CSOSN := csosn202;
                                                                  203: CSOSN := csosn203;
                                                                  300: CSOSN := csosn300;
                                                                  400: CSOSN := csosn400;
                                                                  500: CSOSN := csosn500;
                                                                  900: CSOSN := csosn900;
                                                              else
                                                                   CSOSN := csosn102;
                                                              end;
                                                              //CST := cst41; // cstVazio
                                                              //
                                                                 ICMS.pRedBC := 0;
                                                                 ICMS.vBC := 0;
                                                                 ICMS.pICMS := 0;
                                                                 ICMS.vICMS := 0;
                                                                 ICMS.pRedBCST:= 0;
                                                                 ICMS.vBCST := 0;
                                                                 ICMS.pICMSST := 0;
                                                                 ICMS.vICMSST := 0;
                                                         End;
                                                        //
                                                        if (Emit.CRT = crtRegimeNormal) Then
                                                         begin
                                                              if uFuncoes.Empty(cdsNotaFiscalItenscst_icms.AsString) Then
                                                                  CST := cst00
                                                              Else
                                                              begin
                                                                  aCodCST    := uFuncoes.Alltrim(cdsNotaFiscalItenscst_icms.AsString);
                                                                  //
                                                                  Case StrtoInt(aCodCST) of
                                                                     0  : CST := cst00;
                                                                     10 : CST := cst10;
                                                                     20 : CST := cst20;
                                                                     30 : CST := cst30;
                                                                     40 : CST := cst40;
                                                                     41 : CST := cst41;
                                                                     45 : CST := cst45;
                                                                     50 : CST := cst50;
                                                                     51 : CST := cst51;
                                                                     60 : CST := cst60;
                                                                     70 : CST := cst70;
                                                                     80 : CST := cst80;
                                                                     81 : CST := cst81;
                                                                     90 : CST := cst90;
                                                                  End;   // Case StrtoInt(aCodCST) of
                                                              End;
                                                         End;    // if (Emit.CRT = crtRegimeNormal) Then
                                                         // Calculos
                                                         ICMS.modBC := dbiPrecoTabelado;
                                                         //
                                                         if (Emit.CRT = crtRegimeNormal) Then
                                                          begin
                                                              aCodCST    := uFuncoes.Alltrim(cdsNotaFiscalItenscst_icms.AsString);
                                                              //
                                                              If (StrtoInt(aCodCST) = 20) Then
                                                                  ICMS.modBC := dbiValorOperacao;
                                                          End;
                                                         //
                                                         if (cdsNotaFiscalItensaliquota_icms.asfloat > 0) Then
                                                             ICMS.pICMS := cdsNotaFiscalItensaliquota_icms.AsFloat
                                                         Else
                                                             ICMS.pICMS := 0;

                                                        //cdsItensNotaNFI_VLICMS.AsFloat;

                                                        if (Emit.CRT = crtRegimeNormal) Then
                                                        begin

                                                             // redução da base calc icms
                                                             If (StrtoInt(aCodCST) = 20) Then
                                                             begin
                                                               If (cdsNotaFiscalItensaliquota_icms.AsFloat > 0) then
                                                                begin
                                                                     ICMS.pRedBC := cdsNotaFiscalItenspercentual_reducao_icms.AsFloat;
                                                                     ICMS.vBC    :=  Roundto(cdsNotaFiscalItensvalor_bc_icms.AsFloat, -2);
                                                                     // uFuncoes.Arredondar(cdsItensNotaNFI_BCICMS.AsFloat,2);

                                                                     ICMS.vICMS  := Roundto( cdsNotaFiscalItensvalor_icms.AsFloat, -2);
                                                                     //uFuncoes.Arredondar(cdsItensNotaNFI_VLICMS.AsFloat,2);
                                                                     M_VALOR_TOTAL_BC_ICMS := M_VALOR_TOTAL_BC_ICMS + ICMS.vBC;
                                                                     M_TOTAL_ICMS_ITEMS    := M_TOTAL_ICMS_ITEMS + ICMS.vICMS;
                                                                End;
                                                             End
                                                             Else
                                                             begin
                                                                 if (Prod.CFOP = '5929') or (Prod.CFOP = '6929') Then
                                                                 begin
                                                                      ICMS.vICMS := 0;
                                                                      ICMS.vBC   := 0;
                                                                 End;
                                                                 //
                                                                 if (cdsNotaFiscalItensvalor_desconto.AsFloat > 0) Then
                                                                 Begin
                                                                      If (cdsNotaFiscalItensaliquota_icms.AsFloat > 0) then
                                                                       begin
                                                                            // cdsItensNotaNFI_BCICMS.AsFloat;  // Prod.vProd - Prod.vDesc;
                                                                            ICMS.vBC   := Roundto(FSubTotal, -2);   // cdsNotaFiscalItensvalor_bc_icms.AsFloat
                                                                            ICMS.vICMS := Roundto(uFuncoes.Gerapercentual(ICMS.vBC, cdsNotaFiscalItensaliquota_icms.AsFloat),-2);
                                                                            // uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsItensNotaNFI_BCICMS.AsFloat, cdsItensNotaNFI_ALIQUOTA_ICMS.AsFloat),2);
                                                                            M_VALOR_TOTAL_BC_ICMS := M_VALOR_TOTAL_BC_ICMS + ICMS.vBC;
                                                                            M_TOTAL_ICMS_ITEMS    := M_TOTAL_ICMS_ITEMS + ICMS.vICMS;
                                                                       End;
                                                                 End
                                                                 Else
                                                                 Begin
                                                                      If (cdsNotaFiscalItensaliquota_icms.AsFloat > 0) then
                                                                       begin
                                                                            // Prod.vProd
                                                                            ICMS.vBC   := Roundto( FSubTotal, -2);
                                                                            ICMS.vICMS := Roundto(uFuncoes.Gerapercentual(ICMS.vBC, cdsNotaFiscalItensaliquota_icms.AsFloat),-2);
                                                                            //uFuncoes.Arredondar(uFuncoes.Gerapercentual(Prod.vProd, cdsItensNotaNFI_ALIQUOTA_ICMS.AsFloat),2);
                                                                            M_VALOR_TOTAL_BC_ICMS := M_VALOR_TOTAL_BC_ICMS + ICMS.vBC;
                                                                            M_TOTAL_ICMS_ITEMS    := M_TOTAL_ICMS_ITEMS + ICMS.vICMS;
                                                                       End;
                                                                 End;
                                                             End;
                                                             // CST 10 ICMS ST
                                                             If (StrtoInt(aCodCST) = 10)  Then
                                                             begin
                                                                  if (cdsNotaFiscalItensvalor_bc_icms_st.AsFloat > 0) Then
                                                                  begin
                                                                       {0 – Preço tabelado ou máximo sugerido;
                                                                       1 - Lista Negativa (valor);
                                                                       2 - Lista Positiva (valor);
                                                                       3 - Lista Neutra (valor);
                                                                       4 - Margem Valor Agregado (%);
                                                                       5 - Pauta (valor);}
                                                                       icms.modBCST := dbisMargemValorAgregado; //
                                                                       ICMS.pICMSST := Roundto(cdsNotaFiscalItensaliquota_icms_st.AsFloat,-2);
                                                                       ICMS.vBCST   := Roundto(cdsNotaFiscalItensvalor_bc_icms_st.AsFloat,-2);
                                                                       ICMS.vICMSST := Roundto(cdsNotaFiscalItensvalor_icms_st.AsFloat,-2);
                                                                  End;
                                                             End;
                                                         End;
                                                         //
                                                         if (Emit.CRT = crtSimplesNacional) Then
                                                         begin
                                                              ICMS.vICMS := 0;
                                                              ICMS.vBC   := 0;
                                                         End;
                                                         //
                                                         if (Emit.CRT = crtRegimeNormal) and (cdsNotaFiscalItensaliquota_icms.AsFloat = 0)
                                                           and (CST = cst00) Then
                                                           begin
                                                                CST        := cst60;
                                                                ICMS.vICMS := 0;
                                                                ICMS.vBC   := 0;
                                                           End;
                                                           //
                                                           {if (Emit.CRT = crtRegimeNormal) and (CST = cst40) Then
                                                            begin
                                                                 vICMSDeson := 0;
                                                                 motDesICMS := mdiProdutorAgropecuario;
                                                            End;}
                                                    End;    // With ICMS do
                                                    //
                                                    {Em relação ao CST do IPI a ser colocado nas NF-es emitidas por empresa optante pelo Simples Nacional,
                                                    a Receita Federal ainda não se manifestou a respeito, mas entendemos que devem ser utilizados um dos CST’s
                                                    abaixo:
                                                    I - CST 53 - "Saída não-tributada", no caso de empresa optante pelo Simples Nacional que não é contribuinte
                                                    do IPI; ou
                                                    II - CST 99 - "Outras saídas", no caso de empresa optante pelo Simples Nacional que seja contribuinte do IPI,
                                                    preenchendo-se os campos da base de cálculo e alíquota do IPI com "0.0000", e o valor do IPI com "0.00"
                                                    (Nota Técnica nº 2009/004).}
                                                    With IPI do
                                                    begin
                                                         if (Emit.CRT = crtRegimeNormal) Then
                                                         begin
                                                             if not uFuncoes.Empty(cdsNotaFiscalItenscst_ipi.AsString) then
                                                              begin
                                                                  //
                                                                  iCstIPI := cdsNotaFiscalItenscst_ipi.asInteger;
                                                                  Case iCstIPI of
                                                                     0 : CST := ipi00;
                                                                     1 : CST := ipi01;
                                                                     2 : CST := ipi02;
                                                                     3 : CST := ipi03;
                                                                     4 : CST := ipi04;
                                                                     5 : CST := ipi05;
                                                                     49 : CST := ipi49;
                                                                     50 : CST := ipi50;
                                                                     51 : CST := ipi51;
                                                                     52 : CST := ipi52;
                                                                     53 : CST := ipi53;
                                                                     54 : CST := ipi54;
                                                                     55 : CST := ipi55;
                                                                     99 : CST := ipi99;
                                                                  Else
                                                                     CST := ipi99;
                                                                  End;
                                                              End
                                                              Else
                                                              begin
                                                                   // Tipo : 0 Entrada; 1 Saída
                                                                   if (cdsNotaFiscaltipo_operacao.AsInteger = 0) Then
                                                                        CST  := ipi49
                                                                   Else
                                                                        CST  := ipi99 ;
                                                              End;
                                                         End;     // if (Emit.CRT = crtRegimeNormal) Then
                                                         //
                                                         if (Emit.CRT = crtSimplesNacional) Then
                                                         begin
                                                              // Tipo : 0 Entrada; 1 Saída
                                                              if (cdsNotaFiscaltipo_operacao.AsInteger = 0) Then
                                                                  CST      := ipi49
                                                              Else
                                                                  CST      := ipi99;
                                                         End;      //      if (Emit.CRT = crtSimplesNacional) Then
                                                         //
                                                         clEnq    := '';
                                                         CNPJProd := '';
                                                         cSelo    := '';
                                                         qSelo    := 0;
                                                         cEnq     := '';
                                                         //
                                                         If (cdsNotaFiscalItensaliquota_ipi.asfloat > 0) Then
                                                         begin
                                                              if (Emit.CRT = crtRegimeNormal) Then
                                                              begin
                                                                   if (cdsNotaFiscalItenscst_ipi.AsInteger = 51)
                                                                   or (cdsNotaFiscalItenscst_ipi.AsInteger = 52)
                                                                   or (cdsNotaFiscalItenscst_ipi.AsInteger = 53) Then
                                                                 Begin
                                                                       vBC    := 0;
                                                                       qUnid  := 0;
                                                                       vUnid  := 0;
                                                                       pIPI   := 0;
                                                                       vIPI   := 0;
                                                                 End
                                                                 Else
                                                                 begin
                                                                    If (cdsNotaFiscalItenscst_ipi.AsInteger = 50)
                                                                      or (cdsNotaFiscalItenscst_ipi.AsInteger = 99) Then
                                                                    begin
                                                                      //vBC    := uFuncoes.Arredondar(cdsItensNotaNFI_VLUNITARIO.AsFloat * cdsItensNotaNFI_QUANTIDADE.AsFloat,2);
                                                                      cEnq   := '999';    // Tabela a ser criada pela RFB, informar 999 enquanto a tabela não for criada
                                                                      vBC    := uFuncoes.Arredondar(cdsNotaFiscalItensvalor_unitario.AsFloat * cdsNotaFiscalItensquantidade.AsFloat, M_QTCASA);
                                                                      {qUnid  := cdsItensNotaNFI_QUANTIDADE.AsFloat;
                                                                      vUnid  := cdsItensNotaNFI_VLUNITARIO.AsFloat;}
                                                                      pIPI   := cdsNotaFiscalItensaliquota_ipi.AsFloat;
                                                                      vIPI   := uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsNotaFiscalItensvalor_unitario.AsFloat * cdsNotaFiscalItensquantidade.AsFloat,
                                                                                cdsNotaFiscalItensaliquota_ipi.AsFloat),M_QTCASA);
                                                                    End;
                                                                 End;
                                                              End;  // if (Emit.CRT = crtRegimeNormal) Then
                                                         End
                                                         Else
                                                         begin
                                                              vBC    := 0;
                                                              qUnid  := 0;
                                                              vUnid  := 0;
                                                              pIPI   := 0;
                                                              vIPI   := 0;
                                                         End;
                                                    End;       // With IPI do
                                                    // IPI de Devolução
                                                    if (cdsNotaFiscalfinalidade.AsInteger = 4) Then
                                                    begin
                                                        // Percentual da mercadoria devolvida
                                                        if (cdsNotaFiscalItenspercentual_ipi_devolvido.AsFloat > 0) Then
                                                           pDevol    := cdsNotaFiscalItenspercentual_ipi_devolvido.AsFloat;
                                                        //  Valor do IPI devolvido
                                                        if (cdsNotaFiscalItensvalor_ipi_devolvido.AsFloat > 0) then
                                                           vIPIDevol := cdsNotaFiscalItensvalor_ipi_devolvido.AsFloat;
                                                    End;
                                                    //
                                                    if (bSpedPisCofins) Then
                                                    begin
                                                         // Pis
                                                         With PIS do
                                                         begin
                                                              // CST Código de Situação Tributária do PIS
                                                              iCstPis := cdsNotaFiscalItenscst_pis.AsInteger;
                                                              Case iCstPis of
                                                                 0 : CST := pis01;
                                                                 1 : CST := pis01;
                                                                 2 : CST := pis02;
                                                                 3 : CST := pis03;
                                                                 4 : CST := pis04;
                                                                 6 : CST := pis06;
                                                                 7 : CST := pis07;
                                                                 8 : CST := pis08;
                                                                 9 : CST := pis09;
                                                                 99 : CST := pis99;
                                                              Else
                                                                   CST := pis49;
                                                              End;   // end-case
                                                              //
                                                              Pis.vBC  := 0;
                                                              PIS.pPIS := 0;
                                                              PIS.vPIS := 0;
                                                              //
                                                              if (Prod.CFOP = '5929') or  (Prod.CFOP = '6929') Then
                                                              begin
                                                                   CST      := pis49;
                                                                   Pis.vBC  := 0;
                                                                   PIS.pPIS := cdsNotaFiscalItensaliquota_pis.AsFloat;
                                                                   PIS.vPIS := 0;
                                                              End
                                                              Else
                                                              begin
                                                                   if (cdsNotaFiscalItensaliquota_pis.AsFloat > 0) Then
                                                                    begin
                                                                           Pis.vBC  := RoundTo(Prod.vProd,-2);
                                                                           //cdsItensNotaNFI_VL_BC_PIS.AsFloat;
                                                                           PIS.pPIS := cdsNotaFiscalItensaliquota_pis.AsFloat;
                                                                           PIS.vPIS := RoundTo(uFuncoes.Gerapercentual(Pis.vBC, PIS.pPIS) ,-2);
                                                                           //cdsItensNotaNFI_VL_PIS.AsFloat;
                                                                           //
                                                                           M_TOTAL_BC_PIS := M_TOTAL_BC_PIS + Pis.vBC;
                                                                           M_VALOR_PIS    := M_VALOR_PIS + PIS.vPIS;
                                                                    End;
                                                              End;
                                                              // Total Pis
                                                              M_TOTAL_PIS := M_TOTAL_PIS + PIS.vPIS;
                                                          End;   // With PIS do
                                                         // Cofins
                                                         With  COFINS do
                                                          begin
                                                               // CST Código de Situação Tributária do Cofins
                                                               iCstCofins := cdsNotaFiscalItenscst_cofins.asinteger;
                                                               Case iCstCofins of
                                                                  0:  CST := cof01;
                                                                  1 : CST := cof01;
                                                                  2 : CST := cof02;
                                                                  3 : CST := cof03;
                                                                  4 : CST := cof04;
                                                                  6 : CST := cof06;
                                                                  7 : CST := cof07;
                                                                  8 : CST := cof08;
                                                                  9 : CST := cof09;
                                                                  99 : CST := cof99;
                                                                  Else
                                                                     CST := cof49;
                                                               End;   // end case
                                                               //
                                                               COFINS.vBC     := 0;
                                                               COFINS.pCOFINS := 0;
                                                               COFINS.vCOFINS := 0;
                                                               //
                                                               if (Prod.CFOP = '5929') or (Prod.CFOP = '6929') Then
                                                               begin
                                                                     CST := cof49;
                                                                     COFINS.vBC     := 0;
                                                                     COFINS.pCOFINS := cdsNotaFiscalItensaliquota_cofins.AsFloat;
                                                                     COFINS.vCOFINS := 0;
                                                               End
                                                               Else
                                                               begin
                                                                    if (cdsNotaFiscalItensaliquota_cofins.AsFloat > 0) then
                                                                    begin
                                                                         COFINS.vBC     := RoundTo(Prod.vProd,-2);
                                                                         // cdsItensNotaNFI_VL_BC_COFINS.AsFloat;
                                                                         COFINS.pCOFINS := cdsNotaFiscalItensaliquota_cofins.AsFloat;
                                                                         COFINS.vCOFINS := RoundTo(uFuncoes.Gerapercentual(COFINS.vBC, COFINS.pCOFINS) ,-2);
                                                                         // cdsItensNotaNFI_VL_COFINS.AsFloat;
                                                                         //
                                                                         M_TOTAL_BC_COFINS := M_TOTAL_BC_COFINS + COFINS.vBC;
                                                                         M_VALOR_COFINS    := M_VALOR_COFINS + COFINS.vCOFINS;
                                                                    End;
                                                               End;
                                                               // Total Cofins
                                                               M_TOTAL_COFINS := M_TOTAL_COFINS + COFINS.vCOFINS;
                                                          End;    // With  COFINS do
                                                    End;   // if (bSpedPisCofins) Then
                                                    //
                                                    if (bNatVenda) Then
                                                    begin
                                                         //
                                                         With dmDados.cdsNCM do
                                                         begin
                                                              Close;
                                                              Params[0].asString := M_UFEMIT;
                                                              Params[1].asString := uFuncoes.Alltrim(cdsNotaFiscalItensid_ncm.AsString);
                                                              Open;
                                                         End;
                                                         //
                                                         if not (dmDados.cdsNCM.IsEmpty) Then
                                                          begin
                                                               FPercentualImpostoItem := 0;
                                                               // produto Nacional
                                                               if (cdsNotaFiscalItensorigem_produto.asInteger = 0)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 3)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 4)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 5)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 8) Then
                                                                      FPercentualImpostoItem  := dmDados.cdsNCMaliquota_nacional.asfloat;
                                                               // produto importado
                                                               if (cdsNotaFiscalItensorigem_produto.asInteger = 1)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 2)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 6)
                                                                  or (cdsNotaFiscalItensorigem_produto.asInteger = 7) Then
                                                                      FPercentualImpostoItem  := dmDados.cdsNCMaliquota_importado.asfloat;
                                                               //
                                                               if (cdsNotaFiscalItensvalor_desconto.AsFloat >= 0) Then
                                                                    vTotTrib := uFuncoes.Arredondar(uFuncoes.Gerapercentual( (Prod.vProd - cdsNotaFiscalItensvalor_desconto.AsFloat) , FPercentualImpostoItem),2);
                                                               if (cdsNotaFiscalItensvalor_acrescimo.AsFloat > 0) Then
                                                                   vTotTrib := uFuncoes.Arredondar(uFuncoes.Gerapercentual( (Prod.vProd + cdsNotaFiscalItensvalor_acrescimo.AsFloat), FPercentualImpostoItem),2);
                                                               //
                                                               if (dmDados.cdsNCMaliquota_estadual.AsFloat > 0) Then
                                                                  FTotalTributoEstadual  := FTotalTributoEstadual + uFuncoes.Arredondar(uFuncoes.Gerapercentual(FSubTotal, dmDados.cdsNCMaliquota_estadual.AsFloat),2);
                                                               if (dmDados.cdsNCMaliquota_municipal.AsFloat > 0) Then
                                                                  FTotalTributoMunicipal := FTotalTributoMunicipal + uFuncoes.Arredondar(uFuncoes.Gerapercentual(FSubTotal, dmDados.cdsNCMaliquota_municipal.AsFloat),2);
                                                          End;
                                                          dmDados.cdsNCM.close;
                                                         //
                                                         FTotalImposto := FTotalImposto + vTotTrib;
                                                    End;   // if (bNatVenda) Then
                                            
                                              End;  // with Imposto do
                                              //

                                  End;       // With Det.Add do
                                //   Próximo Itens
                                M_NRITEM := M_NRITEM + 1;
                                Next;
                           End;  // While not (Eof) do produtos itens
                     End;  // If not (IsEmpty) Then Not itens vazios

                End;    // With cdsItensNota do
                //
                FPercentualImposto := 0;
                Total.ICMSTot.vBC   := M_VALOR_TOTAL_BC_ICMS;
                Total.ICMSTot.vICMS := M_TOTAL_ICMS_ITEMS;
                //
                Total.ICMSTot.vNF   := cdsNotaFiscalvalor_total_nota.AsFloat;
                Total.ICMSTot.vProd := cdsNotaFiscalvalor_itens.AsFloat;
                //
                If (cdsNotaFiscalvalor_desconto.AsFloat >= 0) Then
                    FPercentualImposto := uFuncoes.Arredondar((FTotalImposto  / cdsNotaFiscalvalor_total_nota.AsFloat)*100, 2);
                //
                If (cdsNotaFiscalvalor_outras_despesas.AsFloat > 0) Then
                    FPercentualImposto := uFuncoes.Arredondar((FTotalImposto  / (cdsNotaFiscalvalor_total_nota.AsFloat - cdsNotaFiscalvalor_outras_despesas.AsFloat))*100, 2);
                //  ICMS ST
                If (cdsNotaFiscalvalor_bc_icms_st.AsFloat > 0) Then
                 begin
                      Total.ICMSTot.vBCST := cdsNotaFiscalvalor_bc_icms_st.AsFloat;
                      Total.ICMSTot.vST   := cdsNotaFiscalvalor_icms_st.AsFloat;
                 End;
                 //
                 If (cdsNotaFiscalvalor_desconto.AsFloat > 0) Then
                      Total.ICMSTot.vDesc  := cdsNotaFiscalvalor_desconto.AsFloat;
                 If (cdsNotaFiscalvalor_frete.AsFloat > 0) then
                      Total.ICMSTot.vFrete := cdsNotaFiscalvalor_frete.AsFloat;
                 If (cdsNotaFiscalvalor_seguro.AsFloat > 0) Then
                      Total.ICMSTot.vSeg   := cdsNotaFiscalvalor_seguro.AsFloat;
                 If (cdsNotaFiscalvalor_outras_despesas.AsFloat > 0) Then
                      Total.ICMSTot.vOutro := cdsNotaFiscalvalor_outras_despesas.AsFloat;
                 If (cdsNotaFiscalvalor_ipi.AsFloat > 0) Then
                      Total.ICMSTot.vIPI   := cdsNotaFiscalvalor_ipi.AsFloat;
                 //
                 if (cdsNotaFiscalvalor_bc_iss.AsFloat > 0) Then
                      Total.ISSQNtot.vBC   := cdsNotaFiscalvalor_bc_iss.AsFloat;
                 if (cdsNotaFiscalvalor_total_iss.AsFloat > 0) then
                      Total.ISSQNtot.vISS  := cdsNotaFiscalvalor_total_iss.AsFloat;
                 if (cdsNotaFiscalvalor_pis_servico.AsFloat > 0) Then
                      Total.ISSQNtot.vPIS := cdsNotaFiscalvalor_pis_servico.AsFloat;
                 if (cdsNotaFiscalvalor_cofins_servico.AsFloat > 0) Then
                      Total.ISSQNtot.vCOFINS := cdsNotaFiscalvalor_cofins_servico.AsFloat;
                 if (cdsNotaFiscalvalor_total_servico_nao_inciden.AsFloat > 0) then
                      Total.ISSQNtot.vServ   := cdsNotaFiscalvalor_total_servico_nao_inciden.AsFloat;
                 //
                 if (bNatVenda) Then
                      Total.ICMSTot.vTotTrib  := FTotalImposto;
                 //
                 if (M_TOTAL_PIS > 0) Then
                     Total.ICMSTot.vPIS := M_TOTAL_PIS;
                 if (M_TOTAL_COFINS > 0) Then
                     Total.ICMSTot.vCOFINS := M_TOTAL_COFINS;
                 //
                 // transporte
                 Case cdsNotaFiscalmodalidade_frete.asInteger of
                     0 : Transp.modFrete := mfContaEmitente;          // 0 - Por conta do emitente
                     1 : Transp.modFrete := mfContaDestinatario;      // 1 - Por conta do destinatário/rementente
                     2 : Transp.modFrete := mfContaTerceiros;         // 2 - Por conta de terceiros
                     9 : Transp.modFrete := mfSemFrete;               // 9 - Sem frete
                 End;   // case transporte
                 //      Dados Transportadora
                 If (cdsNotaFiscalid_transportadora.AsInteger > 0) Then
                   begin
                        If not ufuncoes.Empty(cdsNotaFiscaltransporte_cnpjcpf.AsString) Then
                            Transp.Transporta.CNPJCPF := cdsNotaFiscaltransporte_cnpjcpf.AsString;
                        If not ufuncoes.Empty(cdsNotaFiscaltransporte_razao.AsString) Then
                            Transp.Transporta.xNome   := cdsNotaFiscaltransporte_razao.AsString;
                        If not ufuncoes.Empty(cdsNotaFiscaltransporte_ie.AsString) Then
                            Transp.Transporta.IE      := cdsNotaFiscaltransporte_ie.AsString;
                        If not ufuncoes.Empty(cdsNotaFiscaltransporte_endereco.AsString) Then
                            Transp.Transporta.xEnder  := cdsNotaFiscaltransporte_endereco.AsString;
                        If not ufuncoes.Empty(cdsNotaFiscaltransporte_nome_municipio.AsString) Then
                            Transp.Transporta.xMun    := cdsNotaFiscaltransporte_nome_municipio.AsString;
                        If not ufuncoes.Empty(cdsNotaFiscaltransporte_uf.AsString) Then
                            Transp.Transporta.UF      := GetUF( cdsNotaFiscaltransporte_uf.AsString, cdsListaUFTransporte);
                   End;
                   // retenção de ICMS
                   // Veiculo
                   If not uFuncoes.Empty(cdsNotaFiscaltransporte_veiculo_num_placa.AsString) Then
                    begin
                         Transp.veicTransp.placa := cdsNotaFiscaltransporte_veiculo_num_placa.AsString;
                         Transp.veicTransp.RNTC  := cdsNotaFiscaltransporte_veiculo_rntc.AsString;
                         Transp.veicTransp.UF    := GetUF( cdsNotaFiscaltransporte_veiculo_uf.AsString, cdsListaUFVeiculo);
                    End;
                    // Reboque
                    If not uFuncoes.Empty(cdsNotaFiscaltransporte_reboque_num_placa.AsString) then
                     begin
                          With Transp.Reboque.Add do
                           begin
                                placa := cdsNotaFiscaltransporte_reboque_num_placa.AsString;
                                if not uFuncoes.Empty(cdsNotaFiscaltransporte_reboque_rntc.AsString) Then
                                   RNTC  := cdsNotaFiscaltransporte_reboque_rntc.AsString;
                                UF    := GetUF( cdsNotaFiscaltransporte_reboque_uf.AsString, cdsListaUF_Reboque);
                           End;
                     End;
                     // volumes
                     With cdsVolumes do
                      begin
                           Close;
                           Params[0].AsInteger := iCodigoNFe;
                           Open;
                           //
                           If not (IsEmpty) Then
                            begin
                                  First;
                                  M_ITEMVOL := 0;
                                  While not (Eof) do
                                  begin
                                       Transp.Vol.Add;
                                       If not uFuncoes.Empty(cdsVolumesquantidade.AsString) Then
                                           Transp.Vol.Items[M_ITEMVOL].qVol := cdsVolumesquantidade.AsInteger;
                                       If not uFuncoes.Empty(cdsVolumesespecie.AsString) Then
                                           Transp.Vol.Items[M_ITEMVOL].esp  := cdsVolumesespecie.AsString;
                                       If not uFuncoes.Empty(cdsVolumesmarca.AsString) Then
                                           Transp.Vol.Items[M_ITEMVOL].marca := cdsVolumesmarca.AsString;
                                       If not uFuncoes.Empty(cdsVolumesnumeracao.AsString) Then
                                           Transp.Vol.Items[M_ITEMVOL].nVol  := cdsVolumesnumeracao.AsString;
                                       If (cdsVolumespeso_liquido.AsFloat > 0) Then
                                           Transp.Vol.Items[M_ITEMVOL].pesoL := cdsVolumespeso_liquido.AsFloat;
                                       If (cdsVolumespeso_bruto.AsFloat > 0) Then
                                           Transp.Vol.Items[M_ITEMVOL].pesoB := cdsVolumespeso_bruto.AsFloat;
                                       //
                                       M_ITEMVOL := M_ITEMVOL + 1;
                                       // proximo
                                       Next;
                                  End;
                            End; // If not (IsEmpty) Then
                      End;   // with volumes
                      // Duplicata
                      With cdsDuplicatas do
                       begin
                           Close;
                           Params[0].AsInteger := iCodigoNFe;
                           open;
                           //
                           if not (IsEmpty) Then
                            begin
                                 First;
                                 While not (Eof) do
                                  begin
                                      With Cobr.Dup.Add do
                                       begin
                                            nDup  := cdsDuplicatasnumero_duplicata.AsString;
                                            dVenc := cdsDuplicatasdata_vencimento.AsDateTime;
                                            vDup  := cdsDuplicatasvalor.AsFloat;
                                       End;
                                      //
                                      Next;
                                  End;     //  While not (Eof) do
                            End; // if not (IsEmpty) Then
                       End;    // With cdsListaDuplicata do
                       //
                       If not uFuncoes.Empty(cdsNotaFiscalinformacoes_adicionais_fisco.AsString) Then
                           InfAdic.infAdFisco := cdsNotaFiscalinformacoes_adicionais_fisco.AsString;
                       //
                       aMsgImpostos := '';
                       aDescricaoTributos := '';
                       //
                       if (bNatVenda) Then
                        begin
                            if (FTotalImposto > 0) and (bNatVenda) Then
                             begin
                                 FTotalPeloProdutos := cdsNotaFiscalvalor_total_nota.AsFloat -(FTotalImposto + FTotalTributoEstadual + FTotalTributoMunicipal);
                                 //
                                 aMsgImpostos := 'Trib aprox R$: '+FormatFloat('###,##0.#0', FTotalImposto)+' Federal ';
                                 If (FTotalTributoEstadual > 0 ) Then
                                     aMsgImpostos :=  aMsgImpostos + ' e '+FormatFloat('###,##0.#0', FTotalTributoEstadual)+ ' Estadual';
                                 If (FTotalTributoMunicipal > 0 ) Then
                                     aMsgImpostos :=  aMsgImpostos + ' e '+FormatFloat('###,##0.#0', FTotalTributoMunicipal)+ ' Municipal';
                                 aMsgImpostos := aMsgImpostos + ';Fonte: IBPT     '+aChaveIBPT+';';
                             End;
                        End; //  if (bNatVenda) Then
                        // Cupom fiscal mensagem
                        if (bTemCupomFiscal) Then
                        begin
                             aMsgBuscaCupomFiscal := 'NT. FISCAL C/ICMS RECOLHIDO NO PDV/CUPOM';
                             if pos(aMsgBuscaCupomFiscal, cdsNotaFiscalinformacoes_adicionais_contribu.AsString) <> 0 then
                                  aMsgCupomFiscal := ''
                             Else
                                  aMsgCupomFiscal := aMsgCupomFiscal;
                        End
                        Else
                            aMsgCupomFiscal := '';
                        //
                        if (Emit.CRT = crtSimplesNacional) Then
                        begin
                             If not uFuncoes.Empty(cdsNotaFiscalinformacoes_adicionais_contribu.AsString) Then
                                 InfAdic.infCpl := aMsgImpostos+';'+ aMsgCupomFiscal +
                                                   'DOCUMENTO EMITIDO POR ME OPTANTE PELO SIMPLES NACIONAL.;'+
                                                   'NAO GERA DIREITO A CREDITO FISCAL DE ICMS, ISS E IPI.  ;'+
                                                   cdsNotaFiscalinformacoes_adicionais_contribu.AsString
                             Else
                                 InfAdic.infCpl := aMsgImpostos+';'+  aMsgCupomFiscal +
                                                   'DOCUMENTO EMITIDO POR ME OPTANTE PELO SIMPLES NACIONAL.;'+
                                                   'NAO GERA DIREITO A CREDITO FISCAL DE ICMS, ISS E IPI.  ;';
                        End;
                        //
                        if (Emit.CRT = crtRegimeNormal) Then
                        begin
                              If not uFuncoes.Empty(cdsNotaFiscalinformacoes_adicionais_contribu.AsString) Then
                                  InfAdic.infCpl := aMsgImpostos+';'+aMsgCupomFiscal+cdsNotaFiscalinformacoes_adicionais_contribu.AsString
                              Else
                                  InfAdic.infCpl := aMsgImpostos+aMsgCupomFiscal;
                        End;
                        //
                        if not uFuncoes.Empty(aMsgNotasRefereciadas) Then
                           InfAdic.infCpl := InfAdic.infCpl + aMsgNotasRefereciadas;
           End;  // With ACBrNFe1.NotasFiscais.Add.NFe do
           //
           ACBrNFe1.NotasFiscais.GerarNFe;

           If (aSoImprimir = 'N') Then
                 ACBrNFe1.NotasFiscais.Assinar;

           aChave := uFuncoes.FilterChars(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, ['0'..'9']);
           aArquivo := aChave+'-nfe.xml';  // ExtractFilePath( Application.ExeName ) +'xml\'+
           ACBrNFe1.NotasFiscais.Items[0].NomeArq := aArquivo;
           ACBrNFe1.NotasFiscais.Items[0].GravarXML(aArquivo); // SaveToFile;
           //
           ACBrNFe1.NotasFiscais.Clear;
           ACBrNFe1.NotasFiscais.LoadFromFile(ACBrNFe1.Configuracoes.Arquivos.PathNFe+'\'+aArquivo);
           If (aSoImprimir = 'N') Then
                ACBrNFe1.NotasFiscais.Validar;
           //
           If FileExists('logo.bmp') Then
               ACBrNFe1.DANFE.Logo := 'logo.bmp';
           //
           if FileExists(ExtractFilePath( Application.ExeName )+'logo.jpg') Then
               ACBrNFeDANFERaveCB1.Logo := ExtractFilePath( Application.ExeName ) + 'logo.jpg';
           //
           ACBrNFe1.DANFE.Sistema := 'Infog2 Sistemas';
           //ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
           //
           aArquivo := ACBrNFe1.NotasFiscais.Items[0].NomeArq;
           //
           If (GetChaveNotaFiscal(iCodigoNfe)) Then
               SetChaveNotaFiscal(iCodigoNfe, idUsuario, aChave);
           //
           If (aSoImprimir = 'N') Then
               SetStatusLoteEmProcessamento(iCodigoNfe, 6);   // Situação : Lote em processamento
           //
           Sleep(10);
           // Enviar nota fiscal
           If (aSoImprimir = 'N') Then
            Begin
                 ACBrNFe1.Enviar(0);
                 //ShowMessage(InttoStr(ACBrNFe1.WebServices.Retorno.NFeRetorno.cStat));
                 If (ACBrNFe1.WebServices.Retorno.NFeRetorno.cStat = 100) Then
                  begin
                       SetAtualizarRegistroNotaFiscal(iCodigoNFe, 2,
                               ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec,
                               ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt);
                  End;
            End
            Else
                ACBrNFe1.NotasFiscais.Imprimir;

           Result := True;
           Application.ProcessMessages;
      Except
           on e: exception do
           begin
                Application.MessageBox(PChar('Erro: '+#13+e.Message),
                         'ATENÇÃO', MB_OK+MB_ICONSTOP +MB_APPLMODAL );
           End;
      End;
end;

function TdmNFe.GetVerificarExisteNFe(iNumNota: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
     Result := false;
     texto := 'Select id, id_empresa, numero_nota_fiscal from nota_fiscal where (numero_nota_fiscal  = :pID) ';
     texto := texto + ' and (id_empresa = '+QuotedStr(InttoStr(uFrmPlusPdvNfe.idEmpresa)) + ')';
     texto := texto + ' and (indicador_do_emitente = '+QuotedStr('0')+')';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := DmDados.sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pID').AsInteger :=  iNumNota;
         Open;
         //
         if not (IsEmpty) Then
           Result := True;
       finally
         free;
       end;
end;

function TdmNFe.GetAddArquivoLista(aCNPJ, aFile: String): Boolean;
begin
     Result := False;
     With cdsListaArquivoNfe do
     begin
          Append;
          FieldByName('CNPJ').AsString         := aCNPJ;
          FieldByName('NOME_ARQUIVO').AsString := aFile;
          Post;
          Result := True;
     End;
end;

function TdmNFe.GetDescricaoSituacaoNFe(iCodSituacao: Integer): String;
begin
    if (cdsListaSituacao.IsEmpty) Then
        CarregarListaSituacaoNFe();

    if (cdsListaSituacao.Locate('id', iCodSituacao,[])) then
        Result := cdsListaSituacao.FieldByName('descricao').asString;
end;

function TdmNFe.GetDescricaoFormaEmissao(idFormaEmissao: Integer): String;
begin
    if not (cdsListaFormaEmissao.IsEmpty) Then
       if (cdsListaFormaEmissao.Locate('FRM_CODIGO', idFormaEmissao,[])) then
            Result := cdsListaFormaEmissao.FieldByName('FRM_DESCRICAO').asString;
end;

function TdmNFe.GetNaturezaVenda(idNatureza: Integer): Boolean;
Var
    qryAux : TSQLQuery;
    texto : String;
begin
     Result := False;
 {    texto  := 'Select id, permite_venda from natureza_operacao where (id = :pcodigo) ';
     //
     qryAux:= TSQLQuery.Create(nil);
     with qryAux do
      try
           SQLConnection := DMDados.sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := idNatureza;
           Open;
           //
           If not (IsEmpty) Then
              Result := FieldByName('permite_venda').AsBoolean;
      Finally
         Free;
      End;    }
      if not (dmDados.cdsListaNaturezasoperacao.IsEmpty) Then
       begin
           if (dmDados.cdsListaNaturezasoperacao.locate('id', idNatureza,[])) Then
               Result := dmDados.cdsListaNaturezasoperacaopermite_venda.asboolean;
       End;
end;

function TdmNFe.GetChaveIBPT(aNCM, aUF: String): String;
var qraux : TSQLquery;
    texto : string;
begin
    result := '';
    texto := 'Select id_ncm, chave , uf from ncm_impostos where (id_ncm = :pcodigo) and (uf = :pUF) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := DMDados.sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcodigo').AsString  := uFuncoes.Alltrim(aNCM);
           Params.ParamByName('pUF').asstring       := aUF;
           Open;
           //
           If not (IsEmpty) Then
               if not uFuncoes.Empty (FieldByname('chave').AsString) Then
                   Result := FieldByName('chave').AsString;
     finally
         free;
     end;
end;

function TdmNFe.GetExisteItensNota(iCodigoNFe: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto := 'Select Count(*) as ITENS from nota_fiscal_itens NFI Where (NFI.id_nota_fiscal = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := iCodigoNFe;
      Open;
      If not (IsEmpty) Then
        If (FieldByName('ITENS').AsInteger > 0) Then
            result := true
    finally
      free;
    end;
end;

function TdmNFe.GetCFOPVendaImportacao(aCPFCNPJCliente,
  aUFEmitente: String): String;
var qraux : TSQLquery;
    texto, aUFCliente : string;
begin
     result := '';
     texto := 'Select cl.id, cl.tipo_pessoa, cl.cpf_cnpj, cl.id_cidade, ci.uf as UF from clientes cl ';
     texto := texto + ' Left join cidades ci on cl.id_cidade = ci.id ';
     texto := texto + ' where (cl.cpf_cnpj = :pCGC)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := DmDados.sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pCGC').AsString := aCPFCNPJCliente;
         Open;
         //
         if not (IsEmpty) then
          begin
               aUFCliente :=  FieldByName('UF').AsString;
               If (aUFCliente = aUFEmitente) Then
                   Result := DMDados.cdsConfigid_cfop_venda.AsString
               Else
                   Result := DMDados.cdsConfigid_cfop_venda_fora_uf.AsString;
          End;
       finally
         free;
       end;
end;

function TdmNFe.AtualizarListaVendaNFe(iNumNFe: Integer;
  aCDS: TClientDataSet): Boolean;
Var
   iSeq : Integer;
begin
    result := False;
    With aCDS do
    begin
         First;
         iSeq := 1;
         While not (eof) do
         begin
              // AtualizarIdNFeVenda(iNumNFe, iVenda : Integer): Boolean;
              AtualizarIdNFeVenda(iNumNFe, FieldByName('CDS_VENDA').AsInteger, iSeq);
              //
              iSeq := iSeq + 1;
              //
              Next;
         End;
         //
         Result := True;
    End;

end;

function TdmNFe.AtualizarIdNFeVenda(iNumNFe, iVenda,
  iSequencia: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
     Result := false;
     texto := 'Update vendas set numero_nfe = :pNFE, sequencia_nfe = :pNFESEQ where (id = :pPEDIDO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := DmDados.sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pPEDIDO').AsInteger := iVenda;
         Params.ParamByName('pNFE').AsInteger    := iNumNFe;
         Params.ParamByName('pNFESEQ').AsInteger := iSequencia;
         ExecSQL();
         //
         Result := True;
       finally
         free;
       end;
end;

procedure TdmNFe.LimparListaVenda;
begin
     DMDados.RefreshCDS(cdsListaVendasNFe);
     cdsListaVendasNFe.EmptyDataSet;
end;

function TdmNFe.AddNumeroVenda(iVenda: Integer): Boolean;
begin
      With cdsListaVendasNFe do
      begin
           Append;
           FieldByName('CDS_VENDA').AsInteger := iVenda;
           //
           Post;
      end;
end;

procedure TdmNFe.AtualizarQuantidadeVolume(idNota: Integer;
  aCdsItens: TClientDataSet);
Var
    aProduto : String;
    fProdutoPesoBruto, fProdutoPesoLiquido,  fTotalPesoBruto, fTotalPesoLiquido : Double;
    fQuantidade : Double;
begin
     fTotalPesoBruto   := 0;
     fTotalPesoLiquido := 0;
     //
     With aCdsItens do
     begin
          DisableControls;
          First;
          While not (Eof) do
          begin
               fProdutoPesoBruto   := 0;
               fProdutoPesoLiquido := 0;
               //
               {If (dmDados.GetVerificaProdutoPesavel(FieldByName('CDS_CDPROD').AsString)) Then
               begin}
                    aProduto            := FieldByName('CDS_CDPROD').AsString;
                    fQuantidade         := FieldByName('CDS_QTDECOM').AsFloat;
                    fProdutoPesoBruto   := DMDados.GetPesoProduto(aProduto, 'B');
                    fProdutoPesoLiquido := DMDados.GetPesoProduto(aProduto, 'L');
                    //
                    if (fProdutoPesoBruto > 0) Then
                        fTotalPesoBruto := fTotalPesoBruto + (fProdutoPesoBruto * fQuantidade );
                    if (fProdutoPesoLiquido > 0) Then
                        fTotalPesoLiquido := fTotalPesoLiquido + (fProdutoPesoLiquido * fQuantidade);
               // End;
               //
               Next;
          End;
          EnableControls;
          //
          if (fProdutoPesoBruto = 0) and (fTotalPesoLiquido = 0) Then
               Exit;
          // Atualiza volumes
          With dmNFe.cdsListaVolumes do
           begin
                if not Locate('VOL_ID_NOTA_FISCAL;VOL_ITEM', VarArrayOf([idNota, 1]), []) then
                begin
                     Append;
                     FieldByName('VOL_ID_NOTA_FISCAL').AsInteger := idNota;
                     FieldByName('VOL_ITEM').AsInteger := 1;
                End
                Else
                     Edit;
                //
                FieldByName('VOL_PESO_LIQUIDO').AsFloat := fTotalPesoLiquido;
                FieldByName('VOL_PESO_BRUTO').AsFloat   := fTotalPesoBruto;
                //
                Post;
           End;
     End;
end;

procedure TdmNFe.CarregarlistaNatureza_Operacao;
begin
     dmDados.RefreshCDS(cdsListaNaturezaOpr);
     cdsListaNaturezaOpr.EmptyDataSet;
     With cdsListaNaturezaOpr do
     begin
          //
          Append;
          FieldByName('id').asInteger := 1;
          FieldByName('descricao').asString  := 'VENDA DE MERCADORIAS';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 2;
          FieldByName('descricao').asString  := 'COMPRA DE MERCADORIAS ';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 3;
          FieldByName('descricao').asString  := 'CONSIGNAÇÃO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 4;
          FieldByName('descricao').asString  := 'DEVOLUÇÃO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 5;
          FieldByName('descricao').asString  := 'DISTRIBUIÇÃO DE BRINDES';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 6;
          FieldByName('descricao').asString  := 'EXPORTAÇÃO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 7;
          FieldByName('descricao').asString  := 'IMPORTAÇÃO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 8;
          FieldByName('descricao').asString  := 'REMESSA PARA CONSERTO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 9;
          FieldByName('descricao').asString  := 'REMESSA PARA FINS DE DEMOSTRAÇÃO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 10;
          FieldByName('descricao').asString  := 'REMESSA PARA FINS DE INDUSTRIALIZAÇÃO';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 11;
          FieldByName('descricao').asString  := 'REMESSA PARA VENDA AMBULANTE';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 12;
          FieldByName('descricao').asString  := 'TRANSFERÊNCIA';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 13;
          FieldByName('descricao').asString  := 'BONIFICAÇÃO';
          Post;
          Append;
          FieldByName('id').asInteger := 14;
          FieldByName('descricao').asString  := 'ENTRADA DE MERCADORIAS';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 15;
          FieldByName('descricao').asString  := 'REMESSA SIMPLES';
          Post;
     End;  // With cdsListaNaturezaOpr do
end;

procedure TdmNFe.CarregarListaUFEmitente;
begin
     dmDados.RefreshCDS(cdsListaUfEmitente);
     cdsListaUfEmitente.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUfEmitente);
end;

procedure TdmNFe.CarregarListaUFs(aCdsItens: TClientDataSet);
begin
     {
        AC = 12,
        AL = 27,
        AP = 16,
        AM = 13,
        BA = 29,
        CE = 23,
        DF = 53,
        ES = 32,
        GO = 52,
        MA = 21,
        MT = 51,
        MS = 50,
        MG = 31,
        PA = 15,
        PB = 25,
        PR = 41,
        PE = 26,
        PI = 22,
        RJ = 33,
        RN = 24,
        RS = 43,
        RO = 11,
        RR = 14,
        SC = 42,
        SP = 35,
        SE = 28,
        TO = 17
     }
     With aCdsItens do
     begin
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 12;
          FieldByName('EUF_SIGLA').asString   := 'AC';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 27;
          FieldByName('EUF_SIGLA').asString   := 'AL';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 16;
          FieldByName('EUF_SIGLA').asString   := 'AP';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 13;
          FieldByName('EUF_SIGLA').asString   := 'AM';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 29;
          FieldByName('EUF_SIGLA').asString   := 'BA';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 23;
          FieldByName('EUF_SIGLA').asString   := 'CE';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 53;
          FieldByName('EUF_SIGLA').asString   := 'DF';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 32;
          FieldByName('EUF_SIGLA').asString   := 'ES';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 52;
          FieldByName('EUF_SIGLA').asString   := 'GO';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 21;
          FieldByName('EUF_SIGLA').asString   := 'MA';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 51;
          FieldByName('EUF_SIGLA').asString   := 'MT';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 50;
          FieldByName('EUF_SIGLA').asString   := 'MS';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 31;
          FieldByName('EUF_SIGLA').asString   := 'MG';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 15;
          FieldByName('EUF_SIGLA').asString   := 'PA';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 25;
          FieldByName('EUF_SIGLA').asString   := 'PB';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 41;
          FieldByName('EUF_SIGLA').asString   := 'PR';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 26;
          FieldByName('EUF_SIGLA').asString   := 'PE';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 22;
          FieldByName('EUF_SIGLA').asString   := 'PI';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 33;
          FieldByName('EUF_SIGLA').asString   := 'RJ';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 24;
          FieldByName('EUF_SIGLA').asString   := 'RN';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 43;
          FieldByName('EUF_SIGLA').asString   := 'RS';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 11;
          FieldByName('EUF_SIGLA').asString   := 'RO';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 14;
          FieldByName('EUF_SIGLA').asString   := 'RR';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 42;
          FieldByName('EUF_SIGLA').asString   := 'SC';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 35;
          FieldByName('EUF_SIGLA').asString   := 'SP';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 28;
          FieldByName('EUF_SIGLA').asString   := 'SE';
          Post;
          //
          Append;
          FieldByName('EUF_CODIGO').AsInteger := 17;
          FieldByName('EUF_SIGLA').asString   := 'TO';
          Post;
          //
     End;   // With aCdsItens do
end;

procedure TdmNFe.CarregarListaUFDestinatario;
begin
     dmDados.RefreshCDS(cdsListaUFDestinatario);
     cdsListaUFDestinatario.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUFDestinatario);
end;

procedure TdmNFe.CarregarListaUFEmitenteRet;
begin
     dmDados.RefreshCDS(cdsListaUFEmitenteRet);
     cdsListaUFEmitenteRet.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUFEmitenteRet);
end;

procedure TdmNFe.CarregarListaUFDestinatarioEntrega;
begin
     dmDados.RefreshCDS(cdsListaUFDestinatarioEnt);
     cdsListaUFDestinatarioEnt.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUFDestinatarioEnt);
end;

procedure TdmNFe.CarregarListaUFTransporte;
begin
     dmDados.RefreshCDS(cdsListaUFTransporte);
     cdsListaUFTransporte.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUFTransporte);
end;

procedure TdmNFe.CarregarListaUFVeiculo;
begin
     dmDados.RefreshCDS(cdsListaUFVeiculo);
     cdsListaUFVeiculo.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUFVeiculo);
end;

procedure TdmNFe.CarregarListaUFReboque;
begin
     dmDados.RefreshCDS(cdsListaUF_Reboque);
     cdsListaUF_Reboque.EmptyDataSet;
     //
     CarregarListaUFs(cdsListaUF_Reboque);
end;

function TdmNFe.GetUf(aCodigo : String; aCdsLista: TClientDataSet): String;
begin
     if (aCdsLista.Locate('EUF_CODIGO', aCodigo, [])) Then
         Result := aCdsLista.FieldByName('EUF_SIGLA').AsString
     Else
         Result := aCodigo;
end;

function TdmNFe.GetCodigoUF(aUF: String;
  aCdsLista: TClientDataSet): String;
begin
     if (aCdsLista.Locate('EUF_SIGLA', aUF, [])) Then
         Result := aCdsLista.FieldByName('EUF_CODIGO').AsString
     Else
         Result := aUF;
end;

procedure TdmNFe.CarregarListaMotivosDesoneracao;
begin
     dmDados.RefreshCDS(cdsMotivoDesoneracao);
     cdsMotivoDesoneracao.EmptyDataSet;
     With cdsMotivoDesoneracao do
     begin
          //
          Append;
          FieldByName('id').asInteger := 0;
          FieldByName('descricao').asString  := '';
          Post;
          //                   Táxi
          Append;
          FieldByName('id').asInteger := 1;
          FieldByName('descricao').asString  := 'Táxi';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 3;
          FieldByName('descricao').asString  := 'Produtor Agropecuário';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 4;
          FieldByName('descricao').asString  := 'Frotista/Locadora';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 5;
          FieldByName('descricao').asString  := 'Diplomático/Consular';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 6;
          FieldByName('descricao').asString  := 'Utilit. e Motoc. da Amazônia Ocid. e Áreas de Livre Comércio';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 7;
          FieldByName('descricao').asString  := 'SUFRAMA';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 8;
          FieldByName('descricao').asString  := 'Venda a Órgãos Públicos';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 9;
          FieldByName('descricao').asString  := 'Outros';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 10;
          FieldByName('descricao').asString  := 'Deficiente Condutor';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 11;
          FieldByName('descricao').asString  := 'Deficiente Não Condutor';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 12;
          FieldByName('descricao').asString  := 'Órgão de fomento e desenvolvimento';
          Post;
          //
          Append;
          FieldByName('id').asInteger := 13;
          FieldByName('descricao').asString  := 'Olimpíadas Rio 2016';
          Post;  
     End;
end;

procedure TdmNFe.CarregarListaModalidadesBC_ICMS;
begin
     dmDados.RefreshCDS(cdsListaModbcICMS);
     cdsListaModbcICMS.EmptyDataSet;
     With cdsListaModbcICMS do
      begin
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 0;
          FieldByName('MBC_DESCRICAO').asString := 'Margem Valor Agregado (%)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 1;
          FieldByName('MBC_DESCRICAO').asString := 'Pauta (Valor)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 2;
          FieldByName('MBC_DESCRICAO').asString := 'Preço Tabelado Máx. (valor)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 3;
          FieldByName('MBC_DESCRICAO').asString := 'Valor da operação';
          Post;
      End;
end;

procedure TdmNFe.CarregarListaModalidadesBC_ICMS_ST;
begin
     dmDados.RefreshCDS(cdsListaModbcICMS_ST);
     cdsListaModbcICMS_ST.EmptyDataSet;
     With cdsListaModbcICMS_ST do
      begin
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 0;
          FieldByName('MBC_DESCRICAO').asString := 'Preço tabelado ou máximo sugerido';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 1;
          FieldByName('MBC_DESCRICAO').asString := 'Lista Negativa (valor)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 2;
          FieldByName('MBC_DESCRICAO').asString := 'Lista Positiva (valor)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 3;
          FieldByName('MBC_DESCRICAO').asString := 'Lista Neutra (valor)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 4;
          FieldByName('MBC_DESCRICAO').asString := 'Margem Valor Agregado (%)';
          Post;
          //
          Append;
          FieldByName('MBC_CODIGO').asInteger   := 5;
          FieldByName('MBC_DESCRICAO').asString := 'Pauta (valor)';
          Post;
      End;
end;

procedure TdmNFe.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    {stNFeEnvDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeConsultaDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;  }
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

end.
