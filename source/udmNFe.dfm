object dmNFe: TdmNFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 223
  Top = 149
  Height = 530
  Width = 978
  object ACBrNFe1: TACBrNFe
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFERaveCB1
    Left = 32
    Top = 16
  end
  object dstNotaFiscal: TSQLDataSet
    CommandText = 'select * from nota_fiscal where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 40
    Top = 88
    object dstNotaFiscalid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstNotaFiscalmodelo: TIntegerField
      FieldName = 'modelo'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalindicador_do_emitente: TIntegerField
      FieldName = 'indicador_do_emitente'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnum_coo: TIntegerField
      FieldName = 'num_coo'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalaamm: TStringField
      FieldName = 'aamm'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object dstNotaFiscalid_cfop: TIntegerField
      FieldName = 'id_cfop'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnum_ecf: TStringField
      FieldName = 'num_ecf'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstNotaFiscalmodelo_ecf: TStringField
      FieldName = 'modelo_ecf'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstNotaFiscaldata_impressao_danfe: TSQLTimeStampField
      FieldName = 'data_impressao_danfe'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnumero_recibo: TStringField
      FieldName = 'numero_recibo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstNotaFiscalsituacao: TIntegerField
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnatureza_operacao: TIntegerField
      FieldName = 'natureza_operacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltipo_operacao: TIntegerField
      FieldName = 'tipo_operacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalind_pag: TIntegerField
      FieldName = 'ind_pag'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltipo_emis: TIntegerField
      FieldName = 'tipo_emis'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalchave_acesso: TStringField
      FieldName = 'chave_acesso'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object dstNotaFiscalversao_xml: TStringField
      FieldName = 'versao_xml'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstNotaFiscaldescricao_natureza_operacao: TStringField
      FieldName = 'descricao_natureza_operacao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaldata_saida_entrada: TSQLTimeStampField
      FieldName = 'data_saida_entrada'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldata_hora_emissao: TSQLTimeStampField
      FieldName = 'data_hora_emissao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnumero_protocolo: TStringField
      FieldName = 'numero_protocolo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstNotaFiscaldata_protocolo: TSQLTimeStampField
      FieldName = 'data_protocolo'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalfinalidade: TIntegerField
      FieldName = 'finalidade'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltipo_danfe: TIntegerField
      FieldName = 'tipo_danfe'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnum_lote_evento: TIntegerField
      FieldName = 'num_lote_evento'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalsequencia_cce: TIntegerField
      FieldName = 'sequencia_cce'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalvalor_itens: TFMTBCDField
      FieldName = 'valor_itens'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalmodalidade_frete: TIntegerField
      FieldName = 'modalidade_frete'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalvalor_frete: TFMTBCDField
      FieldName = 'valor_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_seguro: TFMTBCDField
      FieldName = 'valor_seguro'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_outras_despesas: TFMTBCDField
      FieldName = 'valor_outras_despesas'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_total_servico_nao_inciden: TFMTBCDField
      FieldName = 'valor_total_servico_nao_inciden'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_icms: TFMTBCDField
      FieldName = 'valor_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_bc_icms: TFMTBCDField
      FieldName = 'valor_bc_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_icms_st: TFMTBCDField
      FieldName = 'valor_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_bc_icms_st: TFMTBCDField
      FieldName = 'valor_bc_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_ipi: TFMTBCDField
      FieldName = 'valor_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_ipi_devolvido: TFMTBCDField
      FieldName = 'valor_ipi_devolvido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_ii: TFMTBCDField
      FieldName = 'valor_ii'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_pis: TFMTBCDField
      FieldName = 'valor_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_pis_servico: TFMTBCDField
      FieldName = 'valor_pis_servico'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_pis_st: TFMTBCDField
      FieldName = 'valor_pis_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstNotaFiscalvalor_retido_pis: TFMTBCDField
      FieldName = 'valor_retido_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_cofins: TFMTBCDField
      FieldName = 'valor_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_cofins_servico: TFMTBCDField
      FieldName = 'valor_cofins_servico'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_cofins_st: TFMTBCDField
      FieldName = 'valor_cofins_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstNotaFiscalvalor_retido_cofins: TFMTBCDField
      FieldName = 'valor_retido_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_bc_iss: TFMTBCDField
      FieldName = 'valor_bc_iss'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_total_iss: TFMTBCDField
      FieldName = 'valor_total_iss'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalvalor_total_tributos: TFMTBCDField
      FieldName = 'valor_total_tributos'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalvalor_total_nota: TFMTBCDField
      FieldName = 'valor_total_nota'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalind_inscricao_estadual_dest: TIntegerField
      FieldName = 'ind_inscricao_estadual_dest'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_cnpjcpf: TStringField
      FieldName = 'destinatario_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscaldestinatario_razaosocial: TStringField
      FieldName = 'destinatario_razaosocial'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaldestinatario_tipopessoa: TStringField
      FieldName = 'destinatario_tipopessoa'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstNotaFiscaldestinatario_logradouro: TStringField
      FieldName = 'destinatario_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstNotaFiscaldestinatario_end_numero: TIntegerField
      FieldName = 'destinatario_end_numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_end_complemento: TStringField
      FieldName = 'destinatario_end_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstNotaFiscaldestinatario_end_bairro: TStringField
      FieldName = 'destinatario_end_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaldestinatario_municipio_ibge: TIntegerField
      FieldName = 'destinatario_municipio_ibge'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_nome_municipio: TStringField
      FieldName = 'destinatario_nome_municipio'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaldestinatario_cep: TStringField
      FieldName = 'destinatario_cep'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object dstNotaFiscaldestinatario_telefone: TStringField
      FieldName = 'destinatario_telefone'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscaldestinatario_ie: TStringField
      FieldName = 'destinatario_ie'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscaldestinatario_isuf: TStringField
      FieldName = 'destinatario_isuf'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object dstNotaFiscaldestinatario_email: TStringField
      FieldName = 'destinatario_email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaldestinatario_entrega_cnpjcpf: TStringField
      FieldName = 'destinatario_entrega_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscaldestinatario_entrega_logradouro: TStringField
      FieldName = 'destinatario_entrega_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstNotaFiscaldestinatario_entrega_numero: TIntegerField
      FieldName = 'destinatario_entrega_numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_entrega_complement: TStringField
      FieldName = 'destinatario_entrega_complement'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstNotaFiscaldestinatario_entrega_bairro: TStringField
      FieldName = 'destinatario_entrega_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaldestinatario_entrega_munic_ibge: TIntegerField
      FieldName = 'destinatario_entrega_munic_ibge'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_entrega_nome_munic: TStringField
      FieldName = 'destinatario_entrega_nome_munic'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemitente_razao: TStringField
      FieldName = 'emitente_razao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemitente_fantasia: TStringField
      FieldName = 'emitente_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemitente_tipo_pessoa: TStringField
      FieldName = 'emitente_tipo_pessoa'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstNotaFiscalemitente_cnpj: TStringField
      FieldName = 'emitente_cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalemitente_inscricao_suframa: TStringField
      FieldName = 'emitente_inscricao_suframa'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object dstNotaFiscalemitente_ie: TStringField
      FieldName = 'emitente_ie'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalemintente_iest: TStringField
      FieldName = 'emintente_iest'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalemitente_im: TStringField
      FieldName = 'emitente_im'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstNotaFiscalemitente_cnae: TStringField
      FieldName = 'emitente_cnae'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object dstNotaFiscalemitente_municipio_ibge: TIntegerField
      FieldName = 'emitente_municipio_ibge'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemitente_nome_municipio: TStringField
      FieldName = 'emitente_nome_municipio'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemintente_end_bairro: TStringField
      FieldName = 'emintente_end_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemitente_cep: TStringField
      FieldName = 'emitente_cep'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object dstNotaFiscalemitente_end_logradouro: TStringField
      FieldName = 'emitente_end_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstNotaFiscalemitente_end_numero: TIntegerField
      FieldName = 'emitente_end_numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemitente_end_complemento: TStringField
      FieldName = 'emitente_end_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstNotaFiscalemitente_telefone: TStringField
      FieldName = 'emitente_telefone'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalemitente_retirada_cnpjcpf: TStringField
      FieldName = 'emitente_retirada_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalemitente_retirada_municipio: TIntegerField
      FieldName = 'emitente_retirada_municipio'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemitente_retirada_nome_municipi: TStringField
      FieldName = 'emitente_retirada_nome_municipi'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemitente_retirada_bairro: TStringField
      FieldName = 'emitente_retirada_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscalemitente_retirada_logradouro: TStringField
      FieldName = 'emitente_retirada_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstNotaFiscalemitente_retirada_numero: TIntegerField
      FieldName = 'emitente_retirada_numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemitente_retirada_complemento: TStringField
      FieldName = 'emitente_retirada_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstNotaFiscalid_transportadora: TIntegerField
      FieldName = 'id_transportadora'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltransporte_cnpjcpf: TStringField
      FieldName = 'transporte_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscaltransporte_razao: TStringField
      FieldName = 'transporte_razao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaltransporte_ie: TStringField
      FieldName = 'transporte_ie'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscaltransporte_endereco: TStringField
      FieldName = 'transporte_endereco'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaltransporte_nome_municipio: TStringField
      FieldName = 'transporte_nome_municipio'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstNotaFiscaltransporte_veiculo_num_placa: TStringField
      FieldName = 'transporte_veiculo_num_placa'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstNotaFiscaltransporte_veiculo_rntc: TStringField
      FieldName = 'transporte_veiculo_rntc'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltransporte_reboque_num_placa: TStringField
      FieldName = 'transporte_reboque_num_placa'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstNotaFiscaltransporte_reboque_rntc: TStringField
      FieldName = 'transporte_reboque_rntc'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalinformacoes_adicionais_fisco: TMemoField
      FieldName = 'informacoes_adicionais_fisco'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstNotaFiscalinformacoes_adicionais_contribu: TMemoField
      FieldName = 'informacoes_adicionais_contribu'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstNotaFiscallocal_retirada_diferente_emiten: TStringField
      FieldName = 'local_retirada_diferente_emiten'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstNotaFiscallocal_entrega_diferente_destina: TStringField
      FieldName = 'local_entrega_diferente_destina'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstNotaFiscalnum_protocolo_cancelamento: TStringField
      FieldName = 'num_protocolo_cancelamento'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstNotaFiscaldata_cancelamento: TSQLTimeStampField
      FieldName = 'data_cancelamento'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaljustificativa_cancelamento: TStringField
      FieldName = 'justificativa_cancelamento'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstNotaFiscalcartao_correcao: TMemoField
      FieldName = 'cartao_correcao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstNotaFiscalid_usuario_enviou: TIntegerField
      FieldName = 'id_usuario_enviou'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnome_computador_digitada: TStringField
      FieldName = 'nome_computador_digitada'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstNotaFiscalnome_computador_enviou: TStringField
      FieldName = 'nome_computador_enviou'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstNotaFiscalindicador_consumidor_final: TIntegerField
      FieldName = 'indicador_consumidor_final'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalindicador_presenca_comprador: TIntegerField
      FieldName = 'indicador_presenca_comprador'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestino_operacao: TIntegerField
      FieldName = 'destino_operacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalxml_carta: TMemoField
      FieldName = 'xml_carta'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstNotaFiscalarquivo_xml: TMemoField
      FieldName = 'arquivo_xml'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstNotaFiscalid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalnumero_nota_fiscal: TIntegerField
      FieldName = 'numero_nota_fiscal'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalserie: TIntegerField
      FieldName = 'serie'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldv_chave_acesso: TIntegerField
      FieldName = 'dv_chave_acesso'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalcodigo_numerico_chave_acesso: TIntegerField
      FieldName = 'codigo_numerico_chave_acesso'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemintente_crt: TIntegerField
      FieldName = 'emintente_crt'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemitente_uf: TIntegerField
      FieldName = 'emitente_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalemitente_retirada_uf: TIntegerField
      FieldName = 'emitente_retirada_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_uf: TIntegerField
      FieldName = 'destinatario_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldestinatario_entrega_uf: TIntegerField
      FieldName = 'destinatario_entrega_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltransporte_uf: TIntegerField
      FieldName = 'transporte_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltransporte_veiculo_uf: TIntegerField
      FieldName = 'transporte_veiculo_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaltransporte_reboque_uf: TIntegerField
      FieldName = 'transporte_reboque_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalvalor_icms_desonerado: TFMTBCDField
      FieldName = 'valor_icms_desonerado'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscaldata_prestacao_servico: TDateField
      FieldName = 'data_prestacao_servico'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscaldeducao_bc_issqn: TFMTBCDField
      FieldName = 'deducao_bc_issqn'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscaloutras_reducoes_issqn: TFMTBCDField
      FieldName = 'outras_reducoes_issqn'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscaldesc_incondicional_issqn: TFMTBCDField
      FieldName = 'desc_incondicional_issqn'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscaldesc_condicional_issqn: TFMTBCDField
      FieldName = 'desc_condicional_issqn'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscalvalor_retencao_iss: TFMTBCDField
      FieldName = 'valor_retencao_iss'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscalregime_especial: TIntegerField
      FieldName = 'regime_especial'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dstNotaFiscalItens: TSQLDataSet
    CommandText = 
      'select * from nota_fiscal_itens where (id_nota_fiscal = :pid_not' +
      'a_fiscal) order by item'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid_nota_fiscal'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 40
    Top = 152
    object dstNotaFiscalItensid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstNotaFiscalItensitem: TIntegerField
      FieldName = 'item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstNotaFiscalItensid_produto: TIntegerField
      FieldName = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstNotaFiscalItensdescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object dstNotaFiscalItensid_unidade: TStringField
      FieldName = 'id_unidade'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstNotaFiscalItensquantidade: TFMTBCDField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensnum_lote: TStringField
      FieldName = 'num_lote'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensdescricao_complemento: TStringField
      FieldName = 'descricao_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object dstNotaFiscalItensdata_vencimento_lote: TDateField
      FieldName = 'data_vencimento_lote'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensdata_fabricacao_lote: TDateField
      FieldName = 'data_fabricacao_lote'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItenspercentual_tributo: TFMTBCDField
      FieldName = 'percentual_tributo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensorigem_produto: TIntegerField
      FieldName = 'origem_produto'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensvalor_unitario: TFMTBCDField
      FieldName = 'valor_unitario'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensvalor_compra: TFMTBCDField
      FieldName = 'valor_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensvalor_custo: TFMTBCDField
      FieldName = 'valor_custo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItenspercentual_desconto: TFMTBCDField
      FieldName = 'percentual_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 2
    end
    object dstNotaFiscalItensvalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItenspercentual_acrescimo: TFMTBCDField
      FieldName = 'percentual_acrescimo'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 2
    end
    object dstNotaFiscalItensvalor_acrescimo: TFMTBCDField
      FieldName = 'valor_acrescimo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItensvalor_frete: TFMTBCDField
      FieldName = 'valor_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItensvalor_seguro: TFMTBCDField
      FieldName = 'valor_seguro'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItensvalor_outrasdespesas: TFMTBCDField
      FieldName = 'valor_outrasdespesas'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItenscsosn: TIntegerField
      FieldName = 'csosn'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensaliquota_icms: TFMTBCDField
      FieldName = 'aliquota_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstNotaFiscalItensvalor_icms: TFMTBCDField
      FieldName = 'valor_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensvalor_bc_icms: TFMTBCDField
      FieldName = 'valor_bc_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensaliquota_icms_st: TFMTBCDField
      FieldName = 'aliquota_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensvalor_icms_st: TFMTBCDField
      FieldName = 'valor_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItensvalor_bc_icms_st: TFMTBCDField
      FieldName = 'valor_bc_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItenspercentual_reducao_bc_icms_st: TFMTBCDField
      FieldName = 'percentual_reducao_bc_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItenspercentual_margem_lucro_icms_st: TFMTBCDField
      FieldName = 'percentual_margem_lucro_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItenspercentual_reducao_icms: TFMTBCDField
      FieldName = 'percentual_reducao_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object dstNotaFiscalItensaliquota_ipi: TFMTBCDField
      FieldName = 'aliquota_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 2
    end
    object dstNotaFiscalItensvalor_ipi: TFMTBCDField
      FieldName = 'valor_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensvalor_bc_ipi: TFMTBCDField
      FieldName = 'valor_bc_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstNotaFiscalItenspercentual_ipi_devolvido: TFMTBCDField
      FieldName = 'percentual_ipi_devolvido'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstNotaFiscalItensvalor_ipi_devolvido: TFMTBCDField
      FieldName = 'valor_ipi_devolvido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItenscst_ipi: TIntegerField
      FieldName = 'cst_ipi'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensextipi: TStringField
      FieldName = 'extipi'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstNotaFiscalItensaliquota_pis: TFMTBCDField
      FieldName = 'aliquota_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object dstNotaFiscalItensvalor_pis: TFMTBCDField
      FieldName = 'valor_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstNotaFiscalItensquantidade_bc_pis: TFMTBCDField
      FieldName = 'quantidade_bc_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstNotaFiscalItensvalor_bc_pis: TFMTBCDField
      FieldName = 'valor_bc_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstNotaFiscalItenscst_pis: TIntegerField
      FieldName = 'cst_pis'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensaliquota_cofins: TFMTBCDField
      FieldName = 'aliquota_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object dstNotaFiscalItensvalor_cofins: TFMTBCDField
      FieldName = 'valor_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensquantidade_bc_cofins: TFMTBCDField
      FieldName = 'quantidade_bc_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstNotaFiscalItensvalor_bc_cofins: TFMTBCDField
      FieldName = 'valor_bc_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstNotaFiscalItenscst_cofins: TIntegerField
      FieldName = 'cst_cofins'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensean: TStringField
      FieldName = 'ean'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalItensid_ncm: TStringField
      FieldName = 'id_ncm'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstNotaFiscalItensid_cfop: TIntegerField
      FieldName = 'id_cfop'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensceantrib: TStringField
      FieldName = 'ceantrib'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstNotaFiscalItenscst_icms: TIntegerField
      FieldName = 'cst_icms'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensmod_bc: TIntegerField
      FieldName = 'mod_bc'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensmod_bc_st: TIntegerField
      FieldName = 'mod_bc_st'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensindtot: TBooleanField
      FieldName = 'indtot'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensvalor_icms_desonerado: TFMTBCDField
      FieldName = 'valor_icms_desonerado'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscalItensmotivo_desoneracao_icms: TIntegerField
      FieldName = 'motivo_desoneracao_icms'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaFiscalItensvalor_icms_operacao: TFMTBCDField
      FieldName = 'valor_icms_operacao'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
    object dstNotaFiscalItensper_diferimento_icms: TFMTBCDField
      FieldName = 'per_diferimento_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 8
    end
    object dstNotaFiscalItensvalor_icms_diferido: TFMTBCDField
      FieldName = 'valor_icms_diferido'
      ProviderFlags = [pfInUpdate]
      Precision = 13
      Size = 2
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = dstNotaFiscal
    Options = [poAllowCommandText]
    Left = 128
    Top = 88
  end
  object dspNotaFiscalItens: TDataSetProvider
    DataSet = dstNotaFiscalItens
    Options = [poAllowCommandText]
    Left = 128
    Top = 144
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspNotaFiscal'
    Left = 216
    Top = 88
    object cdsNotaFiscalid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotaFiscalmodelo: TIntegerField
      FieldName = 'modelo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalindicador_do_emitente: TIntegerField
      FieldName = 'indicador_do_emitente'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnumero_nota_fiscal: TIntegerField
      FieldName = 'numero_nota_fiscal'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000000000'
    end
    object cdsNotaFiscalserie: TIntegerField
      FieldName = 'serie'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
    end
    object cdsNotaFiscalcodigo_numerico_chave_acesso: TIntegerField
      FieldName = 'codigo_numerico_chave_acesso'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnum_coo: TIntegerField
      FieldName = 'num_coo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalaamm: TStringField
      FieldName = 'aamm'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object cdsNotaFiscalid_cfop: TIntegerField
      FieldName = 'id_cfop'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnum_ecf: TStringField
      FieldName = 'num_ecf'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsNotaFiscalmodelo_ecf: TStringField
      FieldName = 'modelo_ecf'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscaldata_impressao_danfe: TSQLTimeStampField
      FieldName = 'data_impressao_danfe'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnumero_recibo: TStringField
      FieldName = 'numero_recibo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscalsituacao: TIntegerField
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaltipo_operacao: TIntegerField
      FieldName = 'tipo_operacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalind_pag: TIntegerField
      FieldName = 'ind_pag'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalchave_acesso: TStringField
      FieldName = 'chave_acesso'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNotaFiscalversao_xml: TStringField
      FieldName = 'versao_xml'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNotaFiscaldescricao_natureza_operacao: TStringField
      FieldName = 'descricao_natureza_operacao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaldata_saida_entrada: TSQLTimeStampField
      FieldName = 'data_saida_entrada'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldata_hora_emissao: TSQLTimeStampField
      FieldName = 'data_hora_emissao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnumero_protocolo: TStringField
      FieldName = 'numero_protocolo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscaldata_protocolo: TSQLTimeStampField
      FieldName = 'data_protocolo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaltipo_danfe: TIntegerField
      FieldName = 'tipo_danfe'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnum_lote_evento: TIntegerField
      FieldName = 'num_lote_evento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalsequencia_cce: TIntegerField
      FieldName = 'sequencia_cce'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalvalor_itens: TFMTBCDField
      FieldName = 'valor_itens'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalmodalidade_frete: TIntegerField
      FieldName = 'modalidade_frete'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalvalor_frete: TFMTBCDField
      FieldName = 'valor_frete'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_seguro: TFMTBCDField
      FieldName = 'valor_seguro'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_outras_despesas: TFMTBCDField
      FieldName = 'valor_outras_despesas'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_total_servico_nao_inciden: TFMTBCDField
      FieldName = 'valor_total_servico_nao_inciden'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_icms: TFMTBCDField
      FieldName = 'valor_icms'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_bc_icms: TFMTBCDField
      FieldName = 'valor_bc_icms'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_icms_st: TFMTBCDField
      FieldName = 'valor_icms_st'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_bc_icms_st: TFMTBCDField
      FieldName = 'valor_bc_icms_st'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_ipi: TFMTBCDField
      FieldName = 'valor_ipi'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_ipi_devolvido: TFMTBCDField
      FieldName = 'valor_ipi_devolvido'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_ii: TFMTBCDField
      FieldName = 'valor_ii'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_pis: TFMTBCDField
      FieldName = 'valor_pis'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_pis_servico: TFMTBCDField
      FieldName = 'valor_pis_servico'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_pis_st: TFMTBCDField
      FieldName = 'valor_pis_st'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 3
    end
    object cdsNotaFiscalvalor_retido_pis: TFMTBCDField
      FieldName = 'valor_retido_pis'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_cofins: TFMTBCDField
      FieldName = 'valor_cofins'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_cofins_servico: TFMTBCDField
      FieldName = 'valor_cofins_servico'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_cofins_st: TFMTBCDField
      FieldName = 'valor_cofins_st'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 3
    end
    object cdsNotaFiscalvalor_retido_cofins: TFMTBCDField
      FieldName = 'valor_retido_cofins'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_bc_iss: TFMTBCDField
      FieldName = 'valor_bc_iss'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_total_iss: TFMTBCDField
      FieldName = 'valor_total_iss'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalvalor_total_tributos: TFMTBCDField
      FieldName = 'valor_total_tributos'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalvalor_total_nota: TFMTBCDField
      FieldName = 'valor_total_nota'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalind_inscricao_estadual_dest: TIntegerField
      FieldName = 'ind_inscricao_estadual_dest'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_cnpjcpf: TStringField
      FieldName = 'destinatario_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscaldestinatario_razaosocial: TStringField
      FieldName = 'destinatario_razaosocial'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaldestinatario_tipopessoa: TStringField
      FieldName = 'destinatario_tipopessoa'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscaldestinatario_logradouro: TStringField
      FieldName = 'destinatario_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsNotaFiscaldestinatario_end_numero: TIntegerField
      FieldName = 'destinatario_end_numero'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_end_complemento: TStringField
      FieldName = 'destinatario_end_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscaldestinatario_end_bairro: TStringField
      FieldName = 'destinatario_end_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaldestinatario_municipio_ibge: TIntegerField
      FieldName = 'destinatario_municipio_ibge'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_nome_municipio: TStringField
      FieldName = 'destinatario_nome_municipio'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaldestinatario_cep: TStringField
      FieldName = 'destinatario_cep'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      FixedChar = True
      Size = 8
    end
    object cdsNotaFiscaldestinatario_telefone: TStringField
      FieldName = 'destinatario_telefone'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) #####-####;0;_'
      Size = 14
    end
    object cdsNotaFiscaldestinatario_ie: TStringField
      FieldName = 'destinatario_ie'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscaldestinatario_isuf: TStringField
      FieldName = 'destinatario_isuf'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsNotaFiscaldestinatario_email: TStringField
      FieldName = 'destinatario_email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaldestinatario_entrega_cnpjcpf: TStringField
      FieldName = 'destinatario_entrega_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscaldestinatario_entrega_logradouro: TStringField
      FieldName = 'destinatario_entrega_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsNotaFiscaldestinatario_entrega_numero: TIntegerField
      FieldName = 'destinatario_entrega_numero'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_entrega_bairro: TStringField
      FieldName = 'destinatario_entrega_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemitente_razao: TStringField
      FieldName = 'emitente_razao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemitente_fantasia: TStringField
      FieldName = 'emitente_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemitente_tipo_pessoa: TStringField
      FieldName = 'emitente_tipo_pessoa'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalemitente_cnpj: TStringField
      FieldName = 'emitente_cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalemitente_inscricao_suframa: TStringField
      FieldName = 'emitente_inscricao_suframa'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsNotaFiscalemitente_ie: TStringField
      FieldName = 'emitente_ie'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalemintente_iest: TStringField
      FieldName = 'emintente_iest'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalemitente_im: TStringField
      FieldName = 'emitente_im'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscalemitente_cnae: TStringField
      FieldName = 'emitente_cnae'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cdsNotaFiscalemitente_municipio_ibge: TIntegerField
      FieldName = 'emitente_municipio_ibge'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemitente_nome_municipio: TStringField
      FieldName = 'emitente_nome_municipio'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemintente_end_bairro: TStringField
      FieldName = 'emintente_end_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemitente_cep: TStringField
      FieldName = 'emitente_cep'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      FixedChar = True
      Size = 8
    end
    object cdsNotaFiscalemitente_end_logradouro: TStringField
      FieldName = 'emitente_end_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsNotaFiscalemitente_end_numero: TIntegerField
      FieldName = 'emitente_end_numero'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemitente_end_complemento: TStringField
      FieldName = 'emitente_end_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscalemitente_telefone: TStringField
      FieldName = 'emitente_telefone'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) #####-####;0;_'
      Size = 14
    end
    object cdsNotaFiscalemitente_retirada_cnpjcpf: TStringField
      FieldName = 'emitente_retirada_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalemitente_retirada_municipio: TIntegerField
      FieldName = 'emitente_retirada_municipio'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemitente_retirada_bairro: TStringField
      FieldName = 'emitente_retirada_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemitente_retirada_logradouro: TStringField
      FieldName = 'emitente_retirada_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsNotaFiscalemitente_retirada_numero: TIntegerField
      FieldName = 'emitente_retirada_numero'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemitente_retirada_complemento: TStringField
      FieldName = 'emitente_retirada_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscalid_transportadora: TIntegerField
      FieldName = 'id_transportadora'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object cdsNotaFiscaltransporte_cnpjcpf: TStringField
      FieldName = 'transporte_cnpjcpf'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscaltransporte_razao: TStringField
      FieldName = 'transporte_razao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaltransporte_ie: TStringField
      FieldName = 'transporte_ie'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscaltransporte_endereco: TStringField
      FieldName = 'transporte_endereco'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaltransporte_nome_municipio: TStringField
      FieldName = 'transporte_nome_municipio'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaltransporte_veiculo_num_placa: TStringField
      Alignment = taRightJustify
      FieldName = 'transporte_veiculo_num_placa'
      ProviderFlags = [pfInUpdate]
      EditMask = 'LLL-9999;0;_'
      Size = 8
    end
    object cdsNotaFiscaltransporte_veiculo_rntc: TStringField
      FieldName = 'transporte_veiculo_rntc'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaltransporte_reboque_num_placa: TStringField
      Alignment = taRightJustify
      FieldName = 'transporte_reboque_num_placa'
      ProviderFlags = [pfInUpdate]
      EditMask = 'LLL-9999;0;_'
      Size = 8
    end
    object cdsNotaFiscaltransporte_reboque_rntc: TStringField
      FieldName = 'transporte_reboque_rntc'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalinformacoes_adicionais_fisco: TMemoField
      FieldName = 'informacoes_adicionais_fisco'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscalinformacoes_adicionais_contribu: TMemoField
      FieldName = 'informacoes_adicionais_contribu'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscallocal_retirada_diferente_emiten: TStringField
      FieldName = 'local_retirada_diferente_emiten'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscallocal_entrega_diferente_destina: TStringField
      FieldName = 'local_entrega_diferente_destina'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalnum_protocolo_cancelamento: TStringField
      FieldName = 'num_protocolo_cancelamento'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscaldata_cancelamento: TSQLTimeStampField
      FieldName = 'data_cancelamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaljustificativa_cancelamento: TStringField
      FieldName = 'justificativa_cancelamento'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsNotaFiscalcartao_correcao: TMemoField
      FieldName = 'cartao_correcao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscalid_usuario_enviou: TIntegerField
      FieldName = 'id_usuario_enviou'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnome_computador_digitada: TStringField
      FieldName = 'nome_computador_digitada'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscalnome_computador_enviou: TStringField
      FieldName = 'nome_computador_enviou'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscalindicador_consumidor_final: TIntegerField
      FieldName = 'indicador_consumidor_final'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalindicador_presenca_comprador: TIntegerField
      FieldName = 'indicador_presenca_comprador'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestino_operacao: TIntegerField
      FieldName = 'destino_operacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalxml_carta: TMemoField
      FieldName = 'xml_carta'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscalarquivo_xml: TMemoField
      FieldName = 'arquivo_xml'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscalid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_FMEMISSAO: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_FMEMISSAO'
      LookupDataSet = cdsListaFormaEmissao
      LookupKeyFields = 'FRM_CODIGO'
      LookupResultField = 'FRM_DESCRICAO'
      KeyFields = 'tipo_emis'
      Lookup = True
    end
    object cdsNotaFiscalNTF_NMNATUREZAOP: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_NMNATUREZAOP'
      LookupDataSet = cdsListaNaturezaOpr
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'natureza_operacao'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalNTF_FNEMISSAO: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_FNEMISSAO'
      LookupDataSet = cdsListaFinalidadeEmissao
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'finalidade'
      Lookup = True
    end
    object cdsNotaFiscalNTF_FMPAGA: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_FMPAGA'
      LookupDataSet = cdsListaPagamento
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'ind_pag'
      Size = 30
      Lookup = True
    end
    object cdsNotaFiscalDESTINO_OPE_DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESTINO_OPE_DESCRICAO'
      LookupDataSet = cdsListaDestinoOperacao
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'destino_operacao'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalTIPO_ATENDIMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO_ATENDIMENTO'
      LookupDataSet = cdsListaTipoAtendimento
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'indicador_presenca_comprador'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalCidadeDestinatario: TStringField
      FieldKind = fkLookup
      FieldName = 'CidadeDestinatario'
      LookupDataSet = cdsListaCidades
      LookupKeyFields = 'codigo_ibge'
      LookupResultField = 'nome'
      KeyFields = 'destinatario_municipio_ibge'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalRetiradaNomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'RetiradaNomeCidade'
      LookupDataSet = cdsRetiradaCidade
      LookupKeyFields = 'codigo_ibge'
      LookupResultField = 'nome'
      KeyFields = 'emitente_retirada_municipio'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalEntregaNomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'EntregaNomeCidade'
      LookupDataSet = cdsEntregaCidade
      LookupKeyFields = 'codigo_ibge'
      LookupResultField = 'nome'
      KeyFields = 'destinatario_entrega_munic_ibge'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalTransportadoraNomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraNomeCidade'
      LookupDataSet = cdsTransportadoraCidade
      LookupKeyFields = 'nome'
      LookupResultField = 'nome'
      KeyFields = 'transporte_nome_municipio'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalTIPO_CONTRIBUINTE: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO_CONTRIBUINTE'
      LookupDataSet = cdsTipoContribuinte
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'ind_inscricao_estadual_dest'
      Size = 40
      Lookup = True
    end
    object cdsNotaFiscaldestinatario_entrega_complement: TStringField
      FieldName = 'destinatario_entrega_complement'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscaldestinatario_entrega_munic_ibge: TIntegerField
      FieldName = 'destinatario_entrega_munic_ibge'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_entrega_nome_munic: TStringField
      FieldName = 'destinatario_entrega_nome_munic'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalemitente_retirada_nome_municipi: TStringField
      FieldName = 'emitente_retirada_nome_municipi'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscaltipo_emis: TIntegerField
      FieldName = 'tipo_emis'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalfinalidade: TIntegerField
      FieldName = 'finalidade'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalnatureza_operacao: TIntegerField
      FieldName = 'natureza_operacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldv_chave_acesso: TIntegerField
      FieldName = 'dv_chave_acesso'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_uf: TIntegerField
      FieldName = 'destinatario_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaldestinatario_entrega_uf: TIntegerField
      FieldName = 'destinatario_entrega_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemintente_crt: TIntegerField
      FieldName = 'emintente_crt'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemitente_uf: TIntegerField
      FieldName = 'emitente_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalemitente_retirada_uf: TIntegerField
      FieldName = 'emitente_retirada_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaltransporte_uf: TIntegerField
      FieldName = 'transporte_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaltransporte_veiculo_uf: TIntegerField
      FieldName = 'transporte_veiculo_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscaltransporte_reboque_uf: TIntegerField
      FieldName = 'transporte_reboque_uf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalUF_EMITENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_EMITENTE'
      LookupDataSet = cdsListaUfEmitente
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'emitente_uf'
      Size = 2
      Lookup = True
    end
    object cdsNotaFiscalUF_DESTINATARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_DESTINATARIO'
      LookupDataSet = cdsListaUFDestinatario
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'destinatario_uf'
      Size = 2
      Lookup = True
    end
    object cdsNotaFiscalUF_EMITENTE_RET: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_EMITENTE_RET'
      LookupDataSet = cdsListaUFEmitenteRet
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'emitente_retirada_uf'
      Size = 2
      Lookup = True
    end
    object cdsNotaFiscalUF_DESTINATARIO_ENTREGA: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_DESTINATARIO_ENTREGA'
      LookupDataSet = cdsListaUFDestinatarioEnt
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'destinatario_entrega_uf'
      Size = 2
      Lookup = True
    end
    object cdsNotaFiscalUF_TRANSPORTE: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_TRANSPORTE'
      LookupDataSet = cdsListaUFTransporte
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'transporte_uf'
      Size = 2
      Lookup = True
    end
    object cdsNotaFiscalUF_REBOQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_REBOQUE'
      LookupDataSet = cdsListaUF_Reboque
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'transporte_reboque_uf'
      Size = 2
      Lookup = True
    end
    object cdsNotaFiscalUF_VEICULO: TStringField
      FieldKind = fkLookup
      FieldName = 'UF_VEICULO'
      LookupDataSet = cdsListaUFVeiculo
      LookupKeyFields = 'EUF_CODIGO'
      LookupResultField = 'EUF_SIGLA'
      KeyFields = 'transporte_veiculo_uf'
      Size = 2
      Lookup = True
    end
  end
  object cdsNotaFiscalItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid_nota_fiscal'
        ParamType = ptInput
      end>
    ProviderName = 'dspNotaFiscalItens'
    Left = 224
    Top = 152
    object cdsNotaFiscalItensid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotaFiscalItensitem: TIntegerField
      FieldName = 'item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotaFiscalItensid_produto: TIntegerField
      FieldName = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotaFiscalItensdescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object cdsNotaFiscalItensid_unidade: TStringField
      FieldName = 'id_unidade'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalItensquantidade: TFMTBCDField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensnum_lote: TStringField
      FieldName = 'num_lote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensdescricao_complemento: TStringField
      FieldName = 'descricao_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsNotaFiscalItensdata_vencimento_lote: TDateField
      FieldName = 'data_vencimento_lote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensdata_fabricacao_lote: TDateField
      FieldName = 'data_fabricacao_lote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItenspercentual_tributo: TFMTBCDField
      FieldName = 'percentual_tributo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensorigem_produto: TIntegerField
      FieldName = 'origem_produto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensvalor_unitario: TFMTBCDField
      FieldName = 'valor_unitario'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensvalor_compra: TFMTBCDField
      FieldName = 'valor_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensvalor_custo: TFMTBCDField
      FieldName = 'valor_custo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItenspercentual_desconto: TFMTBCDField
      FieldName = 'percentual_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 2
    end
    object cdsNotaFiscalItensvalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItenspercentual_acrescimo: TFMTBCDField
      FieldName = 'percentual_acrescimo'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 2
    end
    object cdsNotaFiscalItensvalor_acrescimo: TFMTBCDField
      FieldName = 'valor_acrescimo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItensvalor_frete: TFMTBCDField
      FieldName = 'valor_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItensvalor_seguro: TFMTBCDField
      FieldName = 'valor_seguro'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItensvalor_outrasdespesas: TFMTBCDField
      FieldName = 'valor_outrasdespesas'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object cdsNotaFiscalItensaliquota_icms: TFMTBCDField
      FieldName = 'aliquota_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object cdsNotaFiscalItensvalor_icms: TFMTBCDField
      FieldName = 'valor_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensvalor_bc_icms: TFMTBCDField
      FieldName = 'valor_bc_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensaliquota_icms_st: TFMTBCDField
      FieldName = 'aliquota_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensvalor_icms_st: TFMTBCDField
      FieldName = 'valor_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItensvalor_bc_icms_st: TFMTBCDField
      FieldName = 'valor_bc_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItenspercentual_reducao_bc_icms_st: TFMTBCDField
      FieldName = 'percentual_reducao_bc_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItenspercentual_margem_lucro_icms_st: TFMTBCDField
      FieldName = 'percentual_margem_lucro_icms_st'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItenspercentual_reducao_icms: TFMTBCDField
      FieldName = 'percentual_reducao_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object cdsNotaFiscalItensaliquota_ipi: TFMTBCDField
      FieldName = 'aliquota_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 2
    end
    object cdsNotaFiscalItensvalor_ipi: TFMTBCDField
      FieldName = 'valor_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensvalor_bc_ipi: TFMTBCDField
      FieldName = 'valor_bc_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNotaFiscalItenspercentual_ipi_devolvido: TFMTBCDField
      FieldName = 'percentual_ipi_devolvido'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object cdsNotaFiscalItensvalor_ipi_devolvido: TFMTBCDField
      FieldName = 'valor_ipi_devolvido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItenscst_ipi: TIntegerField
      FieldName = 'cst_ipi'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensextipi: TStringField
      FieldName = 'extipi'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsNotaFiscalItensaliquota_pis: TFMTBCDField
      FieldName = 'aliquota_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object cdsNotaFiscalItensvalor_pis: TFMTBCDField
      FieldName = 'valor_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsNotaFiscalItensquantidade_bc_pis: TFMTBCDField
      FieldName = 'quantidade_bc_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsNotaFiscalItensvalor_bc_pis: TFMTBCDField
      FieldName = 'valor_bc_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsNotaFiscalItenscst_pis: TIntegerField
      FieldName = 'cst_pis'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensaliquota_cofins: TFMTBCDField
      FieldName = 'aliquota_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object cdsNotaFiscalItensvalor_cofins: TFMTBCDField
      FieldName = 'valor_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensquantidade_bc_cofins: TFMTBCDField
      FieldName = 'quantidade_bc_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsNotaFiscalItensvalor_bc_cofins: TFMTBCDField
      FieldName = 'valor_bc_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsNotaFiscalItenscst_cofins: TIntegerField
      FieldName = 'cst_cofins'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensean: TStringField
      FieldName = 'ean'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalItensindtot: TBooleanField
      FieldName = 'indtot'
    end
    object cdsNotaFiscalItensid_ncm: TStringField
      FieldName = 'id_ncm'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsNotaFiscalItensid_cfop: TIntegerField
      FieldName = 'id_cfop'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensceantrib: TStringField
      FieldName = 'ceantrib'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalItenscst_icms: TIntegerField
      FieldName = 'cst_icms'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensmod_bc: TIntegerField
      FieldName = 'mod_bc'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalItensmod_bc_st: TIntegerField
      FieldName = 'mod_bc_st'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dstListas: TSQLDataSet
    CommandText = 
      'select id, nome, uf, codigo_ibge from cidades where (uf = :pUF) ' +
      'order by nome;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 40
    Top = 216
  end
  object dspLista: TDataSetProvider
    DataSet = dstListas
    Options = [poAllowCommandText]
    Left = 104
    Top = 216
  end
  object cdsListaFinalidadeEmissao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 120
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020019000000}
    object cdsListaFinalidadeEmissaoid: TIntegerField
      FieldName = 'id'
      DisplayFormat = '00'
    end
    object cdsListaFinalidadeEmissaodescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
  end
  object cdsListaFormaEmissao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 72
    Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F000A46524D
      5F434F4449474F04000100000000000D46524D5F44455343524943414F010049
      00000001000557494454480200020014000000}
    object cdsListaFormaEmissaoFRM_CODIGO: TIntegerField
      FieldName = 'FRM_CODIGO'
    end
    object cdsListaFormaEmissaoFRM_DESCRICAO: TStringField
      FieldName = 'FRM_DESCRICAO'
    end
  end
  object cdsListaPagamento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 168
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020014000000}
    object cdsListaPagamentoid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaPagamentodescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object cdsListaNaturezaOpr: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select id, descricao from natureza_operacao order by id;'
    Params = <>
    Left = 336
    Top = 216
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      0002003C000000}
    object cdsListaNaturezaOprid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaNaturezaOprdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object cdsListaDestinoOperacao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 88
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      0002001E000000}
    object cdsListaDestinoOperacaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaDestinoOperacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object cdsListaTipoAtendimento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 144
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      0002003C000000}
    object cdsListaTipoAtendimentoid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaTipoAtendimentodescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object cdsListaCidades: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'select id, nome, uf, codigo_ibge from cidades where (uf = :pUF) ' +
      'order by nome;'
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    Left = 48
    Top = 328
    object cdsListaCidadesid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaCidadesnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object cdsListaCidadesuf: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object cdsListaCidadescodigo_ibge: TIntegerField
      FieldName = 'codigo_ibge'
    end
  end
  object cdsListaNT_Ref: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsListaNT_RefCalcFields
    Left = 152
    Top = 272
    Data = {
      250100009619E0BD01000000180000000A00000000000300000025010A434452
      5F434F4449474F0400010000000000084344525F4954454D0400010000000000
      0D4344525F5449504F5F4E4F54410400010000000000094344525F4348415645
      0100490000000100055749445448020002002C00094344525F53455249450100
      4900000001000557494454480200020006000A4344525F4E554D45524F010049
      0000000100055749445448020002000A000A4344525F4D4F44454C4F01004900
      00000100055749445448020002000300064344525F5546010049000000010005
      57494454480200020002000A4344525F4D4553414E4F01004900000001000557
      49445448020002000600084344525F434E504A01004900000001000557494454
      48020002000E000000}
    object cdsListaNT_RefCDR_CODIGO: TIntegerField
      FieldName = 'CDR_CODIGO'
    end
    object cdsListaNT_RefCDR_ITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'CDR_ITEM'
      DisplayFormat = '00'
    end
    object cdsListaNT_RefCDR_TIPO_NOTA: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'CDR_TIPO_NOTA'
    end
    object cdsListaNT_RefCDR_CHAVE: TStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'CDR_CHAVE'
      EditMask = '9999 9999 9999 9999 9999 9999 9999 9999 9999 9999 9999;0;_'
      Size = 44
    end
    object cdsListaNT_RefCDR_SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'CDR_SERIE'
      EditMask = '###;0;_'
      Size = 6
    end
    object cdsListaNT_RefCDR_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CDR_NUMERO'
      Size = 10
    end
    object cdsListaNT_RefCDR_MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'CDR_MODELO'
      Size = 3
    end
    object cdsListaNT_RefCDR_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CDR_UF'
      Size = 2
    end
    object cdsListaNT_RefCDR_MESANO: TStringField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CDR_MESANO'
      EditMask = '##/##;0;_'
      Size = 6
    end
    object cdsListaNT_RefCDR_CNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CDR_CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object cdsListaNT_RefCDR_DESCRICAO_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'CDR_DESCRICAO_TIPO'
      Size = 30
    end
  end
  object cdsListaCstICMS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 24
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020078000000}
    object cdsListaCstICMSid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaCstICMSdescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
  end
  object cdsListaCstIPI: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 80
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020050000000}
    object cdsListaCstIPIid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaCstIPIdescricao: TStringField
      FieldName = 'descricao'
      Size = 80
    end
  end
  object cdsListaPIS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 136
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020096000000}
    object cdsListaPISid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaPISdescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object cdsListaCofins: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 192
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020096000000}
    object cdsListaCofinsid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaCofinsdescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object cdsListaCstSimples: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 248
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020078000000}
    object cdsListaCstSimplesid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaCstSimplesdescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
  end
  object cdsItemsNotaFiscal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsItemsNotaFiscalCalcFields
    Left = 416
    Top = 16
    Data = {
      A50600009619E0BD010000001800000040000000000003000000A5060A434453
      5F4E524954454D04000100000000000A4344535F434450524F44040001000000
      00000A4344535F434F4445414E0100490000000100055749445448020002000E
      000D4344535F44455343524943414F0100490000000100055749445448020002
      007800074344535F4E434D01004900000001000557494454480200020008000A
      4344535F45585449504901004900000001000557494454480200020003000843
      44535F43464F5001004900000001000557494454480200020004000A4344535F
      554E44434F4D01004900000001000557494454480200020006000B4344535F51
      544445434F4D08000400000000000E4344535F564C554E49544152494F080004
      0000000000084344535F4754494E010049000000010005574944544802000200
      0E000A4344535F554E5452494201004900000001000557494454480200020006
      000C4344535F515444455452494208000400000000000C4344535F564C554E54
      52494208000400000000000B4344535F564C465245544508000400000000000C
      4344535F564C53454755524F08000400000000000E4344535F564C444553434F
      4E544F08000400000000000F4344535F564C414352455343494D4F0800040000
      000000144344535F564C4F555452415344455350455341530800040000000000
      0A4344535F494E44544F5404000100000000000A4344535F424349434D530800
      0400000000000A4344535F564C49434D530800040000000000094344535F564C
      49504908000400000000000A4344535F42435F49504908000400000000000C43
      44535F414C495149434D5308000400000000000B4344535F414C495149504908
      000400000000000A4344535F50454445534308000400000000000A4344535F50
      45414352450800040000000000174344535F49444D4F44415F43414C435F4943
      4D535F53540400010000000000164344535F4D4F44414C49444144455F42435F
      49434D5304000100000000001B4344535F504552435F5245445543414F5F4243
      5F49434D535F535408000400000000001D4344535F504552435F4D415247454D
      5F4C5543524F5F49434D535F53540800040000000000144344535F414C495155
      4F54415F49434D535F535408000400000000000D4344535F424349434D535F53
      5408000400000000000D4344535F564C49434D535F535408000400000000000D
      4344535F50455245445543414F08000400000000000A4344535F42435F504953
      08000400000000000C4344535F414C49515F50495308000400000000000D4344
      535F56414C4F525F50495308000400000000000D4344535F42435F434F46494E
      5308000400000000000F4344535F414C49515F434F46494E5308000400000000
      00104344535F56414C4F525F434F46494E530800040000000000184344535F54
      4158415F5245445543414F5F42435F49434D5308000400000000001C4344535F
      414C4951554F54415F4352454449544F5F49434D535F534E0800040000000000
      194344535F56414C4F525F4352454449544F5F49434D535F534E080004000000
      0000124344535F4558495354455F50524F4455544F0100490000000100055749
      4454480200020001000A4344535F4E524C4F5445010049000000010005574944
      5448020002001400104344535F44544641425249434143414F04000600000000
      00104344535F445456454E43494D454E544F0400060000000000184344535F50
      5245434F5F4D41585F434F4E53554D49444F520800040000000000104344535F
      504552435F5452494255544F0800040000000000154344535F4D4F56494D454E
      54415F4553544F51554501004900000001000557494454480200020001001243
      44535F4F524947454D5F50524F4455544F010049000000010005574944544802
      00020001001D4344535F504552435F4D45524341444F5249415F4445564F4C56
      4944410800040000000000174344535F56414C4F525F4950495F4445564F4C56
      49444F0800040000000000114344535F504552435F455354414455414C080004
      0000000000124344535F504552435F4D554E49434950414C0800040000000000
      0B4344535F4950495F43535404000100000000000B4344535F4353545F504953
      04000100000000000E4344535F4353545F434F46494E53040001000000000009
      4344535F43534F534E0400010000000000074344535F43535404000100000000
      00194344535F56414C4F525F49434D535F4445534F4E455241444F0800040000
      0000001B4344535F4D4F5449564F5F4445534F4E45524143414F5F49434D5304
      000100000000000000}
    object cdsItemsNotaFiscalCDS_NRITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'CDS_NRITEM'
      DisplayFormat = '000'
    end
    object cdsItemsNotaFiscalCDS_CDPROD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDS_CDPROD'
      DisplayFormat = '00000000'
    end
    object cdsItemsNotaFiscalCDS_CODEAN: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'CDS_CODEAN'
      Size = 14
    end
    object cdsItemsNotaFiscalCDS_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CDS_DESCRICAO'
      Size = 120
    end
    object cdsItemsNotaFiscalCDS_NCM: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'CDS_NCM'
      Size = 8
    end
    object cdsItemsNotaFiscalCDS_EXTIPI: TStringField
      FieldName = 'CDS_EXTIPI'
      Size = 3
    end
    object cdsItemsNotaFiscalCDS_CFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CDS_CFOP'
      Size = 4
    end
    object cdsItemsNotaFiscalCDS_UNDCOM: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'CDS_UNDCOM'
      Size = 6
    end
    object cdsItemsNotaFiscalCDS_QTDECOM: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CDS_QTDECOM'
      DisplayFormat = '###,##0.#000'
      EditFormat = '###,##0.#000'
    end
    object cdsItemsNotaFiscalCDS_VLUNITARIO: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'CDS_VLUNITARIO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_SUBTOTAL: TFloatField
      DisplayLabel = 'Subtotal'
      FieldKind = fkCalculated
      FieldName = 'CDS_SUBTOTAL'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Calculated = True
    end
    object cdsItemsNotaFiscalCDS_GTIN: TStringField
      FieldName = 'CDS_GTIN'
      Size = 14
    end
    object cdsItemsNotaFiscalCDS_UNTRIB: TStringField
      FieldName = 'CDS_UNTRIB'
      Size = 6
    end
    object cdsItemsNotaFiscalCDS_QTDETRIB: TFloatField
      FieldName = 'CDS_QTDETRIB'
      DisplayFormat = '###,##0.#00'
      EditFormat = '###,##0.#00'
    end
    object cdsItemsNotaFiscalCDS_VLUNTRIB: TFloatField
      FieldName = 'CDS_VLUNTRIB'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLFRETE: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'CDS_VLFRETE'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLSEGURO: TFloatField
      FieldName = 'CDS_VLSEGURO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLDESCONTO: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'CDS_VLDESCONTO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLACRESCIMO: TFloatField
      DisplayLabel = 'Valor Acrescimo'
      FieldName = 'CDS_VLACRESCIMO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLOUTRASDESPESAS: TFloatField
      DisplayLabel = 'Valor Outras Despesas'
      FieldName = 'CDS_VLOUTRASDESPESAS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_INDTOT: TIntegerField
      FieldName = 'CDS_INDTOT'
    end
    object cdsItemsNotaFiscalCDS_BCICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'CDS_BCICMS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLICMS: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'CDS_VLICMS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'CDS_VLIPI'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_BC_IPI: TFloatField
      DisplayLabel = 'Base IPI'
      FieldName = 'CDS_BC_IPI'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQICMS: TFloatField
      DisplayLabel = 'Al'#237'quota ICMS'
      FieldName = 'CDS_ALIQICMS'
      DisplayFormat = '##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQIPI: TFloatField
      DisplayLabel = 'Al'#237'quota IPI'
      FieldName = 'CDS_ALIQIPI'
      DisplayFormat = '##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_PEDESC: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'CDS_PEDESC'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object cdsItemsNotaFiscalCDS_PEACRE: TFloatField
      DisplayLabel = '% Acrescimo'
      FieldName = 'CDS_PEACRE'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object cdsItemsNotaFiscalCDS_IDMODA_CALC_ICMS_ST: TIntegerField
      FieldName = 'CDS_IDMODA_CALC_ICMS_ST'
    end
    object cdsItemsNotaFiscalCDS_MODALIDADE_BC_ICMS: TIntegerField
      FieldName = 'CDS_MODALIDADE_BC_ICMS'
    end
    object cdsItemsNotaFiscalCDS_PERC_REDUCAO_BC_ICMS_ST: TFloatField
      FieldName = 'CDS_PERC_REDUCAO_BC_ICMS_ST'
      DisplayFormat = '#0.#0'
      EditFormat = '#0.#0'
    end
    object cdsItemsNotaFiscalCDS_PERC_MARGEM_LUCRO_ICMS_ST: TFloatField
      FieldName = 'CDS_PERC_MARGEM_LUCRO_ICMS_ST'
      DisplayFormat = '#0.#0'
      EditFormat = '#0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQUOTA_ICMS_ST: TFloatField
      DisplayLabel = 'Al'#237'quota ICMS ST'
      FieldName = 'CDS_ALIQUOTA_ICMS_ST'
      DisplayFormat = '#0.#0'
      EditFormat = '#0.#0'
    end
    object cdsItemsNotaFiscalCDS_BCICMS_ST: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'CDS_BCICMS_ST'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLICMS_ST: TFloatField
      DisplayLabel = 'Valor ICMS ST'
      FieldName = 'CDS_VLICMS_ST'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_PEREDUCAO: TFloatField
      DisplayLabel = '% Redu'#231#227'o Base'
      FieldName = 'CDS_PEREDUCAO'
      DisplayFormat = '#0.#00'
      EditFormat = '#0.#00'
    end
    object cdsItemsNotaFiscalCDS_BC_PIS: TFloatField
      DisplayLabel = 'Base PIS'
      FieldName = 'CDS_BC_PIS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQ_PIS: TFloatField
      DisplayLabel = 'Al'#237'quota PIS'
      FieldName = 'CDS_ALIQ_PIS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VALOR_PIS: TFloatField
      DisplayLabel = 'Valor PIS'
      FieldName = 'CDS_VALOR_PIS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_BC_COFINS: TFloatField
      DisplayLabel = 'Base COFINS'
      FieldName = 'CDS_BC_COFINS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQ_COFINS: TFloatField
      DisplayLabel = 'Al'#237'quota COFINS'
      FieldName = 'CDS_ALIQ_COFINS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VALOR_COFINS: TFloatField
      DisplayLabel = 'Valor COFINS'
      FieldName = 'CDS_VALOR_COFINS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_TAXA_REDUCAO_BC_ICMS: TFloatField
      FieldName = 'CDS_TAXA_REDUCAO_BC_ICMS'
    end
    object cdsItemsNotaFiscalCDS_ALIQUOTA_CREDITO_ICMS_SN: TFloatField
      FieldName = 'CDS_ALIQUOTA_CREDITO_ICMS_SN'
    end
    object cdsItemsNotaFiscalCDS_VALOR_CREDITO_ICMS_SN: TFloatField
      FieldName = 'CDS_VALOR_CREDITO_ICMS_SN'
    end
    object cdsItemsNotaFiscalCDS_EXISTE_PRODUTO: TStringField
      FieldName = 'CDS_EXISTE_PRODUTO'
      Size = 1
    end
    object cdsItemsNotaFiscalCDS_NRLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'CDS_NRLOTE'
    end
    object cdsItemsNotaFiscalCDS_DTFABRICACAO: TDateField
      DisplayLabel = 'Dt.Fabrica'#231#227'o'
      FieldName = 'CDS_DTFABRICACAO'
    end
    object cdsItemsNotaFiscalCDS_DTVENCIMENTO: TDateField
      DisplayLabel = 'Dt.Vencimento'
      FieldName = 'CDS_DTVENCIMENTO'
    end
    object cdsItemsNotaFiscalCDS_PRECO_MAX_CONSUMIDOR: TFloatField
      FieldName = 'CDS_PRECO_MAX_CONSUMIDOR'
    end
    object cdsItemsNotaFiscalCDS_PERC_TRIBUTO: TFloatField
      DisplayLabel = '% Tributo'
      FieldName = 'CDS_PERC_TRIBUTO'
    end
    object cdsItemsNotaFiscalCDS_VTOTTRIB: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CDS_VTOTTRIB'
    end
    object cdsItemsNotaFiscalCDS_MOVIMENTA_ESTOQUE: TStringField
      FieldName = 'CDS_MOVIMENTA_ESTOQUE'
      Size = 1
    end
    object cdsItemsNotaFiscalCDS_ORIGEM_PRODUTO: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'CDS_ORIGEM_PRODUTO'
      Size = 1
    end
    object cdsItemsNotaFiscalCDS_PERC_MERCADORIA_DEVOLVIDA: TFloatField
      DisplayLabel = '% da Mercadoria Devolvida *'
      FieldName = 'CDS_PERC_MERCADORIA_DEVOLVIDA'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VALOR_IPI_DEVOLVIDO: TFloatField
      DisplayLabel = 'Valor do IPI Devolvido *'
      FieldName = 'CDS_VALOR_IPI_DEVOLVIDO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_PERC_ESTADUAL: TFloatField
      DisplayLabel = '% Tributo Estadual'
      FieldName = 'CDS_PERC_ESTADUAL'
    end
    object cdsItemsNotaFiscalCDS_PERC_MUNICIPAL: TFloatField
      DisplayLabel = '% Tributo Municipal'
      FieldName = 'CDS_PERC_MUNICIPAL'
    end
    object cdsItemsNotaFiscalCDS_VLTRIB_ESTADUAL: TFloatField
      DisplayLabel = 'R$ Tributo Estadual'
      FieldKind = fkInternalCalc
      FieldName = 'CDS_VLTRIB_ESTADUAL'
    end
    object cdsItemsNotaFiscalCDS_VLTRIB_MUNICIPAL: TFloatField
      DisplayLabel = 'R$ Tributo Municipal'
      FieldKind = fkInternalCalc
      FieldName = 'CDS_VLTRIB_MUNICIPAL'
    end
    object cdsItemsNotaFiscalCDS_IPI_CST: TIntegerField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'CDS_IPI_CST'
    end
    object cdsItemsNotaFiscalCDS_CST_PIS: TIntegerField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'CDS_CST_PIS'
    end
    object cdsItemsNotaFiscalCDS_CST_COFINS: TIntegerField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'CDS_CST_COFINS'
    end
    object cdsItemsNotaFiscalCDS_CSOSN: TIntegerField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'CDS_CSOSN'
    end
    object cdsItemsNotaFiscalCDS_CST: TIntegerField
      FieldName = 'CDS_CST'
    end
    object cdsItemsNotaFiscalCST_ICMS: TStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldKind = fkLookup
      FieldName = 'CST_ICMS'
      LookupDataSet = cdsListaCstICMS
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_CST'
      Size = 90
      Lookup = True
    end
    object cdsItemsNotaFiscalCST_IPI: TStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldKind = fkLookup
      FieldName = 'CST_IPI'
      LookupDataSet = cdsListaCstIPI
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_IPI_CST'
      Size = 80
      Lookup = True
    end
    object cdsItemsNotaFiscalCST_PIS: TStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldKind = fkLookup
      FieldName = 'CST_PIS'
      LookupDataSet = cdsListaPIS
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_CST_PIS'
      Size = 150
      Lookup = True
    end
    object cdsItemsNotaFiscalCST_COFINS: TStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldKind = fkLookup
      FieldName = 'CST_COFINS'
      LookupDataSet = cdsListaCofins
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_CST_COFINS'
      Size = 150
      Lookup = True
    end
    object cdsItemsNotaFiscalCST_SIMPLES: TStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldKind = fkLookup
      FieldName = 'CST_SIMPLES'
      LookupDataSet = cdsListaCstSimples
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_CSOSN'
      Size = 120
      Lookup = True
    end
    object cdsItemsNotaFiscalCDS_DESC_ORIGEM_PRODUTO: TStringField
      DisplayLabel = 'Origem'
      FieldKind = fkLookup
      FieldName = 'CDS_DESC_ORIGEM_PRODUTO'
      LookupDataSet = cdsListaOrigemProduto
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_ORIGEM_PRODUTO'
      Size = 150
      Lookup = True
    end
    object cdsItemsNotaFiscalCDS_BC_IPI_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CDS_BC_IPI_CALC'
    end
    object cdsItemsNotaFiscalCDS_BC_PIS_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CDS_BC_PIS_CALC'
    end
    object cdsItemsNotaFiscalCDS_BC_COFINS_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CDS_BC_COFINS_CALC'
    end
    object cdsItemsNotaFiscalCDS_VALOR_ICMS_DESONERADO: TFloatField
      FieldName = 'CDS_VALOR_ICMS_DESONERADO'
    end
    object cdsItemsNotaFiscalCDS_MOTIVO_DESONERACAO_ICMS: TIntegerField
      FieldName = 'CDS_MOTIVO_DESONERACAO_ICMS'
    end
    object cdsItemsNotaFiscalCDS_DESC_MOT_DESONER_ICMS: TStringField
      FieldKind = fkLookup
      FieldName = 'CDS_DESC_MOT_DESONER_ICMS'
      LookupDataSet = cdsMotivoDesoneracao
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'CDS_MOTIVO_DESONERACAO_ICMS'
      Size = 120
      Lookup = True
    end
    object cdsItemsNotaFiscalCDS_MOD_BC_ICMS_DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'CDS_MOD_BC_ICMS_DESCRICAO'
      LookupDataSet = cdsListaModbcICMS
      LookupKeyFields = 'MBC_CODIGO'
      LookupResultField = 'MBC_DESCRICAO'
      KeyFields = 'CDS_MODALIDADE_BC_ICMS'
      Size = 40
      Lookup = True
    end
    object cdsItemsNotaFiscalCDS_MOD_BC_ICMS_ST_DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'CDS_MOD_BC_ICMS_ST_DESCRICAO'
      LookupDataSet = cdsListaModbcICMS_ST
      LookupKeyFields = 'MBC_CODIGO'
      LookupResultField = 'MBC_DESCRICAO'
      KeyFields = 'CDS_IDMODA_CALC_ICMS_ST'
      Size = 40
      Lookup = True
    end
  end
  object cdsListaOrigemProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 296
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020096000000}
    object cdsListaOrigemProdutoid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaOrigemProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object cdsVendaItensNFE: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select M.id, m.id_ecf, M.coo, M.id_empresa, M.data_venda, M.situ' +
      'acao, M.numero_nfe, M.id_cliente, M.valor_mercadorias, m.valor_d' +
      'esconto, m.valor_acrescimo, mp.item, mp.id_produto, P.descricao,' +
      ' P.id_ncm, mp.id_unidade, mp.quantidade, mp.valor_unitario, mp.v' +
      'alor_desconto as valor_desconto_item, mp.perc_desconto, mp.valor' +
      '_acrescimo as valor_acrescimo_item, MP.lote, MP.data_vencimento_' +
      'lote, Sum((mp.quantidade * mp.valor_unitario)- mp.valor_desconto' +
      ') as SUBTOTAL from VENDAS M inner join vendas_itens MP on m.id =' +
      ' mp.id_venda inner join PRODUTOS P on mp.id_produto = p.id Where' +
      ' (m.id = :pVENDA) GROUP BY M.id, m.id_ecf, M.coo, M.id_empresa, ' +
      'M.data_venda, M.situacao, M.numero_nfe, M.id_cliente, M.valor_me' +
      'rcadorias, m.valor_desconto, m.valor_acrescimo, mp.item, mp.id_p' +
      'roduto, P.descricao, P.id_ncm, mp.id_unidade, mp.quantidade, mp.' +
      'valor_unitario, mp.valor_desconto, mp.perc_desconto, mp.valor_ac' +
      'rescimo, MP.lote, MP.data_vencimento_lote ORDER BY mp.item'
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    OnCalcFields = cdsVendaItensNFECalcFields
    Left = 272
    Top = 274
    object cdsVendaItensNFEid: TIntegerField
      FieldName = 'id'
    end
    object cdsVendaItensNFEcoo: TIntegerField
      FieldName = 'coo'
    end
    object cdsVendaItensNFEid_ecf: TIntegerField
      FieldName = 'id_ecf'
    end
    object cdsVendaItensNFEid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object cdsVendaItensNFEdata_venda: TSQLTimeStampField
      FieldName = 'data_venda'
    end
    object cdsVendaItensNFEsituacao: TStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 1
    end
    object cdsVendaItensNFEnumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
    end
    object cdsVendaItensNFEid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object cdsVendaItensNFEvalor_mercadorias: TFMTBCDField
      FieldName = 'valor_mercadorias'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsVendaItensNFEvalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsVendaItensNFEvalor_acrescimo: TFMTBCDField
      FieldName = 'valor_acrescimo'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsVendaItensNFEitem: TIntegerField
      FieldName = 'item'
      DisplayFormat = '000'
    end
    object cdsVendaItensNFEid_produto: TIntegerField
      FieldName = 'id_produto'
      DisplayFormat = '000000000'
    end
    object cdsVendaItensNFEdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsVendaItensNFEid_ncm: TStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object cdsVendaItensNFEid_unidade: TStringField
      FieldName = 'id_unidade'
      Size = 2
    end
    object cdsVendaItensNFEquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Precision = 15
      Size = 8
    end
    object cdsVendaItensNFEvalor_unitario: TFMTBCDField
      FieldName = 'valor_unitario'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 8
    end
    object cdsVendaItensNFEvalor_desconto_item: TFMTBCDField
      FieldName = 'valor_desconto_item'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsVendaItensNFEperc_desconto: TFMTBCDField
      FieldName = 'perc_desconto'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 6
      Size = 2
    end
    object cdsVendaItensNFEvalor_acrescimo_item: TFMTBCDField
      FieldName = 'valor_acrescimo_item'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 2
    end
    object cdsVendaItensNFElote: TStringField
      FieldName = 'lote'
    end
    object cdsVendaItensNFEdata_vencimento_lote: TDateField
      FieldName = 'data_vencimento_lote'
    end
    object cdsVendaItensNFEsubtotal: TFMTBCDField
      FieldName = 'subtotal'
      DisplayFormat = '#,###,##0.#0'
      EditFormat = '#,###,##0.#0'
      Precision = 32
      Size = 8
    end
    object cdsVendaItensNFENOME_CLIENTE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object cdsTipoContribuinte: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 200
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      0002001E000000}
    object cdsTipoContribuinteid: TIntegerField
      FieldName = 'id'
    end
    object cdsTipoContribuintedescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object cdsRetiradaCidade: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'select id, nome, uf, codigo_ibge from cidades where (uf = :pUF) ' +
      'order by nome;'
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    Left = 152
    Top = 328
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object StringField1: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'codigo_ibge'
    end
  end
  object cdsEntregaCidade: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'select id, nome, uf, codigo_ibge from cidades where (uf = :pUF) ' +
      'order by nome;'
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    Left = 256
    Top = 328
    object IntegerField3: TIntegerField
      FieldName = 'id'
    end
    object StringField3: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'codigo_ibge'
    end
  end
  object cdsTransportadoraCidade: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'select id, nome, uf, codigo_ibge from cidades where (uf = :pUF) ' +
      'order by nome;'
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    Left = 376
    Top = 328
    object IntegerField5: TIntegerField
      FieldName = 'id'
    end
    object StringField5: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object StringField6: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object IntegerField6: TIntegerField
      FieldName = 'codigo_ibge'
    end
  end
  object cdsListaDuplicatas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 248
    Data = {
      C50000009619E0BD010000001800000006000000000003000000C50013445550
      5F49445F4E4F54415F46495343414C200400010000000000084455505F495445
      4D0400010000000000124455505F204E554D45524F5F46415455524101004900
      00000100055749445448020002001400144455505F4E554D45524F5F4455504C
      49434154410100490000000100055749445448020002003C00134455505F4441
      54415F56454E43494D454E544F0400060000000000094455505F56414C4F5208
      000400000000000000}
    object cdsListaDuplicatasDUP_ID_NOTA_FISCAL: TIntegerField
      FieldName = 'DUP_ID_NOTA_FISCAL '
    end
    object cdsListaDuplicatasDUP_ITEM: TIntegerField
      FieldName = 'DUP_ITEM'
      DisplayFormat = '000'
    end
    object cdsListaDuplicatasnumero_fatura: TStringField
      FieldName = 'DUP_ NUMERO_FATURA'
    end
    object cdsListaDuplicatasDUP_NUMERO_DUPLICATA: TStringField
      FieldName = 'DUP_NUMERO_DUPLICATA'
      Size = 60
    end
    object cdsListaDuplicatasDUP_DATA_VENCIMENTO: TDateField
      FieldName = 'DUP_DATA_VENCIMENTO'
      EditMask = '##/##/#####;1;_'
    end
    object cdsListaDuplicatasDUP_VALOR: TFloatField
      FieldName = 'DUP_VALOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
  end
  object dstDuplicatas: TSQLDataSet
    CommandText = 
      'select * from nota_fiscal_duplicata where (id_nota_fiscal = :pid' +
      '_nota_fiscal) order by item'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid_nota_fiscal'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 48
    Top = 384
    object dstDuplicatasid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstDuplicatasitem: TIntegerField
      FieldName = 'item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstDuplicatasnumero_duplicata: TStringField
      FieldName = 'numero_duplicata'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstDuplicatasdata_vencimento: TDateField
      FieldName = 'data_vencimento'
      ProviderFlags = [pfInUpdate]
    end
    object dstDuplicatasvalor: TFMTBCDField
      FieldName = 'valor'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspDuplicatas: TDataSetProvider
    DataSet = dstDuplicatas
    Options = [poAllowCommandText]
    Left = 136
    Top = 376
  end
  object cdsDuplicatas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid_nota_fiscal'
        ParamType = ptInput
      end>
    ProviderName = 'dspDuplicatas'
    Left = 224
    Top = 384
    object cdsDuplicatasid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
    end
    object cdsDuplicatasitem: TIntegerField
      FieldName = 'item'
    end
    object cdsDuplicatasnumero_duplicata: TStringField
      FieldName = 'numero_duplicata'
      Size = 60
    end
    object cdsDuplicatasdata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsDuplicatasvalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 15
      Size = 2
    end
  end
  object cdsListaVolumes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 296
    Data = {
      ED0000009619E0BD010000001800000008000000000003000000ED0012564F4C
      5F49445F4E4F54415F46495343414C040001000000000008564F4C5F4954454D
      04000100000000000E564F4C5F5155414E54494441444508000400000000000B
      564F4C5F455350454349450100490000000100055749445448020002003C0009
      564F4C5F4D415243410100490000000100055749445448020002003C000D564F
      4C5F4E554D45524143414F0100490000000100055749445448020002003C0010
      564F4C5F5045534F5F4C49515549444F08000400000000000E564F4C5F504553
      4F5F425255544F08000400000000000000}
    object cdsListaVolumesVOL_ID_NOTA_FISCAL: TIntegerField
      FieldName = 'VOL_ID_NOTA_FISCAL'
    end
    object cdsListaVolumesVOL_ITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'VOL_ITEM'
      DisplayFormat = '000'
    end
    object cdsListaVolumesVOL_QUANTIDADE: TFloatField
      FieldName = 'VOL_QUANTIDADE'
      DisplayFormat = '###,##0.#00'
      EditFormat = '###,##0.#00'
    end
    object cdsListaVolumesVOL_ESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'VOL_ESPECIE'
      Size = 60
    end
    object cdsListaVolumesVOL_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'VOL_MARCA'
      Size = 60
    end
    object cdsListaVolumesVOL_NUMERACAO: TStringField
      DisplayLabel = 'Numera'#231#227'o'
      FieldName = 'VOL_NUMERACAO'
      Size = 60
    end
    object cdsListaVolumesVOL_PESO_LIQUIDO: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'VOL_PESO_LIQUIDO'
      DisplayFormat = '###,##0.#00'
      EditFormat = '###,##0.#00'
    end
    object cdsListaVolumesVOL_PESO_BRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'VOL_PESO_BRUTO'
      DisplayFormat = '###,##0.#00'
      EditFormat = '###,##0.#00'
    end
  end
  object dstVolumes: TSQLDataSet
    CommandText = 
      'select * from nota_fiscal_volumes where (id_nota_fiscal = :pid_n' +
      'ota_fiscal) '#13#10' order by item'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid_nota_fiscal'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 320
    Top = 384
    object dstVolumesid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstVolumesitem: TIntegerField
      FieldName = 'item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstVolumesquantidade: TFMTBCDField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object dstVolumesespecie: TStringField
      FieldName = 'especie'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstVolumesmarca: TStringField
      FieldName = 'marca'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstVolumesnumeracao: TStringField
      FieldName = 'numeracao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstVolumespeso_liquido: TFMTBCDField
      FieldName = 'peso_liquido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstVolumespeso_bruto: TFMTBCDField
      FieldName = 'peso_bruto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
  end
  object dspVolumes: TDataSetProvider
    DataSet = dstVolumes
    Options = [poAllowCommandText]
    Left = 376
    Top = 400
  end
  object cdsVolumes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid_nota_fiscal'
        ParamType = ptInput
      end>
    ProviderName = 'dspVolumes'
    Left = 440
    Top = 384
    object cdsVolumesid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
    end
    object cdsVolumesitem: TIntegerField
      FieldName = 'item'
    end
    object cdsVolumesquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Precision = 15
      Size = 0
    end
    object cdsVolumesespecie: TStringField
      FieldName = 'especie'
      Size = 60
    end
    object cdsVolumesmarca: TStringField
      FieldName = 'marca'
      Size = 60
    end
    object cdsVolumesnumeracao: TStringField
      FieldName = 'numeracao'
      Size = 60
    end
    object cdsVolumespeso_liquido: TFMTBCDField
      FieldName = 'peso_liquido'
      Precision = 15
      Size = 3
    end
    object cdsVolumespeso_bruto: TFMTBCDField
      FieldName = 'peso_bruto'
      Precision = 15
      Size = 3
    end
  end
  object dstNotaReferencia: TSQLDataSet
    CommandText = 
      'select * from nota_fiscal_referencias where (id_nota_fiscal = :p' +
      'codigo) order by item'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodigo'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 520
    Top = 360
    object dstNotaReferenciaid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstNotaReferenciaitem: TIntegerField
      FieldName = 'item'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstNotaReferenciatipo_nota: TIntegerField
      FieldName = 'tipo_nota'
      ProviderFlags = [pfInUpdate]
    end
    object dstNotaReferenciachave_acesso: TStringField
      FieldName = 'chave_acesso'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object dstNotaReferencianota_serie: TStringField
      FieldName = 'nota_serie'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstNotaReferencianota_numero: TStringField
      FieldName = 'nota_numero'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstNotaReferencianota_modelo: TStringField
      FieldName = 'nota_modelo'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstNotaReferencianota_uf_emissor: TStringField
      FieldName = 'nota_uf_emissor'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstNotaReferencianota_ano_mes: TStringField
      FieldName = 'nota_ano_mes'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
    object dstNotaReferencianota_cnpj: TStringField
      FieldName = 'nota_cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
  end
  object dspNotaReferencia: TDataSetProvider
    DataSet = dstNotaReferencia
    Options = [poAllowCommandText]
    Left = 600
    Top = 344
  end
  object cdsNotaReferencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspNotaReferencia'
    Left = 696
    Top = 344
    object cdsNotaReferenciaid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
    end
    object cdsNotaReferenciaitem: TIntegerField
      FieldName = 'item'
    end
    object cdsNotaReferenciatipo_nota: TIntegerField
      FieldName = 'tipo_nota'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaReferenciachave_acesso: TStringField
      FieldName = 'chave_acesso'
      Size = 44
    end
    object cdsNotaReferencianota_serie: TStringField
      FieldName = 'nota_serie'
      Size = 6
    end
    object cdsNotaReferencianota_numero: TStringField
      FieldName = 'nota_numero'
      Size = 10
    end
    object cdsNotaReferencianota_modelo: TStringField
      FieldName = 'nota_modelo'
      Size = 3
    end
    object cdsNotaReferencianota_uf_emissor: TStringField
      FieldName = 'nota_uf_emissor'
      FixedChar = True
      Size = 2
    end
    object cdsNotaReferencianota_ano_mes: TStringField
      FieldName = 'nota_ano_mes'
      FixedChar = True
      Size = 6
    end
    object cdsNotaReferencianota_cnpj: TStringField
      FieldName = 'nota_cnpj'
      Size = 14
    end
  end
  object cdsListaOrgaoReceptor: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 56
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C0002554601
      0049000000010005574944544802000200020006434F4449474F010049000000
      0100055749445448020002000A000000}
    object cdsListaOrgaoReceptorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsListaOrgaoReceptorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
  end
  object dstCartaCorrecao: TSQLDataSet
    CommandText = 
      'select *  from nota_fiscal_carta_correcao where (id_nota_fiscal ' +
      '= :pcodigo_nf)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodigo_nf'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 688
    Top = 136
    object dstCartaCorrecaoid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstCartaCorrecaosequencia: TIntegerField
      FieldName = 'sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstCartaCorrecaochave_acesso: TStringField
      FieldName = 'chave_acesso'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstCartaCorrecaomotivo: TStringField
      FieldName = 'motivo'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstCartaCorrecaostatus: TIntegerField
      FieldName = 'status'
      ProviderFlags = [pfInUpdate]
    end
    object dstCartaCorrecaonumero_protocolo: TStringField
      FieldName = 'numero_protocolo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstCartaCorrecaodata: TSQLTimeStampField
      FieldName = 'data'
      ProviderFlags = [pfInUpdate]
    end
    object dstCartaCorrecaocarta: TMemoField
      FieldName = 'carta'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstCartaCorrecaoretorno_xml: TMemoField
      FieldName = 'retorno_xml'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object dspCartaCorrecao: TDataSetProvider
    DataSet = dstCartaCorrecao
    Options = [poAllowCommandText]
    Left = 704
    Top = 200
  end
  object cdsCartaCorrecao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodigo_nf'
        ParamType = ptInput
      end>
    ProviderName = 'dspCartaCorrecao'
    Left = 704
    Top = 256
    object cdsCartaCorrecaoid_nota_fiscal: TIntegerField
      FieldName = 'id_nota_fiscal'
    end
    object cdsCartaCorrecaosequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object cdsCartaCorrecaochave_acesso: TStringField
      FieldName = 'chave_acesso'
      Size = 50
    end
    object cdsCartaCorrecaomotivo: TStringField
      FieldName = 'motivo'
      Size = 80
    end
    object cdsCartaCorrecaostatus: TIntegerField
      FieldName = 'status'
    end
    object cdsCartaCorrecaonumero_protocolo: TStringField
      FieldName = 'numero_protocolo'
      Size = 15
    end
    object cdsCartaCorrecaodata: TSQLTimeStampField
      FieldName = 'data'
    end
    object cdsCartaCorrecaocarta: TMemoField
      FieldName = 'carta'
      BlobType = ftMemo
    end
    object cdsCartaCorrecaoretorno_xml: TMemoField
      FieldName = 'retorno_xml'
      BlobType = ftMemo
    end
  end
  object cdsListaSituacao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 416
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      0002001E000000}
    object cdsListaSituacaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaSituacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object cdsListaArquivoNfe: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 408
    Data = {
      540000009619E0BD010000001800000002000000000003000000540004434E50
      4A0100490000000100055749445448020002000E000C4E4F4D455F4152515549
      564F020049000000010005574944544802000200FF000000}
    object cdsListaArquivoNfeCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsListaArquivoNfeNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      Size = 255
    end
  end
  object cdsListaVendasNFe: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 424
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C0009434453
      5F56454E444104000100000000000000}
    object cdsListaVendasNFeCDS_VENDA: TIntegerField
      FieldName = 'CDS_VENDA'
    end
  end
  object cdsDuplicatasVenda: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select cr.id, cr.id_empresa,cr.id_cliente, cri.num_parcela, cri.' +
      'sequencia, cri.data_vencimento, cri.valor_parcela  from contas_r' +
      'eceber cr inner join contas_receber_parcelas cri on cr.id = cri.' +
      'id_conta_receber where (cr.id_venda = :pVENDA)  order by cri.num' +
      '_parcela'
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista'
    Left = 216
    Top = 216
    object cdsDuplicatasVendaid: TIntegerField
      FieldName = 'id'
    end
    object cdsDuplicatasVendaid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object cdsDuplicatasVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object cdsDuplicatasVendanum_parcela: TIntegerField
      FieldName = 'num_parcela'
    end
    object cdsDuplicatasVendasequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object cdsDuplicatasVendadata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsDuplicatasVendavalor_parcela: TFMTBCDField
      FieldName = 'valor_parcela'
      Precision = 15
      Size = 2
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 504
    Top = 56
  end
  object cdsListaUfEmitente: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUfEmitenteIndex1'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 784
    Top = 24
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUfEmitenteEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUfEmitenteEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUfEmitenteEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaUFEmitenteRet: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUFSuframaIndex1'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 776
    Top = 152
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUFEmitenteRetEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUFEmitenteRetEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUFEmitenteRetEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaUFDestinatario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUFDestinatarioIndex1'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 776
    Top = 80
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUFDestinatarioEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUFDestinatarioEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUFDestinatarioEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaUFDestinatarioEnt: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUFDestinatarioEntIndex1'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 776
    Top = 216
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUFDestinatarioEntEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUFDestinatarioEntEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUFDestinatarioEntEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaUFTransporte: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUFTransporteIndex1'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 784
    Top = 272
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUFTransporteEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUFTransporteEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUFTransporteEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaUFVeiculo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUFVeiculoIndex2'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 784
    Top = 320
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUFVeiculoEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUFVeiculoEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUFVeiculoEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaUF_Reboque: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EUF_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'EUF_SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EUF_DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'cdsListaUF_ReboqueIndex1'
        Fields = 'EUF_SIGLA'
      end>
    IndexFieldNames = 'EUF_SIGLA'
    Params = <>
    StoreDefs = True
    Left = 784
    Top = 376
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A455546
      5F434F4449474F0400010000000000094555465F5349474C4101004900000001
      000557494454480200020002000D4555465F44455343524943414F0100490000
      000100055749445448020002001E000000}
    object cdsListaUF_ReboqueEUF_CODIGO: TIntegerField
      FieldName = 'EUF_CODIGO'
    end
    object cdsListaUF_ReboqueEUF_SIGLA: TStringField
      FieldName = 'EUF_SIGLA'
      Size = 2
    end
    object cdsListaUF_ReboqueEUF_DESCRICAO: TStringField
      FieldName = 'EUF_DESCRICAO'
      Size = 30
    end
  end
  object cdsMotivoDesoneracao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 424
    Data = {
      430000009619E0BD010000001800000002000000000003000000430002696404
      000100000000000964657363726963616F010049000000010005574944544802
      00020078000000}
    object cdsMotivoDesoneracaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsMotivoDesoneracaodescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
  end
  object ACBrNFeDANFERaveCB1: TACBrNFeDANFeRL
    ACBrNFe = ACBrNFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    LarguraCodProd = 54
    ExibirEAN = False
    QuebraLinhaEmDetalhamentoEspecifico = True
    ExibeCampoFatura = False
    Left = 136
    Top = 24
  end
  object cdsListaModbcICMS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 112
    Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F000A4D4243
      5F434F4449474F04000100000000000D4D42435F44455343524943414F010049
      00000001000557494454480200020028000000}
    object cdsListaModbcICMSMBC_CODIGO: TIntegerField
      FieldName = 'MBC_CODIGO'
    end
    object cdsListaModbcICMSMBC_DESCRICAO: TStringField
      FieldName = 'MBC_DESCRICAO'
      Size = 40
    end
  end
  object cdsListaModbcICMS_ST: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 168
    Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F000A4D4243
      5F434F4449474F04000100000000000D4D42435F44455343524943414F010049
      00000001000557494454480200020028000000}
    object cdsListaModbcICMS_STMBC_CODIGO: TIntegerField
      FieldName = 'MBC_CODIGO'
    end
    object cdsListaModbcICMS_STMBC_DESCRICAO: TStringField
      FieldName = 'MBC_DESCRICAO'
      Size = 40
    end
  end
  object cdsListaAliquotaPart: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 232
    Data = {
      470000009619E0BD010000001800000002000000000003000000470007434453
      5F414E4F0400010000000000144344535F414C4951554F54415F44455354494E
      4F08000400000000000000}
    object cdsListaAliquotaPartCDS_ANO: TIntegerField
      FieldName = 'CDS_ANO'
    end
    object cdsListaAliquotaPartCDS_ALIQUOTA_DESTINO: TFloatField
      FieldName = 'CDS_ALIQUOTA_DESTINO'
    end
  end
end
