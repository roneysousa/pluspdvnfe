unit udmDados;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, inifiles, Forms, FMTBcd,
  DBClient, Provider, ZSequence, ZConnection, Windows;

type
  TTypeLocalizar = (fsInteger, fsString);
  TSituacaoNotaFiscal = (Assinada = 1, Autorizada = 2, Cancelada = 3, Denegada = 4, EmDigitacao = 5,
       EmProcessamentonaSefaz = 6, Rejeitada = 7, TransmitidacomPendencia = 8, Validada = 9,
       NotaInutilizada = 10, NotadeEntrada = 99) ;
  TdmDados = class(TDataModule)
    sqlConexao: TSQLConnection;
    dstPadrao: TSQLDataSet;
    dstListas: TSQLDataSet;
    cdsUsuario: TClientDataSet;
    dstUsuario: TSQLDataSet;
    dstUsuarioid: TIntegerField;
    dstUsuarionome: TStringField;
    dstUsuariosenha: TStringField;
    dstUsuarioterminal: TStringField;
    dstUsuarioid_empresa: TIntegerField;
    dstUsuarioid_perfil: TIntegerField;
    dstUsuarioporta_nao_fiscal: TStringField;
    dspUsuario: TDataSetProvider;
    cdsUsuarioid: TIntegerField;
    cdsUsuarionome: TStringField;
    cdsUsuariosenha: TStringField;
    cdsUsuarioterminal: TStringField;
    cdsUsuarioid_empresa: TIntegerField;
    cdsUsuarioid_perfil: TIntegerField;
    cdsUsuarioporta_nao_fiscal: TStringField;
    dstEmpresa: TSQLDataSet;
    dstEmpresaid: TIntegerField;
    dstEmpresacnpj: TStringField;
    dstEmpresanome_fantasia: TStringField;
    dstEmpresarazao_social: TStringField;
    dstEmpresainsc_estadual: TStringField;
    dstEmpresainsc_municipal: TStringField;
    dstEmpresaid_cidade: TIntegerField;
    dstEmpresaid_bairro: TIntegerField;
    dstEmpresacep: TStringField;
    dstEmpresalogradouro: TStringField;
    dstEmpresanumero: TIntegerField;
    dstEmpresacomplemento: TStringField;
    dstEmpresareferencia: TStringField;
    dstEmpresafone: TStringField;
    dstEmpresafax: TStringField;
    dstEmpresaemail: TStringField;
    dstEmpresaresponsavel_cpf: TStringField;
    dstEmpresaresponsavel_nome: TStringField;
    dstEmpresaresponsavel_fone: TStringField;
    dstEmpresaid_contador: TIntegerField;
    dstEmpresasequencia_nfe: TIntegerField;
    dstEmpresacnae: TStringField;
    dstEmpresacrt: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaid: TIntegerField;
    cdsEmpresacnpj: TStringField;
    cdsEmpresanome_fantasia: TStringField;
    cdsEmpresarazao_social: TStringField;
    cdsEmpresainsc_estadual: TStringField;
    cdsEmpresainsc_municipal: TStringField;
    cdsEmpresaid_cidade: TIntegerField;
    cdsEmpresaid_bairro: TIntegerField;
    cdsEmpresacep: TStringField;
    cdsEmpresalogradouro: TStringField;
    cdsEmpresanumero: TIntegerField;
    cdsEmpresacomplemento: TStringField;
    cdsEmpresareferencia: TStringField;
    cdsEmpresafone: TStringField;
    cdsEmpresafax: TStringField;
    cdsEmpresaemail: TStringField;
    cdsEmpresaresponsavel_cpf: TStringField;
    cdsEmpresaresponsavel_nome: TStringField;
    cdsEmpresaresponsavel_fone: TStringField;
    cdsEmpresaid_contador: TIntegerField;
    cdsEmpresasequencia_nfe: TIntegerField;
    cdsEmpresacnae: TStringField;
    cdsEmpresacrt: TStringField;
    dstNCM: TSQLDataSet;
    dstNCMid_ncm: TStringField;
    dstNCMuf: TStringField;
    dstNCMaliquota_nacional: TFMTBCDField;
    dstNCMaliquota_importado: TFMTBCDField;
    dstNCMaliquota_estadual: TFMTBCDField;
    dstNCMaliquota_municipal: TFMTBCDField;
    dstNCMchave: TStringField;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    cdsNCMid_ncm: TStringField;
    cdsNCMuf: TStringField;
    cdsNCMaliquota_nacional: TFMTBCDField;
    cdsNCMaliquota_importado: TFMTBCDField;
    cdsNCMaliquota_estadual: TFMTBCDField;
    cdsNCMaliquota_municipal: TFMTBCDField;
    cdsNCMchave: TStringField;
    cdsVenda: TClientDataSet;
    dspVenda: TDataSetProvider;
    dstVenda: TSQLDataSet;
    dstVendaid: TIntegerField;
    dstVendaid_empresa: TIntegerField;
    dstVendacoo: TIntegerField;
    dstVendaccf: TIntegerField;
    dstVendaatacado: TBooleanField;
    dstVendasituacao: TStringField;
    dstVendaid_cliente: TIntegerField;
    dstVendanum_dependente: TIntegerField;
    dstVendaid_consumidor: TStringField;
    dstVendaid_entrega: TIntegerField;
    dstVendadata_venda: TSQLTimeStampField;
    dstVendadata_cancelamento: TSQLTimeStampField;
    dstVendamotivo_cancelamento: TStringField;
    dstVendaid_produto_tab_precos: TIntegerField;
    dstVendavalor_mercadorias: TFMTBCDField;
    dstVendavalor_entrada: TFMTBCDField;
    dstVendavalor_desconto: TFMTBCDField;
    dstVendavalor_acrescimo: TFMTBCDField;
    dstVendavalor_devolucao: TFMTBCDField;
    dstVendavalor_troco: TFMTBCDField;
    dstVendaid_ecf: TIntegerField;
    dstVendanumero_nfe: TIntegerField;
    dstVendasequencia_nfe: TIntegerField;
    dstVendaobservacao: TMemoField;
    dstVendastatus_cupom: TIntegerField;
    dstVendachecksum: TStringField;
    cdsVendaid: TIntegerField;
    cdsVendaid_empresa: TIntegerField;
    cdsVendacoo: TIntegerField;
    cdsVendaccf: TIntegerField;
    cdsVendaatacado: TBooleanField;
    cdsVendasituacao: TStringField;
    cdsVendaid_cliente: TIntegerField;
    cdsVendanum_dependente: TIntegerField;
    cdsVendaid_consumidor: TStringField;
    cdsVendaid_entrega: TIntegerField;
    cdsVendadata_venda: TSQLTimeStampField;
    cdsVendadata_cancelamento: TSQLTimeStampField;
    cdsVendamotivo_cancelamento: TStringField;
    cdsVendaid_produto_tab_precos: TIntegerField;
    cdsVendavalor_mercadorias: TFMTBCDField;
    cdsVendavalor_entrada: TFMTBCDField;
    cdsVendavalor_desconto: TFMTBCDField;
    cdsVendavalor_acrescimo: TFMTBCDField;
    cdsVendavalor_devolucao: TFMTBCDField;
    cdsVendavalor_troco: TFMTBCDField;
    cdsVendaid_ecf: TIntegerField;
    cdsVendanumero_nfe: TIntegerField;
    cdsVendasequencia_nfe: TIntegerField;
    cdsVendaobservacao: TMemoField;
    cdsVendastatus_cupom: TIntegerField;
    cdsVendachecksum: TStringField;
    dstProduto: TSQLDataSet;
    dstCliente: TSQLDataSet;
    dstProdutoid: TIntegerField;
    dstProdutodescricao: TStringField;
    dstProdutotipo: TIntegerField;
    dstProdutocod_barras: TStringField;
    dstProdutoreferencia: TStringField;
    dstProdutoid_ncm: TStringField;
    dstProdutoid_cor: TIntegerField;
    dstProdutoid_grade: TIntegerField;
    dstProdutogrupo: TIntegerField;
    dstProdutoorigem: TIntegerField;
    dstProdutoid_produto_localizacao: TIntegerField;
    dstProdutoid_secao: TIntegerField;
    dstProdutoid_subsecao: TIntegerField;
    dstProdutoid_unidade: TStringField;
    dstProdutoid_unidade_armaz: TStringField;
    dstProdutoquant_armaz: TFMTBCDField;
    dstProdutofracionado: TBooleanField;
    dstProdutopesavel: TBooleanField;
    dstProdutopeso_liquido: TFMTBCDField;
    dstProdutopeso_bruto: TFMTBCDField;
    dstProdutoid_fornecedor: TIntegerField;
    dstProdutoid_fabricante: TIntegerField;
    dstProdutovalor_compra: TFMTBCDField;
    dstProdutovalor_custo: TFMTBCDField;
    dstProdutoperc_lucro_bruto: TFMTBCDField;
    dstProdutoperc_lucro_liquido: TFMTBCDField;
    dstProdutovalor_venda: TFMTBCDField;
    dstProdutovalor_anterior: TFMTBCDField;
    dstProdutovalor_fracao: TFMTBCDField;
    dstProdutocontrole_lote: TBooleanField;
    dstProdutomedicamento: TBooleanField;
    dstProdutoativo: TBooleanField;
    dstProdutocomissionado: TBooleanField;
    dstProdutoperc_comissao: TFMTBCDField;
    dstProdutolimite_desconto_bloqueado: TBooleanField;
    dstProdutoperc_limite_desconto: TFMTBCDField;
    dstProdutoquantidade_minima_atacado: TFMTBCDField;
    dstProdutovalor_revenda: TFMTBCDField;
    dstProdutovalor_revenda_anterior: TFMTBCDField;
    dstProdutoid_usuario_reajuste: TIntegerField;
    dstProdutoid_tributacao: TIntegerField;
    dstProdutoperc_icms_compra: TFMTBCDField;
    dstProdutoperc_reducao_icms: TFMTBCDField;
    dstProdutoperc_outras_taxas: TFMTBCDField;
    dstProdutocst_ipi: TIntegerField;
    dstProdutoperc_ipi: TFMTBCDField;
    dstProdutoperc_frete: TFMTBCDField;
    dstProdutoid_cfop_venda_interna: TIntegerField;
    dstProdutoid_cfop_venda_externa: TIntegerField;
    dstProdutochecksum: TStringField;
    dstProdutoobservacao: TMemoField;
    dstProdutoid_usuario_cadastro: TIntegerField;
    dstProdutoid_usuario_alteracao: TIntegerField;
    dstProdutodata_cadastro: TSQLTimeStampField;
    dstProdutodata_alteracao: TSQLTimeStampField;
    dstClienteid: TIntegerField;
    dstClientetipo_pessoa: TStringField;
    dstClientecpf_cnpj: TStringField;
    dstClienteinsc_estadual: TStringField;
    dstClienteidentidade_orgao: TStringField;
    dstClienteidentidade_uf: TStringField;
    dstClientenaturalidade: TStringField;
    dstClientenome_fantasia: TStringField;
    dstClienterazao_social: TStringField;
    dstClientedata_aniversario: TDateField;
    dstClienteid_tipo_cliente: TIntegerField;
    dstClientesituacao: TIntegerField;
    dstClienteid_atividade: TIntegerField;
    dstClientedia_fatura: TIntegerField;
    dstClientevalor_faturamento: TFMTBCDField;
    dstClientevalor_limite_compra: TFMTBCDField;
    dstClienteid_funcionario_vendedor: TIntegerField;
    dstClienteestado_civil: TIntegerField;
    dstClientenome_pai: TStringField;
    dstClientenome_mae: TStringField;
    dstClienteconjugue_nome: TStringField;
    dstClienteconjugue_cpf: TStringField;
    dstClienteconjugue_empresa_nome: TStringField;
    dstClienteconjugue_funcao: TStringField;
    dstClienteconjugue_renda: TFMTBCDField;
    dstClienteid_cliente_matriz: TIntegerField;
    dstClienteid_regiao: TIntegerField;
    dstClienteid_cidade: TIntegerField;
    dstClienteid_bairro: TIntegerField;
    dstClientecep: TStringField;
    dstClientelogradouro: TStringField;
    dstClientenumero: TIntegerField;
    dstClientecomplemento: TStringField;
    dstClientereferencia: TStringField;
    dstClientetempo_residencia: TStringField;
    dstClientefone1: TStringField;
    dstClientefone2: TStringField;
    dstClientefone3: TStringField;
    dstClienteramal1: TStringField;
    dstClienteramal2: TStringField;
    dstClienteramal3: TStringField;
    dstClientesite: TStringField;
    dstClienteemail: TStringField;
    dstClientecobranca_id_cidade: TIntegerField;
    dstClientecobranca_id_bairro: TIntegerField;
    dstClientecobranca_cep: TStringField;
    dstClientecobranca_logradouro: TStringField;
    dstClientecobranca_numero: TIntegerField;
    dstClientecobranca_complemento: TStringField;
    dstClientecobranca_referencia: TStringField;
    dstClienteresponsavel_nome: TStringField;
    dstClienteresponsavel_cpf: TStringField;
    dstClienteresponsavel_identidade: TStringField;
    dstClienteresponsavel_fone: TStringField;
    dstClienteresponsavel_email: TStringField;
    dstClienteempresa_nome: TStringField;
    dstClienteempresa_id_cidade: TIntegerField;
    dstClienteempresa_id_bairro: TIntegerField;
    dstClienteempresa_cep: TStringField;
    dstClienteempresa_logradouro: TStringField;
    dstClienteempresa_numero: TIntegerField;
    dstClienteempresa_complemento: TStringField;
    dstClienteempresa_referencia: TStringField;
    dstClienteempresa_fone: TStringField;
    dstClienteempresa_renda: TFMTBCDField;
    dstClientereferencia1_nome: TStringField;
    dstClientereferencia1_fone: TStringField;
    dstClientereferencia1_tipo: TStringField;
    dstClientereferencia2_nome: TStringField;
    dstClientereferencia2_fone: TStringField;
    dstClientereferencia2_tipo: TStringField;
    dstClientereferencia3_nome: TStringField;
    dstClientereferencia3_fone: TStringField;
    dstClientereferencia3_tipo: TStringField;
    dstClientereferencia4_nome: TStringField;
    dstClientereferencia4_fone: TStringField;
    dstClientereferencia5_nome: TStringField;
    dstClientereferencia5_fone: TStringField;
    dstClientereferencia6_nome: TStringField;
    dstClientereferencia6_fone: TStringField;
    dstClienteobservacao: TMemoField;
    dstClienteid_usuario_cadastro: TIntegerField;
    dstClienteid_usuario_alteracao: TIntegerField;
    dstClientedata_cadastro: TSQLTimeStampField;
    dstClientedata_alteracao: TSQLTimeStampField;
    dstClientedata_ultima_compra: TSQLTimeStampField;
    dspProduto: TDataSetProvider;
    dspCliente: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dstTributacao: TSQLDataSet;
    dstTributacaoid: TIntegerField;
    dstTributacaodescricao: TStringField;
    dstTributacaotipo_tributacao: TStringField;
    dstTributacaocst_icms: TIntegerField;
    dstTributacaoaliquota_icms: TFMTBCDField;
    dstTributacaocst_pis: TIntegerField;
    dstTributacaoaliquota_pis: TFMTBCDField;
    dstTributacaocst_cofins: TIntegerField;
    dstTributacaoaliquota_cofins: TFMTBCDField;
    dstTributacaomva_interno: TFMTBCDField;
    cdsProdutoid: TIntegerField;
    cdsProdutodescricao: TStringField;
    cdsProdutotipo: TIntegerField;
    cdsProdutocod_barras: TStringField;
    cdsProdutoreferencia: TStringField;
    cdsProdutoid_ncm: TStringField;
    cdsProdutoid_cor: TIntegerField;
    cdsProdutoid_grade: TIntegerField;
    cdsProdutogrupo: TIntegerField;
    cdsProdutoorigem: TIntegerField;
    cdsProdutoid_produto_localizacao: TIntegerField;
    cdsProdutoid_secao: TIntegerField;
    cdsProdutoid_subsecao: TIntegerField;
    cdsProdutoid_unidade: TStringField;
    cdsProdutoid_unidade_armaz: TStringField;
    cdsProdutoquant_armaz: TFMTBCDField;
    cdsProdutofracionado: TBooleanField;
    cdsProdutopesavel: TBooleanField;
    cdsProdutopeso_liquido: TFMTBCDField;
    cdsProdutopeso_bruto: TFMTBCDField;
    cdsProdutoid_fornecedor: TIntegerField;
    cdsProdutoid_fabricante: TIntegerField;
    cdsProdutovalor_compra: TFMTBCDField;
    cdsProdutovalor_custo: TFMTBCDField;
    cdsProdutoperc_lucro_bruto: TFMTBCDField;
    cdsProdutoperc_lucro_liquido: TFMTBCDField;
    cdsProdutovalor_venda: TFMTBCDField;
    cdsProdutovalor_anterior: TFMTBCDField;
    cdsProdutovalor_fracao: TFMTBCDField;
    cdsProdutocontrole_lote: TBooleanField;
    cdsProdutomedicamento: TBooleanField;
    cdsProdutoativo: TBooleanField;
    cdsProdutocomissionado: TBooleanField;
    cdsProdutoperc_comissao: TFMTBCDField;
    cdsProdutolimite_desconto_bloqueado: TBooleanField;
    cdsProdutoperc_limite_desconto: TFMTBCDField;
    cdsProdutoquantidade_minima_atacado: TFMTBCDField;
    cdsProdutovalor_revenda: TFMTBCDField;
    cdsProdutovalor_revenda_anterior: TFMTBCDField;
    cdsProdutoid_usuario_reajuste: TIntegerField;
    cdsProdutoid_tributacao: TIntegerField;
    cdsProdutoperc_icms_compra: TFMTBCDField;
    cdsProdutoperc_reducao_icms: TFMTBCDField;
    cdsProdutoperc_outras_taxas: TFMTBCDField;
    cdsProdutocst_ipi: TIntegerField;
    cdsProdutoperc_ipi: TFMTBCDField;
    cdsProdutoperc_frete: TFMTBCDField;
    cdsProdutoid_cfop_venda_interna: TIntegerField;
    cdsProdutoid_cfop_venda_externa: TIntegerField;
    cdsProdutoobservacao: TMemoField;
    cdsProdutoid_usuario_cadastro: TIntegerField;
    cdsProdutoid_usuario_alteracao: TIntegerField;
    cdsProdutodata_cadastro: TSQLTimeStampField;
    cdsProdutodata_alteracao: TSQLTimeStampField;
    cdsProdutochecksum: TStringField;
    cdsCliente: TClientDataSet;
    cdsClienteid: TIntegerField;
    cdsClientetipo_pessoa: TStringField;
    cdsClientecpf_cnpj: TStringField;
    cdsClienteinsc_estadual: TStringField;
    cdsClienteidentidade_orgao: TStringField;
    cdsClienteidentidade_uf: TStringField;
    cdsClientenaturalidade: TStringField;
    cdsClientenome_fantasia: TStringField;
    cdsClienterazao_social: TStringField;
    cdsClientedata_aniversario: TDateField;
    cdsClienteid_tipo_cliente: TIntegerField;
    cdsClientesituacao: TIntegerField;
    cdsClienteid_atividade: TIntegerField;
    cdsClientedia_fatura: TIntegerField;
    cdsClientevalor_faturamento: TFMTBCDField;
    cdsClientevalor_limite_compra: TFMTBCDField;
    cdsClienteid_funcionario_vendedor: TIntegerField;
    cdsClienteestado_civil: TIntegerField;
    cdsClientenome_pai: TStringField;
    cdsClientenome_mae: TStringField;
    cdsClienteconjugue_nome: TStringField;
    cdsClienteconjugue_cpf: TStringField;
    cdsClienteconjugue_empresa_nome: TStringField;
    cdsClienteconjugue_funcao: TStringField;
    cdsClienteconjugue_renda: TFMTBCDField;
    cdsClienteid_cliente_matriz: TIntegerField;
    cdsClienteid_regiao: TIntegerField;
    cdsClienteid_cidade: TIntegerField;
    cdsClienteid_bairro: TIntegerField;
    cdsClientecep: TStringField;
    cdsClientelogradouro: TStringField;
    cdsClientenumero: TIntegerField;
    cdsClientecomplemento: TStringField;
    cdsClientereferencia: TStringField;
    cdsClientetempo_residencia: TStringField;
    cdsClientefone1: TStringField;
    cdsClientefone2: TStringField;
    cdsClientefone3: TStringField;
    cdsClienteramal1: TStringField;
    cdsClienteramal2: TStringField;
    cdsClienteramal3: TStringField;
    cdsClientesite: TStringField;
    cdsClienteemail: TStringField;
    cdsClientecobranca_id_cidade: TIntegerField;
    cdsClientecobranca_id_bairro: TIntegerField;
    cdsClientecobranca_cep: TStringField;
    cdsClientecobranca_logradouro: TStringField;
    cdsClientecobranca_numero: TIntegerField;
    cdsClientecobranca_complemento: TStringField;
    cdsClientecobranca_referencia: TStringField;
    cdsClienteresponsavel_nome: TStringField;
    cdsClienteresponsavel_cpf: TStringField;
    cdsClienteresponsavel_identidade: TStringField;
    cdsClienteresponsavel_fone: TStringField;
    cdsClienteresponsavel_email: TStringField;
    cdsClienteempresa_nome: TStringField;
    cdsClienteempresa_id_cidade: TIntegerField;
    cdsClienteempresa_id_bairro: TIntegerField;
    cdsClienteempresa_cep: TStringField;
    cdsClienteempresa_logradouro: TStringField;
    cdsClienteempresa_numero: TIntegerField;
    cdsClienteempresa_complemento: TStringField;
    cdsClienteempresa_referencia: TStringField;
    cdsClienteempresa_fone: TStringField;
    cdsClienteempresa_renda: TFMTBCDField;
    cdsClientereferencia1_nome: TStringField;
    cdsClientereferencia1_fone: TStringField;
    cdsClientereferencia1_tipo: TStringField;
    cdsClientereferencia2_nome: TStringField;
    cdsClientereferencia2_fone: TStringField;
    cdsClientereferencia2_tipo: TStringField;
    cdsClientereferencia3_nome: TStringField;
    cdsClientereferencia3_fone: TStringField;
    cdsClientereferencia3_tipo: TStringField;
    cdsClientereferencia4_nome: TStringField;
    cdsClientereferencia4_fone: TStringField;
    cdsClientereferencia5_nome: TStringField;
    cdsClientereferencia5_fone: TStringField;
    cdsClientereferencia6_nome: TStringField;
    cdsClientereferencia6_fone: TStringField;
    cdsClienteobservacao: TMemoField;
    cdsClienteid_usuario_cadastro: TIntegerField;
    cdsClienteid_usuario_alteracao: TIntegerField;
    cdsClientedata_cadastro: TSQLTimeStampField;
    cdsClientedata_alteracao: TSQLTimeStampField;
    cdsClientedata_ultima_compra: TSQLTimeStampField;
    dspTributacao: TDataSetProvider;
    cdsTributacao: TClientDataSet;
    cdsTributacaoid: TIntegerField;
    cdsTributacaodescricao: TStringField;
    cdsTributacaotipo_tributacao: TStringField;
    cdsTributacaocst_icms: TIntegerField;
    cdsTributacaoaliquota_icms: TFMTBCDField;
    cdsTributacaocst_pis: TIntegerField;
    cdsTributacaoaliquota_pis: TFMTBCDField;
    cdsTributacaocst_cofins: TIntegerField;
    cdsTributacaoaliquota_cofins: TFMTBCDField;
    cdsTributacaomva_interno: TFMTBCDField;
    dstFornecedor: TSQLDataSet;
    dstFornecedorid: TIntegerField;
    dstFornecedornome_fantasia: TStringField;
    dstFornecedorrazao_social: TStringField;
    dstFornecedortipo_pessoa: TStringField;
    dstFornecedorcpf_cnpj: TStringField;
    dstFornecedorinsc_estadual: TStringField;
    dstFornecedortransportadora: TBooleanField;
    dstFornecedorid_cidade: TIntegerField;
    dstFornecedorid_bairro: TIntegerField;
    dstFornecedorcep: TStringField;
    dstFornecedorlogradouro: TStringField;
    dstFornecedornumero: TIntegerField;
    dstFornecedorcomplemento: TStringField;
    dstFornecedorreferencia: TStringField;
    dstFornecedorfone1: TStringField;
    dstFornecedorfone2: TStringField;
    dstFornecedorfone3: TStringField;
    dstFornecedorramal1: TStringField;
    dstFornecedorramal2: TStringField;
    dstFornecedorramal3: TStringField;
    dstFornecedorsite: TStringField;
    dstFornecedoremail: TStringField;
    dstFornecedorid_banco: TStringField;
    dstFornecedoragencia: TStringField;
    dstFornecedoroperacao_conta: TIntegerField;
    dstFornecedornumero_conta: TStringField;
    dstFornecedorperc_ipi: TFMTBCDField;
    dstFornecedorcontato1_nome: TStringField;
    dstFornecedorcontato1_cargo: TStringField;
    dstFornecedorcontato1_fone: TStringField;
    dstFornecedorcontato2_nome: TStringField;
    dstFornecedorcontato2_cargo: TStringField;
    dstFornecedorcontato2_fone: TStringField;
    dstFornecedordata_cadastro: TSQLTimeStampField;
    dstFornecedorid_usuario_cadastro: TIntegerField;
    dstFornecedordata_alteracao: TSQLTimeStampField;
    dstFornecedorid_usuario_alteracao: TIntegerField;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    cdsFornecedorid: TIntegerField;
    cdsFornecedornome_fantasia: TStringField;
    cdsFornecedorrazao_social: TStringField;
    cdsFornecedortipo_pessoa: TStringField;
    cdsFornecedorcpf_cnpj: TStringField;
    cdsFornecedorinsc_estadual: TStringField;
    cdsFornecedortransportadora: TBooleanField;
    cdsFornecedorid_cidade: TIntegerField;
    cdsFornecedorid_bairro: TIntegerField;
    cdsFornecedorcep: TStringField;
    cdsFornecedorlogradouro: TStringField;
    cdsFornecedornumero: TIntegerField;
    cdsFornecedorcomplemento: TStringField;
    cdsFornecedorreferencia: TStringField;
    cdsFornecedorfone1: TStringField;
    cdsFornecedorfone2: TStringField;
    cdsFornecedorfone3: TStringField;
    cdsFornecedorramal1: TStringField;
    cdsFornecedorramal2: TStringField;
    cdsFornecedorramal3: TStringField;
    cdsFornecedorsite: TStringField;
    cdsFornecedoremail: TStringField;
    cdsFornecedorid_banco: TStringField;
    cdsFornecedoragencia: TStringField;
    cdsFornecedoroperacao_conta: TIntegerField;
    cdsFornecedornumero_conta: TStringField;
    cdsFornecedorperc_ipi: TFMTBCDField;
    cdsFornecedorcontato1_nome: TStringField;
    cdsFornecedorcontato1_cargo: TStringField;
    cdsFornecedorcontato1_fone: TStringField;
    cdsFornecedorcontato2_nome: TStringField;
    cdsFornecedorcontato2_cargo: TStringField;
    cdsFornecedorcontato2_fone: TStringField;
    cdsFornecedordata_cadastro: TSQLTimeStampField;
    cdsFornecedorid_usuario_cadastro: TIntegerField;
    cdsFornecedordata_alteracao: TSQLTimeStampField;
    cdsFornecedorid_usuario_alteracao: TIntegerField;
    ZConnection1: TZConnection;
    ZSequence1: TZSequence;
    cdsImpEcf: TClientDataSet;
    dspListas: TDataSetProvider;
    cdsImpEcfid: TIntegerField;
    cdsImpEcfmodelo: TStringField;
    cdsImpEcfcodigo_modelo: TStringField;
    cdsImpEcfnum_serie: TStringField;
    cdsImpEcfnum_caixa: TIntegerField;
    cdsImpEcfsequencial: TStringField;
    dstConfig: TSQLDataSet;
    dstConfigid: TIntegerField;
    dstConfigdata_atual: TDateField;
    dstConfigid_cfop_venda: TIntegerField;
    dstConfigid_cfop_entrada: TIntegerField;
    dstConfigid_cfop_entrada_fora_uf: TIntegerField;
    dstConfigid_cfop_venda_fora_uf: TIntegerField;
    dstConfigperc_juros: TFMTBCDField;
    dstConfigperc_multa: TFMTBCDField;
    dstConfiglote: TIntegerField;
    dstConfigativa_sped: TBooleanField;
    dstConfigativa_sped_pis_cofins: TBooleanField;
    dstConfigbusca_referencia: TBooleanField;
    dspConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    cdsConfigid: TIntegerField;
    cdsConfigdata_atual: TDateField;
    cdsConfigid_cfop_venda: TIntegerField;
    cdsConfigid_cfop_entrada: TIntegerField;
    cdsConfigid_cfop_entrada_fora_uf: TIntegerField;
    cdsConfigid_cfop_venda_fora_uf: TIntegerField;
    cdsConfigperc_juros: TFMTBCDField;
    cdsConfigperc_multa: TFMTBCDField;
    cdsConfiglote: TIntegerField;
    cdsConfigativa_sped: TBooleanField;
    cdsConfigativa_sped_pis_cofins: TBooleanField;
    cdsConfigbusca_referencia: TBooleanField;
    dstEmpresacertificado_numero_serie: TStringField;
    dstEmpresaambiente_nfe: TStringField;
    cdsEmpresacertificado_numero_serie: TStringField;
    cdsEmpresaambiente_nfe: TStringField;
    dstConfigmd5principal: TStringField;
    dstConfigfarma: TBooleanField;
    cdsConfigmd5principal: TStringField;
    cdsConfigfarma: TBooleanField;
    cdsListaNaturezasoperacao: TClientDataSet;
    cdsListaNaturezasoperacaoid: TIntegerField;
    cdsListaNaturezasoperacaodescricao: TStringField;
    cdsListaNaturezasoperacaotipo: TStringField;
    cdsListaNaturezasoperacaoid_decreto: TIntegerField;
    cdsListaNaturezasoperacaopermite_venda: TBooleanField;
    procedure sqlConexaoBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    function VerificaFinalidadeDevolucao(aDescricao: String): Boolean;
    function AddRegistroFinalidadeDevolucao(idCodigo: Integer; aDescricao: String): Boolean;
  public
    { Public declarations }
    Transc : TTransactionDesc;
    procedure Start;
    procedure Comit(aTransc : TTransactionDesc);
    procedure Rollback(aMsg : String);
    Procedure FilterCDS(aCds : TClientDataSet; aType : TTypeLocalizar ; aBusca : String);
    procedure RefreshCDS(aDateSet : TClientDataSet);
    function IDTransation : String;
    //
    Function ProcurarValor(aValor, aCampo, aTabela : String) : Boolean;
    Function ProcurarValorInt(aValor, aCampo, aTabela : String) : Boolean;
    Function ProcurarCodigoPorBarras(aValor, aCampo, aTabela : String) : String;

    Function GetCodigoFornecedorPorCNPJ(aCNPJ : String): Integer;
    Function GetUFFornecedorPorCNPJ(aCNPJ : String): String;
    Function GetDescricaoUnidade(aProdUnidade : String): String;

    Function GetProximoIdNFeEmpresa(idLoja : Integer): Integer;
    Function SetProximoIdNFeEmpresa(idLoja, iCodNfe : Integer): Integer;
    Function GetProximoNumeroNotaFiscal(idLoja : Integer) : Integer;

    //
    Function GetVerificaNFeVenda(iNumNFe, idEmitente : Integer): Boolean;
    Function GetVerificaVendaNFeAutorizada(idVenda : Integer): Boolean;
    Function GetVerificarModalidadeVenda(iVenda : Integer): Integer;
    Function GetTipoModalidade(iModalidade : Integer) : String;
    //
    Function GetAliquotaICMS(iCodTributacao : Integer) : Double;
    Function GetCodigoIBEGCidade(iCodCidade : Integer): Integer;
    Function GetNomeCidade(iCodCidade : Integer): String;
    Function GetNomeCidadeCodigoIBEG(iCodigoIBEG : Integer): String;
    Function GetNomeCliente(iCodCliente : Integer; aTipo : String): String;

    function GetNomeBairro(idCidade, idBairro : integer) : String;
    Function GetUFCidade(idCidade : integer): String;

    //
    Function GetIdAutomatico(aNomeSequencia : String): Integer;
    Function GetMaxIdNFeEmpresa(idEmpresa : Integer): Integer;
    Function VerificaExisteNFeEmpresa(idEmpresa : Integer; aNumNFE : String): Boolean;

    Function GetIdClienteVendaConsumidor(): Integer;
    Function GetCST_IPI(idProduto : Integer): Integer;
    Function GetRazaoSocialEmpresa(idEmpresa : Integer): String;
    // CST PIS/Cofins
    Function GetCST_PIS(idProduto : Integer): Integer;
    Function GetCST_Cofins(idProduto : Integer): Integer;
    Function GetAliquotaPis(idProduto : Integer): Double;
    Function GetAliquotaCofins(idProduto : Integer): Double;
    //
    Function GetRegimeTributarioEmpresa(idEmpresa : Integer): Integer;
    Function GetCodigo_CodigoBarras(aCodBarras : String): String;
    Function GetNomeUsuario(idUsuario : Integer): String;
    Function GetUFEmitente(idEmpresa : Integer): String;

    Function AddRegistroInutilizacaoNumeracao(aCNPJ, aJUSTIFICATIVA, aHora, aProtocolo : String;
                        iAno, iModelo, iSerie, iNUMINICIAL, iNUMFINAL, iCDUSUA : Integer;
                        aDataMov : TDateTime): Boolean;
    Function GetRazaoSocialDestinatario(aCNPJCPF : String): String;
    Function VerificarDadosEmail(): Boolean;

    Function GetDescricaoNaturezaOperacao(idNatureza : Integer): String;
    Function GetUnidadeProduto(aProduto : String): String;
    Function GetUnidArmazProduto(iProduto : Integer): Integer;
    Function GetVerificaProdutoMedicamento(idProduto : Integer): Boolean;
    Function GetDataFabricacaoProduto(iLoja, idProduto : Integer;  aLote : String): String;
    Function VerificaDadosCertificado(): Boolean;
    //
    Function GetEMailCliente(idCliente : Integer): String;
    Function GetEMailFornecedor(idFornecedor : Integer): String;
    Function GetEMailClienteCNPJCPF(aCNPJ_CPF : String): Integer;

    Function GetVerificaProdutoPesavel(aProduto : String): Boolean;
    Function GetPesoProduto(aProduto, aTipo : String): Double;
    Procedure CarregarListaNaturezasOperacaoPadrao();
    Function GetIdRegistoNFe(idNFe, idEmpresa : Integer; aSerie : String): Integer;
  end;

var
  dmDados: TdmDados;
  aHambienteNFe : String;
  iCasasDecimais : Integer;
  aEmail_Requer_Autenticacao, aEmail_Host_Smtp, aEmail_Endereco, aEmail_Porta, aEmail_Password : String;


implementation

Uses uFuncoes, uFrmPlusPdvNfe, udmNFe;

{$R *.dfm}

procedure TdmDados.sqlConexaoBeforeConnect(Sender: TObject);
Var
	ConfigIni : TIniFile;
	aFile, aHost, aBanco : String;
Begin
     Try
          aFile := ExtractFilePath(ParamStr(0)) + 'dbexppgsql.dll';
          sqlConexao.VendorLib := aFile;
        	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
          With sqlConexao do
          begin
               aHost   := ConfigIni.ReadString('CONFIG','SERVIDOR','');
               aBanco  := ConfigIni.ReadString('CONFIG','DATABASE','');
               Params.Values['HostName'] := aHost;
               Params.Values['Database'] := aBanco;
               Params.Values['User_Name']:= ConfigIni.ReadString('CONFIG','USER','');
               Params.Values['Password'] := ConfigIni.ReadString('CONFIG','PASS','');
               // Params.Values['UseUnicode'] := 'True';
               Params.Values['PostgreSQL.UseUnicode'] := 'True';
               Params.Values['Charset'] := 'WIN1252';
          End;
          //
          ZConnection1.Connected := False;
          ZConnection1.HostName  := ConfigIni.ReadString('CONFIG','SERVIDOR','');
          ZConnection1.Database  := ConfigIni.ReadString('CONFIG','DATABASE','');
          ZConnection1.User      := ConfigIni.ReadString('CONFIG','USER','');
          ZConnection1.Password  := ConfigIni.ReadString('CONFIG','PASS','');
          //
          if uFuncoes.Empty(aHambienteNFe) Then
              aHambienteNFe := '2';
          //
          aEmail_Requer_Autenticacao := ConfigIni.ReadString('EMAIL','REQUER_AUTENTICACAO','');
          aEmail_Host_Smtp           := ConfigIni.ReadString('EMAIL','HOST_SMTP','');
          aEmail_Endereco            := ConfigIni.ReadString('EMAIL','ENDERECO','');
          aEmail_Porta               := ConfigIni.ReadString('EMAIL','PORTA','');
          aEmail_Password            := ConfigIni.ReadString('EMAIL','SENHA','');
          //
          iCasasDecimais := 2;
          if not uFuncoes.Empty(ConfigIni.ReadString('CONFIG','CASAS_DECIMAIS','')) Then
              iCasasDecimais := StrtoInt(ConfigIni.ReadString('CONFIG','CASAS_DECIMAIS','2'));
          //
        	ConfigIni.Free;
    Except
         on e: exception do
          begin
              sqlConexao.Connected := false;
              raise Exception.Create('Erro na abertura de Base de Dados! Erro:'+#13
                      + E.Message);
              Application.Terminate;
          End;
    End;
end;

procedure TdmDados.DataModuleCreate(Sender: TObject);
Var
    i : integer;
begin
     //
     try
         With sqlConexao do
         begin
            if Connected then
             begin
                 CloseDataSets;
                 Connected := False;
             end;
             //
             Connected := True;
              //

         End;  // With sqlConexao do
             //
             dstPadrao.CommandText := '';
             dstListas.CommandText := '';
             //
             {if not (VerificaFinalidadeDevolucao('NF-e NORMAL')) Then
                 AddRegistroFinalidadeDevolucao(1, 'NF-e NORMAL');
             if not (VerificaFinalidadeDevolucao('NF-e COMPLEMENTA')) Then
                 AddRegistroFinalidadeDevolucao(2, 'NF-e COMPLEMENTA');
             if not (VerificaFinalidadeDevolucao('NF-e DE AJUSTE')) Then
                 AddRegistroFinalidadeDevolucao(3, 'NF-e DE AJUSTE');
             if not (VerificaFinalidadeDevolucao('DEVOLUCAO/RETORNO')) Then
                 AddRegistroFinalidadeDevolucao(4, 'DEVOLUCAO/RETORNO');}
             //
             CarregarListaNaturezasOperacaoPadrao();
     Except
          on e: exception do
          begin
              sqlConexao.Connected := false;
              Application.MessageBox(PChar('Erro na abertura de Base de Dados! Erro:'+#13
                      + E.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              Application.Terminate;
          End;
     End;
end;

function TdmDados.AddRegistroFinalidadeDevolucao(idCodigo: Integer;
  aDescricao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
    Result := False;
    texto := 'Insert into nota_fiscal_finalidades (id, descricao) values  (:pCODIGO , :pDESCRICAO) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
        Start;
        Try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger   := idCodigo;
           Params.ParamByName('pDESCRICAO').AsString := aDescricao;
           ExecSQL();
           Comit(Transc);
           Result := True;
        Except
              On e: exception do
               begin
                   Rollback(E.Message);
               End;
        End;
     finally
         free;
     end;
end;

function TdmDados.VerificaFinalidadeDevolucao(aDescricao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
    Result := False;
    texto := 'Select id, descricao from nota_fiscal_finalidades where (descricao = :pDESCRICAO) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pDESCRICAO').AsString := aDescricao;
           Open;
           //
           If not (IsEmpty) Then
              Result := True;
     finally
         free;
     end;
end;

procedure TdmDados.Comit(aTransc: TTransactionDesc);
begin
     if (sqlConexao.InTransaction) Then
         sqlConexao.Commit(aTransc);
end;

procedure TdmDados.FilterCDS(aCds: TClientDataSet; aType: TTypeLocalizar;
  aBusca: String);
begin
     aCds.close;
     case aType of
          fsInteger : aCds.Params[0].AsInteger := StrtoInt(aBusca);
          fsString  : aCds.Params[0].AsString  := UpperCase(aBusca);
     end;
     aCds.Open;
end;

procedure TdmDados.RefreshCDS(aDateSet: TClientDataSet);
begin
     aDateSet.Close;
     aDateSet.Open;
end;

procedure TdmDados.Rollback(aMsg : String);
begin
     if (sqlConexao.InTransaction) Then
         sqlConexao.Rollback(Transc);
     raise Exception.Create(aMsg);
end;

procedure TdmDados.Start;
begin
     Transc.IsolationLevel := xilREADCOMMITTED;
     Transc.TransactionID  := StrToInt(IDTransation);
     sqlConexao.StartTransaction(Transc);
end;

function TdmDados.IDTransation: String;
Var
  i : integer;
Const
  srt = '0123456789';
begin
     for i := 1 to 2 do
      begin
           Randomize;
           Result := Result + srt[Random(Length(srt))+1];
      End;
end;

procedure TdmDados.DataModuleDestroy(Sender: TObject);
begin
     sqlConexao.Connected := False;
end;

function TdmDados.ProcurarCodigoPorBarras(aValor, aCampo,
  aTabela: String): String;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     Result := '';
     texto  := 'select PRO_CODIGO, '+aCampo+' from '+aTabela+' where ('+aCampo+' = :pValor)';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aValor;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('PRO_CODIGO').AsString;
      Finally
         Free;
      End;


end;

function TdmDados.ProcurarValor(aValor, aCampo, aTabela: String): Boolean;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := False;
     texto  := 'select '+aCampo+' from '+aTabela+' where ('+aCampo+' = :pValor)';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aValor;
           Open;
           //
           If not (IsEmpty) Then
                Result := True;
      Finally
         Free;
      End;
end;

function TdmDados.ProcurarValorInt(aValor, aCampo,
  aTabela: String): Boolean;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := False;
     texto  := 'select '+aCampo+' from '+aTabela+' where ('+aCampo+' = :pValor)';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsInteger := StrtoInt( aValor );
           Open;
           //
           If not (IsEmpty) Then
                Result := True;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoFornecedorPorCNPJ(aCNPJ: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 0;
     texto := 'Select id, cpf_cnpj, tipo_pessoa from fornecedores where (cpf_cnpj = :pCNPJ)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pCNPJ').AsString := aCNPJ;
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('for_codigo').AsInteger;
       finally
         free;
       end;
end;

function TdmDados.GetDescricaoUnidade(aProdUnidade: String): String;
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select id, descricao from unidades where (id = :PUNI_CODIGO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('PUNI_CODIGO').AsString := aProdUnidade;
         Open;
         //
         if not (IsEmpty) then
            Result := FieldByName('descricao').AsString;
       finally
         free;
       end;
end;

function TdmDados.GetUFFornecedorPorCNPJ(aCNPJ: String): String;
var qraux : TSQLquery;
    texto : string;
begin
    Result := '';
    texto := 'Select f.id, f.cpf_cnpj, f.id_cidade, ci.uf from fornecedores ';
    texto := texto + ' Left join cidades ci on f.id_cidade = ci.id ';
    texto := texto + ' Where (f.cpf_cnpj = :pCNPJ)';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pCNPJ').AsString := aCNPJ;
           Open;
           //
           If not (IsEmpty) Then
               Result := FieldByName('uf').AsString;
     finally
         free;
     End;
end;

function TdmDados.GetProximoIdNFeEmpresa(idLoja: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
    Result := 0;
    texto := 'Select id, sequencia_nfe from empresas where (id  = :pLoja) ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
       SQLConnection := sqlConexao;
       sql.Add(texto);
       Params[0].AsInteger := idLoja;
       Open;
       //
       if not (IsEmpty) Then
         if not uFuncoes.Empty(FieldByName('sequencia_nfe').asString) Then
             Result := FieldByName('sequencia_nfe').AsInteger
         Else
             Result := 0;
       finally
         free;
       end;

end;

function TdmDados.SetProximoIdNFeEmpresa(idLoja,
  iCodNfe: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
    Result := 0;
    texto := 'Update empresas Set sequencia_nfe = :pIdnfe where (id = :pLoja) ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
          SQLConnection := sqlConexao;
          sql.Add(texto);
          Params.ParamByName('pLoja').AsInteger  := idLoja;
          Params.ParamByName('pIdnfe').AsInteger := iCodNfe;
          ExecSQL();
          //
          Result := idLoja;
       finally
           free;
       end;
end;

function TdmDados.GetVerificaNFeVenda(iNumNFe,
  idEmitente: Integer): Boolean;
var qraux : TSQLquery;
    texto, aModalidade : string;
    iVenda : Integer;
begin
    Result := False;
    texto := 'Select id, situacao, numero_nfe from vendas where (numero_nfe = :pcodigo) and (id_empresa = :ploja) and (situacao = '+QuotedStr('F')+')';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := iNumNFe;
           Params.ParamByName('ploja').AsInteger   := idEmitente;
           Open;
           //
           If not (IsEmpty) Then
            begin
                 While not (Eof) do
                  begin
                      iVenda := FieldByName('id').AsInteger;
                      //
                      FilterCDS(cdsVenda, fsInteger, InttoStr(iVenda));
                       //
                       If not (cdsVenda.IsEmpty) Then
                       begin
                             cdsVenda.Edit;
                             cdsVendanumero_nfe.Clear;
                             cdsVendasequencia_nfe.Clear;
                             cdsVenda.ApplyUpdates(0);
                       End;
                       //  Proximo
                       Next;
                  End;
                  //
                  Result := True;
            End;
     finally
         free;
     end;
end;

function TdmDados.GetVerificaVendaNFeAutorizada(idVenda: Integer): Boolean;
var
    qraux : TSQLquery;
    texto : string;
begin
    Result := False;
    texto := 'select m.id, m.situacao, m.numero_nfe, nf.situacao from vendas m ';
    texto := texto+' inner join nota_fiscal nf on m.numero_nfe = nf.id ';
    texto := texto+' where (m.id = :pvenda) and (m.situacao = :psit) and (nf.situacao = '+quotedstr('2')+')';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pVENDA').AsInteger := idVenda;
           Params.ParamByName('pSIT').AsString    := 'F';
           Open;
           //
           If not (IsEmpty) Then
               Result := True;
     finally
         free;
     end;
end;

function TdmDados.GetAliquotaICMS(iCodTributacao: Integer): Double;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := 0;
     texto  := 'Select id, aliquota_icms from tributacao where (id = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodTributacao;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('aliquota_icms').AsFloat;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoIBEGCidade(iCodCidade: Integer): Integer;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := 0;
     texto  := 'Select id, codigo_ibge from cidades where (id = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodCidade;
           Open;
           //
           If not (IsEmpty) Then
             if not uFuncoes.Empty(FieldByName('codigo_ibge').AsString) Then
                Result := FieldByName('codigo_ibge').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.GetNomeBairro(idCidade, idBairro: integer): String;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := '';
     texto  := 'Select * from bairros Where (id = :pBAIRRO) AND (id_cidade = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := idCidade;
           Params.ParamByName('pBAIRRO').AsInteger := idBairro;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('nome').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetUFCidade(idCidade: integer): String;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := '';
     texto  := 'Select id, uf from cidades where (id = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := idCidade;
           Open;
           //
           If not (IsEmpty) Then
             if not uFuncoes.Empty(FieldByName('uf').AsString) Then
                Result := FieldByName('uf').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetIdAutomatico(aNomeSequencia: String): Integer;
var qraux : TSQLquery;
    texto, texto2 : string;
begin
     Result := 0;
     ZConnection1.Connected := True;
     Try
        try
            ZSequence1.SequenceName := 'public.'+aNomeSequencia;
            Result := ZSequence1.GetNextValue;
        Except

        End;
     Finally
         ZConnection1.Connected := False;
     End;
end;

function TdmDados.GetMaxIdNFeEmpresa(idEmpresa: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
    iRetorno : Integer;
begin
    Result := 0;
    // texto := 'Select Max(to_number(numero_nota_fiscal, '+Chr(39)+'999999999'+Chr(39)+')) as total from nota_fiscal where (id_empresa  = :pemitente) and (indicador_do_emitente = '+QuotedStr('0')+') ';
    texto := 'Select Max(numero_nota_fiscal) as total from nota_fiscal where (id_empresa = :pemitente) and (indicador_do_emitente = '+QuotedStr('0')+') and (situacao <> 99)';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
          SQLConnection := sqlConexao;
          sql.Add(texto);
          Params.ParamByName('pemitente').AsInteger  := idEmpresa;
          Open;
          //
          if not (IsEmpty) Then
             if not uFuncoes.Empty(FieldByName('total').AsString) Then
              begin
                   iRetorno := FieldByName('total').AsInteger;
                   Result   := iRetorno;
              End;
       finally
           free;
       end; 
end;

function TdmDados.GetIdClienteVendaConsumidor: Integer;
var qraux : TSQLquery;
    texto : string;
begin
    Result := 0;
    texto  := 'Select id, nome_fantasia, razao_social from clientes where (razao_social = '+QuotedStr('VENDA AO CONSUMIDOR')+') ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Open;
           if not (IsEmpty) Then
               Result := FieldByName('id').AsInteger;
     finally
         free;
     End;
end;

function TdmDados.GetNomeCidade(iCodCidade: Integer): String;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := '';
     texto  := 'Select id, nome from cidades where (id = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodCidade;
           Open;
           //
           If not (IsEmpty) Then
              Result := FieldByName('nome').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetProximoNumeroNotaFiscal(idLoja: Integer): Integer;
Var
    qryAux : TSQLQuery;
    texto : String;
begin
     Result := 0;
     texto  := 'select id, sequencia_nfe from empresas WHERE (id = :pcodigo) ';
     //
     qryAux:= TSQLQuery.Create(nil);
     with qryAux do
      try
           SQLConnection := sqlConexao;
           SQL.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := idLoja;
           Open;
           //
           if not (IsEmpty) Then
              Result :=  FieldByName('sequencia_nfe').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.VerificaExisteNFeEmpresa(idEmpresa: Integer;
  aNumNFE: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
    Result := False;
    texto := 'Select id, numero_nota_fiscal, id_empresa from nota_fiscal where (numero_nota_fiscal = :pnumeronota) and (id_empresa = :pemitente) and (indicador_do_emitente = '+QuotedStr('0')+') ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
          SQLConnection := sqlConexao;
          sql.Add(texto);
          Params.ParamByName('pnumeronota').AsInteger := StrtoInt(aNumNFE);
          Params.ParamByName('pemitente').AsInteger  := idEmpresa;
          Open;
          //
          if not (IsEmpty) Then
              Result := True;
       finally
           free;
       end;
end;

function TdmDados.GetNomeCliente(iCodCliente: Integer;
  aTipo: String): String;
Var
    qryAux : TSQLQuery;
    texto : String;
begin
     Result := '';
     texto  := 'select id, nome_fantasia, razao_social from clientes where (id = :pcodigo) ';
     //
     qryAux:= TSQLQuery.Create(nil);
     with qryAux do
      try
           SQLConnection := sqlConexao;
           SQL.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := iCodCliente;
           Open;
           //
           if not (IsEmpty) Then
             if (aTipo = '1') Then
                 Result :=  FieldByName('razao_social').AsString
             Else
                 Result :=  FieldByName('nome_fantasia').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetVerificarModalidadeVenda(iVenda: Integer): Integer;
var qraux : TSQLquery;
    texto, aModalidadeAPrazo, aRetorno : string;
    bFlAprazo : Boolean;
    iModalidade : Integer;
begin
    Result := 0;
    texto := 'Select id, id_caixa, id_forma_pagamento, id_venda from caixa_movimento where (id_venda = :pcodigo) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := iVenda;
           Open;
           //
           If not (IsEmpty) Then
            begin
                First;
                bFlAprazo := False;
                While not (Eof) do
                begin
                     iModalidade := FieldByName('id_forma_pagamento').AsInteger;
                     aRetorno := 'P';  //GetTipoModalidade(StrtoInt(aModalidade));
                     if (aRetorno = 'P') Then
                     begin
                          bFlAprazo := True;
                          aModalidadeAPrazo := InttoStr(iModalidade);
                     End;
                     //
                     Next;
                End;
                //
                if not (bFlAprazo) Then
                    Result := iModalidade
                Else
                    Result := StrtoInt(aModalidadeAPrazo);
            End;
     finally
         free;
     end;

end;

function TdmDados.GetTipoModalidade(iModalidade: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
    texto := 'Select mod_codigo, mod_avista from modalidade m where (m.mod_codigo = :pcodigo) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcodigo').AsInteger :=  iModalidade;
           Open;
           //
           If not (IsEmpty) Then
            begin
              If (FieldByname('mod_avista').AsString = 'S') Then
                   Result := 'A';
              If (FieldByname('mod_avista').AsString = 'P') Then
                   Result := 'P';
            End;
     finally
         free;
     end;
end;

function TdmDados.GetCST_IPI(idProduto: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 99;
     texto := 'Select id, cst_ipi from produtos Where (id = :pPRODUTO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pPRODUTO').AsInteger := idProduto;
         Open;
         //
         if not (IsEmpty) then
            Result := FieldByName('cst_ipi').AsInteger;
       finally
         free;
       end;
end;

function TdmDados.GetRazaoSocialEmpresa(idEmpresa: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select id, cnpj, nome_fantasia, razao_social from empresas Where (id = :pID)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pID').AsInteger := idEmpresa;
         Open;
         //
         if not (IsEmpty) then
            Result := FieldByName('razao_social').AsString;
       finally
         free;
       end;
end;

function TdmDados.GetAliquotaCofins(idProduto: Integer): Double;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 0;
     texto := 'Select p.id, p.origem, p.id_tributacao, t.aliquota_cofins from produtos p left join tributacao t on p.id_tributacao = t.id  where (p.id = :pPRODUTO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pPRODUTO').AsInteger := idProduto;
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('aliquota_cofins').AsFloat;
       finally
         free;
       end;
end;

function TdmDados.GetAliquotaPis(idProduto: Integer): Double;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 0;
     texto := 'Select p.id, p.origem, p.id_tributacao, t.aliquota_pis from produtos p left join tributacao t on p.id_tributacao = t.id  where (p.id = :pPRODUTO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pPRODUTO').AsInteger := idProduto;
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('aliquota_pis').AsFloat;
       finally
         free;
       end;
end;

function TdmDados.GetCST_Cofins(idProduto: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 1;
     texto := 'Select p.id, p.origem, p.id_tributacao, t.cst_cofins from produtos p left join tributacao t on p.id_tributacao = t.id  where (p.id = :pPRODUTO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pPRODUTO').AsInteger := idProduto;
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('cst_cofins').AsInteger;
       finally
         free;
       end;
end;

function TdmDados.GetCST_PIS(idProduto: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 1;
     texto := 'Select p.id, p.origem, p.id_tributacao, t.cst_pis from produtos p left join tributacao t on p.id_tributacao = t.id  where (p.id = :pPRODUTO)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pPRODUTO').AsInteger := idProduto;
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('cst_pis').AsInteger;
       finally
         free;
       end;
end;

function TdmDados.GetRegimeTributarioEmpresa(idEmpresa : Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
     Result := 1;
     texto := 'Select e.id, e.crt from empresas e where (e.id = :pID)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pID').AsInteger := idEmpresa;
         Open;
         //
         if not (IsEmpty) then
            if not uFuncoes.Empty(FieldByName('crt').AsString) Then
                 Result := FieldByName('crt').AsInteger
             Else
                 Result := -1;
       finally
         free;
       end;
end;

function TdmDados.GetCodigo_CodigoBarras(aCodBarras: String): String;
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select p.id, p.cod_barras from produtos p where (p.cod_barras = :pcod_barras)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pcod_barras').AsString := uFuncoes.Alltrim(aCodBarras);
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('id').AsString;
       finally
         free;
       end;
end;

function TdmDados.GetNomeUsuario(idUsuario: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select id, nome from usuarios where (id = :pid)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pid').AsInteger := idUsuario;
         Open;
         //
         if not (IsEmpty) then
             Result := FieldByName('nome').AsString;
       finally
         free;
       end;
end;

function TdmDados.GetUFEmitente(idEmpresa: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
     texto := 'Select e.id, e.id_cidade, c.uf from empresas e Left join cidades c on e.id_cidade = c.id where (e.id = :pid)';
     //
     QrAux := TSQLquery.Create(nil);
     with QrAux do
       try
         SQLConnection := sqlConexao;
         sql.Add(texto);
         Params.ParamByName('pid').AsInteger := idEmpresa;
         Open;
         //
         if not (IsEmpty) then
            if not uFuncoes.Empty(FieldByName('uf').AsString) Then
                 Result := FieldByName('uf').AsString;
       finally
         free;
       end;
end;

function TdmDados.AddRegistroInutilizacaoNumeracao(aCNPJ, aJUSTIFICATIVA,
  aHora, aProtocolo: String; iAno, iModelo, iSerie, iNUMINICIAL, iNUMFINAL,
  iCDUSUA: Integer; aDataMov: TDateTime): Boolean;
Var
    qryAux : TSQLQuery;
    texto : String;
    idCodigo : Integer;
begin
     Result := False;
     texto  := 'Insert Into nota_fiscal_inutilizadas(id, cnpj_emitente, ano, modelo, serie, numero_inicial, ';
     texto  := texto + ' numero_final , justificativa, data, id_usuario, num_protocolo) ';
     texto  := texto + 'Values (:pCODIGO, :pCNPJ, :pANO, :pMODELO, :pSERIE, :pNUMINICIAL, :pNUMFINAL, :pJUSTIFICATIVA, :pDTMOVI, :pCDUSUA, :pPROTOCOLO) ';
     //
     qryAux:= TSQLQuery.Create(nil);
     with qryAux do
      try
         Start;
         try
           //                           
           idCodigo := GetIdAutomatico('nota_fiscal_inutilizadas_id_seq');
           //
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger       := idCodigo;
           Params.ParamByName('pCNPJ').AsString          := aCNPJ;
           Params.ParamByName('pANO').AsInteger          := iAno;
           Params.ParamByName('pMODELO').AsInteger       := iModelo;
           Params.ParamByName('pSERIE').AsInteger        := iSerie;
           Params.ParamByName('pNUMINICIAL').AsInteger   := iNUMINICIAL;
           Params.ParamByName('pNUMFINAL').AsInteger     := iNUMFINAL;
           Params.ParamByName('pJUSTIFICATIVA').AsString := aJUSTIFICATIVA;
           Params.ParamByName('pPROTOCOLO').AsString     := aProtocolo;
           Params.ParamByName('pDTMOVI').AsDateTime      := aDataMov;
           Params.ParamByName('pCDUSUA').AsInteger       := iCDUSUA;
           //
           ExecSQL();
           Comit(Transc);
           //
           Result := True;
         Except
              on e: exception do
              begin
                   Rollback(E.Message);
              End;
         End;
      Finally
         Free;
      End;
end;

function TdmDados.GetRazaoSocialDestinatario(aCNPJCPF: String): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto := 'select distinct NF.destinatario_cnpjcpf, NF.destinatario_razaosocial from nota_fiscal NF Where (NF.destinatario_cnpjcpf = :pCNPJCPF)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCNPJCPF').AsString := aCNPJCPF;
      Open;
      //
      if not (IsEmpty) then
          result := FieldByName('destinatario_razaosocial').AsString;
    finally
      free;
    end;
end;

function TdmDados.VerificarDadosEmail: Boolean;
begin
    Result := false;
    //
    if uFuncoes.Empty(aEmail_Host_Smtp) Then
     begin
         Application.MessageBox(PChar('Campo Servidor SMTP do email está vazio no arquivo de configuração!!!'),
                 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
         Exit;
     End;
     //
    if uFuncoes.Empty(aEmail_Endereco) Then
     begin
        Result := False;
        Application.MessageBox(PChar('Campo endereço do remetente do email está vazio!!!'),
                 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
         Exit;
     End;
     //
    if uFuncoes.Empty(aEmail_Porta) Then
     begin
          Application.MessageBox(PChar('Campo Porta do servidor de email está vazio no arquivo de configuração!!!'),
                 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
          Exit;
     End;
     //
     if uFuncoes.Empty(aEmail_Password) Then
     begin
          Application.MessageBox(PChar('Campo Senha do email está vazio no arquivo de configuração!!!'),
                 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
          Exit;
     End;
     //
     Result := True;
end;

function TdmDados.GetDescricaoNaturezaOperacao(
  idNatureza: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
 { texto := 'select id, descricao from natureza_operacao Where (id = :pID)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pID').AsInteger := idNatureza;
      Open;
      //
      if not (IsEmpty) then
          result := FieldByName('descricao').AsString;
    finally
      free;
    end;   }
    If not (dmNFe.cdsListaNaturezaOpr.isempty) Then
     begin
         if (dmNFe.cdsListaNaturezaOpr.locate('id', idNatureza, [])) Then
             Result := dmNFe.cdsListaNaturezaOpr.FieldByName('descricao').asstring;
     End;
end;

function TdmDados.GetUnidadeProduto(aProduto: String): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto := 'Select id, id_unidade from produtos where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := StrtoInt(aProduto);
      Open;
      If not (IsEmpty) Then
         result := uFuncoes.Alltrim(FieldByName('id_unidade').AsString);
    finally
      free;
    end;
end;

function TdmDados.GetUnidArmazProduto(iProduto: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  result := 1;
  texto := 'Select id, quant_armaz from produtos where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := iProduto;
      Open;
      If not (IsEmpty) Then
         result := FieldByName('quant_armaz').AsInteger;
    finally
      free;
    end;
end;

function TdmDados.GetVerificaProdutoMedicamento(
  idProduto: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto := 'Select id, medicamento from produtos where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := idProduto;
      Open;
      If not (IsEmpty) Then
         result := FieldByName('medicamento').AsBoolean;
    finally
      free;
    end;
end;

function TdmDados.GetDataFabricacaoProduto(iLoja, idProduto: Integer;
  aLote: String): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto := 'Select e.id_empresa, e.id_produto, e.lote, e.data_fabricacao from estoque e ';
  texto := texto + ' where (e.id_empresa = :ploja) and (e.id_produto = :pproduto) and (e.lote = :plote)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
         params.parambyname('ploja').asinteger    := iloja;
         params.parambyname('pproduto').asInteger := idProduto;
         params.parambyname('plote').asstring     := ufuncoes.Alltrim(alote);
      Open;
      If not (IsEmpty) Then
         result := FieldByName('data_fabricacao').AsString;
    finally
      free;
    end;
end;

function TdmDados.VerificaDadosCertificado: Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto := 'Select id, certificado_numero_serie from empresas where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := uFrmPlusPdvNfe.idEmpresa;
      Open;
      If not (IsEmpty) Then
        if not ufuncoes.Empty(FieldByName('certificado_numero_serie').AsString) Then
            result := True; 
    finally
      free;
    end;
end;

function TdmDados.GetEMailCliente(idCliente: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
    Result := '';
    texto  := 'Select id, email from clientes where (id = :pcodigo) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := idCliente;
           Open;
           if not (IsEmpty) Then
             if not uFuncoes.Empty(FieldByname('email').AsString) Then
                 Result := FieldByname('email').AsString;
     finally
         free;
     End;
end;

function TdmDados.GetEMailClienteCNPJCPF(aCNPJ_CPF: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
    Result := 0;
    texto  := 'Select id, email, cpf_cnpj from clientes where (cpf_cnpj = :pcgc) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcgc').AsString := uFuncoes.Alltrim(aCNPJ_CPF);
           Open;
           if not (IsEmpty) Then
              Result := FieldByname('id').AsInteger;
     finally
         free;
     End;
end;

function TdmDados.GetEMailFornecedor(idFornecedor: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
    Result := '';
    texto  := 'Select id, email from fornecedores where (id = :pcodigo) ';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConexao;
           sql.Add(texto);
           Params.ParamByName('pcodigo').AsInteger := idFornecedor;
           Open;
           if not (IsEmpty) Then
             if not uFuncoes.Empty(FieldByname('email').AsString) Then
                 Result := FieldByname('email').AsString;
     finally
         free;
     End;
end;

function TdmDados.GetNomeCidadeCodigoIBEG(iCodigoIBEG: Integer): String;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := '';
     texto  := 'Select id, nome, codigo_ibge from cidades where (codigo_ibge = :pCODIGO) ';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodigoIBEG;
           Open;
           //
           If not (IsEmpty) Then
              Result := FieldByName('nome').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetPesoProduto(aProduto, aTipo: String): Double;
var qraux : TSQLquery;
    texto : string;
begin
  Result := 0;
  texto := 'Select id, pesavel, peso_liquido, peso_bruto from produtos where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := StrtoInt(aProduto);
      Open;
      //
      if not (IsEmpty) then
       begin
            if (aTipo = 'B') Then
                result := FieldByName('peso_bruto').AsFloat;
            if (aTipo = 'L') Then
                result := FieldByName('peso_liquido').AsFloat;
       End;
    finally
      free;
    end;
end;

function TdmDados.GetVerificaProdutoPesavel(aProduto: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto := 'Select id, pesavel from produtos where (id = :pCODIGO)';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsInteger := StrtoInt(aProduto);
      Open;
      //
      if not (IsEmpty) then
         result := FieldByName('pesavel').AsBoolean;
    finally
      free;
    end;
end;

procedure TdmDados.CarregarListaNaturezasOperacaoPadrao;
begin
     dmDados.RefreshCDS(cdsListaNaturezasoperacao);
     cdsListaNaturezasoperacao.EmptyDataSet;
     With cdsListaNaturezasoperacao do
     begin
          //
          Append;
          FieldByName('id').asInteger        := 1;
          FieldByName('descricao').asString  := 'VENDA DE MERCADORIAS';
          FieldByName('tipo').asString       := '1';    // preço de venda
          //FieldByName('id_decreto').AsInteger := 0;
          FieldByName('permite_venda').AsBoolean := True;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 2;
          FieldByName('descricao').asString  := 'COMPRA DE MERCADORIAS';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 3;
          FieldByName('descricao').asString  := 'CONSIGNAÇÃO';
          FieldByName('tipo').asString       := '3';    // preço de Custo
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 4;
          FieldByName('descricao').asString  := 'DEVOLUÇÃO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 5;
          FieldByName('descricao').asString  := 'DISTRIBUIÇÃO DE BRINDES';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 6;
          FieldByName('descricao').asString  := 'EXPORTAÇÃO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 7;
          FieldByName('descricao').asString  := 'IMPORTAÇÃO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 8;
          FieldByName('descricao').asString  := 'REMESSA PARA CONSERTO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 9;
          FieldByName('descricao').asString  := 'REMESSA PARA FINS DE DEMOSTRAÇÃO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 10;
          FieldByName('descricao').asString  := 'REMESSA PARA FINS DE INDUSTRIALIZAÇÃO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 11;
          FieldByName('descricao').asString  := 'REMESSA PARA VENDA AMBULANTE';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 12;
          FieldByName('descricao').asString  := 'TRANSFERÊNCIA';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 13;
          FieldByName('descricao').asString  := 'BONIFICAÇÃO';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
          //
          Append;
          FieldByName('id').asInteger := 14;
          FieldByName('descricao').asString  := 'ENTRADA DE MERCADORIAS';
          FieldByName('tipo').asString       := '2';    // preço de compra
          FieldByName('permite_venda').AsBoolean := False;
          Post;
     End;  // With cdsListaNaturezasoperacao do
end;

function TdmDados.GetIdRegistoNFe(idNFe, idEmpresa: Integer;
  aSerie: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  Result := -1;
  texto := 'Select id, id_empresa, numero_nota_fiscal, serie, indicador_do_emitente from nota_fiscal';
  texto := ' where (numero_nota_fiscal = :pNFe) and (id_empresa = :pempresa) and (serie = :pserie)  and (indicador_do_emitente = '+QuotedStr('0')+') ';
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pNFe').AsInteger     := idNFe;
      Params.ParamByName('pempresa').AsInteger := idEmpresa;
      Params.ParamByName('pserie').AsString    := InttoStr(StrtoInt(aSerie));
      Open;
      //
      if not (IsEmpty) then
          result := FieldByName('id').AsInteger;
    finally
      free;
    end;

end;

end.
