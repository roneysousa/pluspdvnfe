object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 316
  Top = 133
  Height = 401
  Width = 640
  object sqlConexao: TSQLConnection
    ConnectionName = 'pluspdv_nfe'
    DriverName = 'DevartPostgreSQL'
    GetDriverFunc = 'getSQLDriverPostgreSQL'
    LibraryName = 'dbexppgsql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartPostgreSQL'
      'BlobSize=-1'
      'HostName=localhost'
      'SchemaName='
      'DataBase=pluspdv_nfe'
      'User_Name=postgres'
      'Password=admg2'
      'UseQuoteChar=False'
      'EnableBCD=True')
    VendorLib = 'dbexppgsql.dll'
    BeforeConnect = sqlConexaoBeforeConnect
    Connected = True
    Left = 24
    Top = 16
  end
  object dstPadrao: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 16
    Top = 144
  end
  object dstListas: TSQLDataSet
    CommandText = 'select * from ecf_equipamentos where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 24
    Top = 80
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspUsuario'
    Left = 288
    Top = 80
    object cdsUsuarioid: TIntegerField
      FieldName = 'id'
      DisplayFormat = '000'
    end
    object cdsUsuarionome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object cdsUsuariosenha: TStringField
      FieldName = 'senha'
      Size = 32
    end
    object cdsUsuarioterminal: TStringField
      FieldName = 'terminal'
    end
    object cdsUsuarioid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object cdsUsuarioid_perfil: TIntegerField
      FieldName = 'id_perfil'
    end
    object cdsUsuarioporta_nao_fiscal: TStringField
      FieldName = 'porta_nao_fiscal'
    end
  end
  object dstUsuario: TSQLDataSet
    CommandText = 'select * from usuarios where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 152
    Top = 80
    object dstUsuarioid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstUsuarionome: TStringField
      FieldName = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstUsuariosenha: TStringField
      FieldName = 'senha'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object dstUsuarioterminal: TStringField
      FieldName = 'terminal'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuarioid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuarioid_perfil: TIntegerField
      FieldName = 'id_perfil'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuarioporta_nao_fiscal: TStringField
      FieldName = 'porta_nao_fiscal'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = dstUsuario
    Options = [poAllowCommandText]
    Left = 224
    Top = 72
  end
  object dstEmpresa: TSQLDataSet
    CommandText = 'select * from empresas where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 152
    Top = 24
    object dstEmpresaid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstEmpresacnpj: TStringField
      FieldName = 'cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstEmpresanome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstEmpresarazao_social: TStringField
      FieldName = 'razao_social'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstEmpresainsc_estadual: TStringField
      FieldName = 'insc_estadual'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstEmpresainsc_municipal: TStringField
      FieldName = 'insc_municipal'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstEmpresaid_cidade: TIntegerField
      FieldName = 'id_cidade'
      ProviderFlags = [pfInUpdate]
    end
    object dstEmpresaid_bairro: TIntegerField
      FieldName = 'id_bairro'
      ProviderFlags = [pfInUpdate]
    end
    object dstEmpresacep: TStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstEmpresalogradouro: TStringField
      FieldName = 'logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstEmpresanumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstEmpresacomplemento: TStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstEmpresareferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstEmpresafone: TStringField
      FieldName = 'fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstEmpresafax: TStringField
      FieldName = 'fax'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstEmpresaemail: TStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstEmpresaresponsavel_cpf: TStringField
      FieldName = 'responsavel_cpf'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstEmpresaresponsavel_nome: TStringField
      FieldName = 'responsavel_nome'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstEmpresaresponsavel_fone: TStringField
      FieldName = 'responsavel_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstEmpresaid_contador: TIntegerField
      FieldName = 'id_contador'
      ProviderFlags = [pfInUpdate]
    end
    object dstEmpresasequencia_nfe: TIntegerField
      FieldName = 'sequencia_nfe'
      ProviderFlags = [pfInUpdate]
    end
    object dstEmpresacnae: TStringField
      FieldName = 'cnae'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object dstEmpresacrt: TStringField
      FieldName = 'crt'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstEmpresacertificado_numero_serie: TStringField
      FieldName = 'certificado_numero_serie'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstEmpresaambiente_nfe: TStringField
      FieldName = 'ambiente_nfe'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = dstEmpresa
    Options = [poAllowCommandText]
    Left = 224
    Top = 16
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    Left = 312
    Top = 16
    object cdsEmpresaid: TIntegerField
      FieldName = 'id'
    end
    object cdsEmpresacnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object cdsEmpresanome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 50
    end
    object cdsEmpresarazao_social: TStringField
      FieldName = 'razao_social'
      Size = 50
    end
    object cdsEmpresainsc_estadual: TStringField
      FieldName = 'insc_estadual'
      Size = 14
    end
    object cdsEmpresainsc_municipal: TStringField
      FieldName = 'insc_municipal'
      Size = 15
    end
    object cdsEmpresaid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object cdsEmpresaid_bairro: TIntegerField
      FieldName = 'id_bairro'
    end
    object cdsEmpresacep: TStringField
      FieldName = 'cep'
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object cdsEmpresalogradouro: TStringField
      FieldName = 'logradouro'
      Size = 80
    end
    object cdsEmpresanumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsEmpresacomplemento: TStringField
      FieldName = 'complemento'
      Size = 40
    end
    object cdsEmpresareferencia: TStringField
      FieldName = 'referencia'
      Size = 50
    end
    object cdsEmpresafone: TStringField
      FieldName = 'fone'
      EditMask = '(99) 99999-9999;0;_'
      Size = 11
    end
    object cdsEmpresafax: TStringField
      FieldName = 'fax'
      Size = 11
    end
    object cdsEmpresaemail: TStringField
      FieldName = 'email'
      Size = 40
    end
    object cdsEmpresaresponsavel_cpf: TStringField
      FieldName = 'responsavel_cpf'
      Size = 11
    end
    object cdsEmpresaresponsavel_nome: TStringField
      FieldName = 'responsavel_nome'
      Size = 60
    end
    object cdsEmpresaresponsavel_fone: TStringField
      FieldName = 'responsavel_fone'
      Size = 11
    end
    object cdsEmpresaid_contador: TIntegerField
      FieldName = 'id_contador'
    end
    object cdsEmpresasequencia_nfe: TIntegerField
      FieldName = 'sequencia_nfe'
    end
    object cdsEmpresacnae: TStringField
      FieldName = 'cnae'
      Size = 7
    end
    object cdsEmpresacrt: TStringField
      FieldName = 'crt'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresacertificado_numero_serie: TStringField
      FieldName = 'certificado_numero_serie'
      Size = 60
    end
    object cdsEmpresaambiente_nfe: TStringField
      FieldName = 'ambiente_nfe'
      FixedChar = True
      Size = 1
    end
  end
  object dstNCM: TSQLDataSet
    CommandText = 
      'select id_ncm, uf, aliquota_nacional, aliquota_importado, aliquo' +
      'ta_estadual, aliquota_municipal, chave from ncm_impostos where (' +
      'uf = :pUF) and (id_ncm = :pid_ncm)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pid_ncm'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 152
    Top = 136
    object dstNCMid_ncm: TStringField
      FieldName = 'id_ncm'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object dstNCMuf: TStringField
      FieldName = 'uf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object dstNCMaliquota_nacional: TFMTBCDField
      FieldName = 'aliquota_nacional'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstNCMaliquota_importado: TFMTBCDField
      FieldName = 'aliquota_importado'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstNCMaliquota_estadual: TFMTBCDField
      FieldName = 'aliquota_estadual'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstNCMaliquota_municipal: TFMTBCDField
      FieldName = 'aliquota_municipal'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstNCMchave: TStringField
      FieldName = 'chave'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = dstNCM
    Options = [poAllowCommandText]
    Left = 216
    Top = 136
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pUF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pid_ncm'
        ParamType = ptInput
      end>
    ProviderName = 'dspNCM'
    Left = 288
    Top = 136
    object cdsNCMid_ncm: TStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object cdsNCMuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cdsNCMaliquota_nacional: TFMTBCDField
      FieldName = 'aliquota_nacional'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 10
      Size = 8
    end
    object cdsNCMaliquota_importado: TFMTBCDField
      FieldName = 'aliquota_importado'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 10
      Size = 8
    end
    object cdsNCMaliquota_estadual: TFMTBCDField
      FieldName = 'aliquota_estadual'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 10
      Size = 8
    end
    object cdsNCMaliquota_municipal: TFMTBCDField
      FieldName = 'aliquota_municipal'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 10
      Size = 8
    end
    object cdsNCMchave: TStringField
      FieldName = 'chave'
      Size = 6
    end
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ppedido'
        ParamType = ptInput
      end>
    ProviderName = 'dspVenda'
    Left = 280
    Top = 200
    object cdsVendaid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVendaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendacoo: TIntegerField
      FieldName = 'coo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaccf: TIntegerField
      FieldName = 'ccf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaatacado: TBooleanField
      FieldName = 'atacado'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasituacao: TStringField
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendanum_dependente: TIntegerField
      FieldName = 'num_dependente'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaid_consumidor: TStringField
      FieldName = 'id_consumidor'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsVendaid_entrega: TIntegerField
      FieldName = 'id_entrega'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendadata_venda: TSQLTimeStampField
      FieldName = 'data_venda'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendadata_cancelamento: TSQLTimeStampField
      FieldName = 'data_cancelamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendamotivo_cancelamento: TStringField
      FieldName = 'motivo_cancelamento'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsVendavalor_mercadorias: TFMTBCDField
      FieldName = 'valor_mercadorias'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendavalor_entrada: TFMTBCDField
      FieldName = 'valor_entrada'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendavalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendavalor_acrescimo: TFMTBCDField
      FieldName = 'valor_acrescimo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendavalor_troco: TFMTBCDField
      FieldName = 'valor_troco'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendaid_ecf: TIntegerField
      FieldName = 'id_ecf'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendanumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasequencia_nfe: TIntegerField
      FieldName = 'sequencia_nfe'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaobservacao: TMemoField
      FieldName = 'observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsVendastatus_cupom: TIntegerField
      FieldName = 'status_cupom'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendachecksum: TStringField
      FieldName = 'checksum'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = dstVenda
    Options = [poAllowCommandText]
    Left = 216
    Top = 200
  end
  object dstVenda: TSQLDataSet
    CommandText = 'select * from vendas where (id = :ppedido)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ppedido'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 152
    Top = 200
    object dstVendaid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstVendaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendacoo: TIntegerField
      FieldName = 'coo'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaccf: TIntegerField
      FieldName = 'ccf'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaatacado: TBooleanField
      FieldName = 'atacado'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendasituacao: TStringField
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendanum_dependente: TIntegerField
      FieldName = 'num_dependente'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaid_consumidor: TStringField
      FieldName = 'id_consumidor'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstVendaid_entrega: TIntegerField
      FieldName = 'id_entrega'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendadata_venda: TSQLTimeStampField
      FieldName = 'data_venda'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendadata_cancelamento: TSQLTimeStampField
      FieldName = 'data_cancelamento'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendamotivo_cancelamento: TStringField
      FieldName = 'motivo_cancelamento'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstVendavalor_mercadorias: TFMTBCDField
      FieldName = 'valor_mercadorias'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstVendavalor_entrada: TFMTBCDField
      FieldName = 'valor_entrada'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstVendavalor_desconto: TFMTBCDField
      FieldName = 'valor_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstVendavalor_acrescimo: TFMTBCDField
      FieldName = 'valor_acrescimo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstVendavalor_troco: TFMTBCDField
      FieldName = 'valor_troco'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstVendaid_ecf: TIntegerField
      FieldName = 'id_ecf'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendanumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendasequencia_nfe: TIntegerField
      FieldName = 'sequencia_nfe'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaobservacao: TMemoField
      FieldName = 'observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstVendastatus_cupom: TIntegerField
      FieldName = 'status_cupom'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendachecksum: TStringField
      FieldName = 'checksum'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object dstProduto: TSQLDataSet
    CommandText = 
      'select id, descricao, tipo, cod_barras, referencia, id_ncm, id_g' +
      'rade, grupo, origem, '#13#10'    id_produto_localizacao, id_secao, id_' +
      'subsecao, id_unidade, id_unidade_armaz, quant_armaz,'#13#10'    fracio' +
      'nado, pesavel, peso_liquido, peso_bruto, id_fornecedor, id_fabri' +
      'cante, '#13#10'    valor_compra, valor_custo, valor_venda, valor_anter' +
      'ior, valor_fracao, controle_lote,'#13#10'    medicamento, ativo, comis' +
      'sionado, perc_comissao, limite_desconto_bloqueado, perc_limite_d' +
      'esconto, '#13#10'    id_tributacao, perc_icms_compra, perc_reducao_icm' +
      's, perc_outras_taxas, '#13#10'    cst_ipi, perc_ipi, perc_frete, id_cf' +
      'op_venda_interna, id_cfop_venda_externa, id_usuario_cadastro,'#13#10' ' +
      '   id_usuario_alteracao, data_cadastro, data_alteracao, checksum' +
      #13#10'    from produtos where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 152
    Top = 248
    object dstProdutoid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstProdutodescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstProdutotipo: TIntegerField
      FieldName = 'tipo'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutocod_barras: TStringField
      FieldName = 'cod_barras'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstProdutoreferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstProdutoid_ncm: TStringField
      FieldName = 'id_ncm'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstProdutoid_grade: TIntegerField
      FieldName = 'id_grade'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutogrupo: TIntegerField
      FieldName = 'grupo'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoorigem: TIntegerField
      FieldName = 'origem'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_produto_localizacao: TIntegerField
      FieldName = 'id_produto_localizacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_secao: TIntegerField
      FieldName = 'id_secao'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_subsecao: TIntegerField
      FieldName = 'id_subsecao'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_unidade: TStringField
      FieldName = 'id_unidade'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstProdutoid_unidade_armaz: TStringField
      FieldName = 'id_unidade_armaz'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstProdutoquant_armaz: TFMTBCDField
      FieldName = 'quant_armaz'
      ProviderFlags = [pfInUpdate]
      Precision = 11
      Size = 3
    end
    object dstProdutofracionado: TBooleanField
      FieldName = 'fracionado'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutopesavel: TBooleanField
      FieldName = 'pesavel'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutopeso_liquido: TFMTBCDField
      FieldName = 'peso_liquido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutopeso_bruto: TFMTBCDField
      FieldName = 'peso_bruto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutoid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_fabricante: TIntegerField
      FieldName = 'id_fabricante'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutovalor_compra: TFMTBCDField
      FieldName = 'valor_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutovalor_custo: TFMTBCDField
      FieldName = 'valor_custo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutovalor_venda: TFMTBCDField
      FieldName = 'valor_venda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutovalor_anterior: TFMTBCDField
      FieldName = 'valor_anterior'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutovalor_fracao: TFMTBCDField
      FieldName = 'valor_fracao'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstProdutocontrole_lote: TBooleanField
      FieldName = 'controle_lote'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutomedicamento: TBooleanField
      FieldName = 'medicamento'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoativo: TBooleanField
      FieldName = 'ativo'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutocomissionado: TBooleanField
      FieldName = 'comissionado'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoperc_comissao: TFMTBCDField
      FieldName = 'perc_comissao'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 2
    end
    object dstProdutolimite_desconto_bloqueado: TBooleanField
      FieldName = 'limite_desconto_bloqueado'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoperc_limite_desconto: TFMTBCDField
      FieldName = 'perc_limite_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstProdutoid_tributacao: TIntegerField
      FieldName = 'id_tributacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoperc_icms_compra: TFMTBCDField
      FieldName = 'perc_icms_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object dstProdutoperc_reducao_icms: TFMTBCDField
      FieldName = 'perc_reducao_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstProdutoperc_outras_taxas: TFMTBCDField
      FieldName = 'perc_outras_taxas'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstProdutocst_ipi: TIntegerField
      FieldName = 'cst_ipi'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstProdutoperc_frete: TFMTBCDField
      FieldName = 'perc_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstProdutoid_cfop_venda_interna: TIntegerField
      FieldName = 'id_cfop_venda_interna'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_cfop_venda_externa: TIntegerField
      FieldName = 'id_cfop_venda_externa'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutoid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutodata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutodata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutochecksum: TStringField
      FieldName = 'checksum'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object dstCliente: TSQLDataSet
    CommandText = 'select * from clientes where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 152
    Top = 296
    object dstClienteid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstClientetipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstClientecpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstClienteinsc_estadual: TStringField
      FieldName = 'insc_estadual'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstClienteidentidade_orgao: TStringField
      FieldName = 'identidade_orgao'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstClienteidentidade_uf: TStringField
      FieldName = 'identidade_uf'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstClientenaturalidade: TStringField
      FieldName = 'naturalidade'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstClientenome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClienterazao_social: TStringField
      FieldName = 'razao_social'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClientedata_aniversario: TDateField
      FieldName = 'data_aniversario'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteid_tipo_cliente: TIntegerField
      FieldName = 'id_tipo_cliente'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesituacao: TIntegerField
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteid_atividade: TIntegerField
      FieldName = 'id_atividade'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientedia_fatura: TIntegerField
      FieldName = 'dia_fatura'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientevalor_faturamento: TFMTBCDField
      FieldName = 'valor_faturamento'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstClientevalor_limite_compra: TFMTBCDField
      FieldName = 'valor_limite_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstClienteid_funcionario_vendedor: TIntegerField
      FieldName = 'id_funcionario_vendedor'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteestado_civil: TIntegerField
      FieldName = 'estado_civil'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientenome_pai: TStringField
      FieldName = 'nome_pai'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClientenome_mae: TStringField
      FieldName = 'nome_mae'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClienteconjugue_nome: TStringField
      FieldName = 'conjugue_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClienteconjugue_cpf: TStringField
      FieldName = 'conjugue_cpf'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClienteconjugue_empresa_nome: TStringField
      FieldName = 'conjugue_empresa_nome'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstClienteconjugue_funcao: TStringField
      FieldName = 'conjugue_funcao'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteconjugue_renda: TFMTBCDField
      FieldName = 'conjugue_renda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstClienteid_cliente_matriz: TIntegerField
      FieldName = 'id_cliente_matriz'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteid_regiao: TIntegerField
      FieldName = 'id_regiao'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteid_cidade: TIntegerField
      FieldName = 'id_cidade'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteid_bairro: TIntegerField
      FieldName = 'id_bairro'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientecep: TStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstClientelogradouro: TStringField
      FieldName = 'logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstClientenumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientecomplemento: TStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstClientereferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientetempo_residencia: TStringField
      FieldName = 'tempo_residencia'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object dstClientefone1: TStringField
      FieldName = 'fone1'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientefone2: TStringField
      FieldName = 'fone2'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientefone3: TStringField
      FieldName = 'fone3'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClienteramal1: TStringField
      FieldName = 'ramal1'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstClienteramal2: TStringField
      FieldName = 'ramal2'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstClienteramal3: TStringField
      FieldName = 'ramal3'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstClientesite: TStringField
      FieldName = 'site'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClienteemail: TStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstClientecobranca_id_cidade: TIntegerField
      FieldName = 'cobranca_id_cidade'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientecobranca_id_bairro: TIntegerField
      FieldName = 'cobranca_id_bairro'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientecobranca_cep: TStringField
      FieldName = 'cobranca_cep'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstClientecobranca_logradouro: TStringField
      FieldName = 'cobranca_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstClientecobranca_numero: TIntegerField
      FieldName = 'cobranca_numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientecobranca_complemento: TStringField
      FieldName = 'cobranca_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstClientecobranca_referencia: TStringField
      FieldName = 'cobranca_referencia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClienteresponsavel_nome: TStringField
      FieldName = 'responsavel_nome'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClienteresponsavel_cpf: TStringField
      FieldName = 'responsavel_cpf'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClienteresponsavel_identidade: TStringField
      FieldName = 'responsavel_identidade'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstClienteresponsavel_fone: TStringField
      FieldName = 'responsavel_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClienteresponsavel_email: TStringField
      FieldName = 'responsavel_email'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstClienteempresa_nome: TStringField
      FieldName = 'empresa_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClienteempresa_id_cidade: TIntegerField
      FieldName = 'empresa_id_cidade'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteempresa_id_bairro: TIntegerField
      FieldName = 'empresa_id_bairro'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteempresa_cep: TStringField
      FieldName = 'empresa_cep'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstClienteempresa_logradouro: TStringField
      FieldName = 'empresa_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstClienteempresa_numero: TIntegerField
      FieldName = 'empresa_numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteempresa_complemento: TStringField
      FieldName = 'empresa_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstClienteempresa_referencia: TStringField
      FieldName = 'empresa_referencia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClienteempresa_fone: TStringField
      FieldName = 'empresa_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClienteempresa_renda: TFMTBCDField
      FieldName = 'empresa_renda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstClientereferencia1_nome: TStringField
      FieldName = 'referencia1_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientereferencia1_fone: TStringField
      FieldName = 'referencia1_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientereferencia1_tipo: TStringField
      FieldName = 'referencia1_tipo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstClientereferencia2_nome: TStringField
      FieldName = 'referencia2_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientereferencia2_fone: TStringField
      FieldName = 'referencia2_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientereferencia2_tipo: TStringField
      FieldName = 'referencia2_tipo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstClientereferencia3_nome: TStringField
      FieldName = 'referencia3_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientereferencia3_fone: TStringField
      FieldName = 'referencia3_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientereferencia3_tipo: TStringField
      FieldName = 'referencia3_tipo'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstClientereferencia4_nome: TStringField
      FieldName = 'referencia4_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientereferencia4_fone: TStringField
      FieldName = 'referencia4_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientereferencia5_nome: TStringField
      FieldName = 'referencia5_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientereferencia5_fone: TStringField
      FieldName = 'referencia5_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientereferencia6_nome: TStringField
      FieldName = 'referencia6_nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientereferencia6_fone: TStringField
      FieldName = 'referencia6_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClienteobservacao: TMemoField
      FieldName = 'observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstClienteid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstClienteid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientedata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientedata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientedata_ultima_compra: TSQLTimeStampField
      FieldName = 'data_ultima_compra'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = dstProduto
    Options = [poAllowCommandText]
    Left = 232
    Top = 248
  end
  object dspCliente: TDataSetProvider
    DataSet = dstCliente
    Options = [poAllowCommandText]
    Left = 232
    Top = 296
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspProduto'
    Left = 304
    Top = 248
    object cdsProdutoid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdutodescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsProdutotipo: TIntegerField
      FieldName = 'tipo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutocod_barras: TStringField
      FieldName = 'cod_barras'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsProdutoreferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsProdutoid_ncm: TStringField
      FieldName = 'id_ncm'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsProdutoid_grade: TIntegerField
      FieldName = 'id_grade'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutogrupo: TIntegerField
      FieldName = 'grupo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoorigem: TIntegerField
      FieldName = 'origem'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_produto_localizacao: TIntegerField
      FieldName = 'id_produto_localizacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_secao: TIntegerField
      FieldName = 'id_secao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_subsecao: TIntegerField
      FieldName = 'id_subsecao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_unidade: TStringField
      FieldName = 'id_unidade'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoid_unidade_armaz: TStringField
      FieldName = 'id_unidade_armaz'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoquant_armaz: TFMTBCDField
      FieldName = 'quant_armaz'
      ProviderFlags = [pfInUpdate]
      Precision = 11
      Size = 3
    end
    object cdsProdutofracionado: TBooleanField
      FieldName = 'fracionado'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutopesavel: TBooleanField
      FieldName = 'pesavel'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutopeso_liquido: TFMTBCDField
      FieldName = 'peso_liquido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutopeso_bruto: TFMTBCDField
      FieldName = 'peso_bruto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutoid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_fabricante: TIntegerField
      FieldName = 'id_fabricante'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutovalor_compra: TFMTBCDField
      FieldName = 'valor_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutovalor_custo: TFMTBCDField
      FieldName = 'valor_custo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutovalor_venda: TFMTBCDField
      FieldName = 'valor_venda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutovalor_anterior: TFMTBCDField
      FieldName = 'valor_anterior'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutovalor_fracao: TFMTBCDField
      FieldName = 'valor_fracao'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object cdsProdutocontrole_lote: TBooleanField
      FieldName = 'controle_lote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutomedicamento: TBooleanField
      FieldName = 'medicamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoativo: TBooleanField
      FieldName = 'ativo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutocomissionado: TBooleanField
      FieldName = 'comissionado'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoperc_comissao: TFMTBCDField
      FieldName = 'perc_comissao'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 2
    end
    object cdsProdutolimite_desconto_bloqueado: TBooleanField
      FieldName = 'limite_desconto_bloqueado'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoperc_limite_desconto: TFMTBCDField
      FieldName = 'perc_limite_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object cdsProdutoid_tributacao: TIntegerField
      FieldName = 'id_tributacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoperc_icms_compra: TFMTBCDField
      FieldName = 'perc_icms_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object cdsProdutoperc_reducao_icms: TFMTBCDField
      FieldName = 'perc_reducao_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsProdutoperc_outras_taxas: TFMTBCDField
      FieldName = 'perc_outras_taxas'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsProdutocst_ipi: TIntegerField
      FieldName = 'cst_ipi'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsProdutoperc_frete: TFMTBCDField
      FieldName = 'perc_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsProdutoid_cfop_venda_interna: TIntegerField
      FieldName = 'id_cfop_venda_interna'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_cfop_venda_externa: TIntegerField
      FieldName = 'id_cfop_venda_externa'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutodata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutodata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutochecksum: TStringField
      FieldName = 'checksum'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object dstTributacao: TSQLDataSet
    CommandText = 'select * from tributacao where (id = :id)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 376
    Top = 80
    object dstTributacaoid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstTributacaodescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstTributacaotipo_tributacao: TStringField
      FieldName = 'tipo_tributacao'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dstTributacaocst_icms: TIntegerField
      FieldName = 'cst_icms'
      ProviderFlags = [pfInUpdate]
    end
    object dstTributacaoaliquota_icms: TFMTBCDField
      FieldName = 'aliquota_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstTributacaocst_pis: TIntegerField
      FieldName = 'cst_pis'
      ProviderFlags = [pfInUpdate]
    end
    object dstTributacaoaliquota_pis: TFMTBCDField
      FieldName = 'aliquota_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstTributacaocst_cofins: TIntegerField
      FieldName = 'cst_cofins'
      ProviderFlags = [pfInUpdate]
    end
    object dstTributacaoaliquota_cofins: TFMTBCDField
      FieldName = 'aliquota_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstTributacaomva_interno: TFMTBCDField
      FieldName = 'mva_interno'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 8
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 304
    Top = 296
    object cdsClienteid: TIntegerField
      FieldName = 'id'
    end
    object cdsClientetipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object cdsClientecpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object cdsClienteinsc_estadual: TStringField
      FieldName = 'insc_estadual'
      Size = 14
    end
    object cdsClienteidentidade_orgao: TStringField
      FieldName = 'identidade_orgao'
      Size = 5
    end
    object cdsClienteidentidade_uf: TStringField
      FieldName = 'identidade_uf'
      FixedChar = True
      Size = 2
    end
    object cdsClientenaturalidade: TStringField
      FieldName = 'naturalidade'
      Size = 30
    end
    object cdsClientenome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 60
    end
    object cdsClienterazao_social: TStringField
      FieldName = 'razao_social'
      Size = 60
    end
    object cdsClientedata_aniversario: TDateField
      FieldName = 'data_aniversario'
    end
    object cdsClienteid_tipo_cliente: TIntegerField
      FieldName = 'id_tipo_cliente'
    end
    object cdsClientesituacao: TIntegerField
      FieldName = 'situacao'
    end
    object cdsClienteid_atividade: TIntegerField
      FieldName = 'id_atividade'
    end
    object cdsClientedia_fatura: TIntegerField
      FieldName = 'dia_fatura'
    end
    object cdsClientevalor_faturamento: TFMTBCDField
      FieldName = 'valor_faturamento'
      Precision = 15
      Size = 2
    end
    object cdsClientevalor_limite_compra: TFMTBCDField
      FieldName = 'valor_limite_compra'
      Precision = 15
      Size = 2
    end
    object cdsClienteid_funcionario_vendedor: TIntegerField
      FieldName = 'id_funcionario_vendedor'
    end
    object cdsClienteestado_civil: TIntegerField
      FieldName = 'estado_civil'
    end
    object cdsClientenome_pai: TStringField
      FieldName = 'nome_pai'
      Size = 60
    end
    object cdsClientenome_mae: TStringField
      FieldName = 'nome_mae'
      Size = 60
    end
    object cdsClienteconjugue_nome: TStringField
      FieldName = 'conjugue_nome'
      Size = 50
    end
    object cdsClienteconjugue_cpf: TStringField
      FieldName = 'conjugue_cpf'
      Size = 11
    end
    object cdsClienteconjugue_empresa_nome: TStringField
      FieldName = 'conjugue_empresa_nome'
      Size = 40
    end
    object cdsClienteconjugue_funcao: TStringField
      FieldName = 'conjugue_funcao'
    end
    object cdsClienteconjugue_renda: TFMTBCDField
      FieldName = 'conjugue_renda'
      Precision = 15
      Size = 2
    end
    object cdsClienteid_cliente_matriz: TIntegerField
      FieldName = 'id_cliente_matriz'
    end
    object cdsClienteid_regiao: TIntegerField
      FieldName = 'id_regiao'
    end
    object cdsClienteid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object cdsClienteid_bairro: TIntegerField
      FieldName = 'id_bairro'
    end
    object cdsClientecep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object cdsClientelogradouro: TStringField
      FieldName = 'logradouro'
      Size = 80
    end
    object cdsClientenumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsClientecomplemento: TStringField
      FieldName = 'complemento'
      Size = 40
    end
    object cdsClientereferencia: TStringField
      FieldName = 'referencia'
      Size = 50
    end
    object cdsClientetempo_residencia: TStringField
      FieldName = 'tempo_residencia'
      FixedChar = True
      Size = 4
    end
    object cdsClientefone1: TStringField
      FieldName = 'fone1'
      Size = 11
    end
    object cdsClientefone2: TStringField
      FieldName = 'fone2'
      Size = 11
    end
    object cdsClientefone3: TStringField
      FieldName = 'fone3'
      Size = 11
    end
    object cdsClienteramal1: TStringField
      FieldName = 'ramal1'
      Size = 4
    end
    object cdsClienteramal2: TStringField
      FieldName = 'ramal2'
      Size = 4
    end
    object cdsClienteramal3: TStringField
      FieldName = 'ramal3'
      Size = 4
    end
    object cdsClientesite: TStringField
      FieldName = 'site'
      Size = 60
    end
    object cdsClienteemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object cdsClientecobranca_id_cidade: TIntegerField
      FieldName = 'cobranca_id_cidade'
    end
    object cdsClientecobranca_id_bairro: TIntegerField
      FieldName = 'cobranca_id_bairro'
    end
    object cdsClientecobranca_cep: TStringField
      FieldName = 'cobranca_cep'
      Size = 8
    end
    object cdsClientecobranca_logradouro: TStringField
      FieldName = 'cobranca_logradouro'
      Size = 80
    end
    object cdsClientecobranca_numero: TIntegerField
      FieldName = 'cobranca_numero'
    end
    object cdsClientecobranca_complemento: TStringField
      FieldName = 'cobranca_complemento'
      Size = 40
    end
    object cdsClientecobranca_referencia: TStringField
      FieldName = 'cobranca_referencia'
      Size = 50
    end
    object cdsClienteresponsavel_nome: TStringField
      FieldName = 'responsavel_nome'
      Size = 60
    end
    object cdsClienteresponsavel_cpf: TStringField
      FieldName = 'responsavel_cpf'
      Size = 11
    end
    object cdsClienteresponsavel_identidade: TStringField
      FieldName = 'responsavel_identidade'
      Size = 13
    end
    object cdsClienteresponsavel_fone: TStringField
      FieldName = 'responsavel_fone'
      Size = 11
    end
    object cdsClienteresponsavel_email: TStringField
      FieldName = 'responsavel_email'
      Size = 80
    end
    object cdsClienteempresa_nome: TStringField
      FieldName = 'empresa_nome'
      Size = 50
    end
    object cdsClienteempresa_id_cidade: TIntegerField
      FieldName = 'empresa_id_cidade'
    end
    object cdsClienteempresa_id_bairro: TIntegerField
      FieldName = 'empresa_id_bairro'
    end
    object cdsClienteempresa_cep: TStringField
      FieldName = 'empresa_cep'
      Size = 8
    end
    object cdsClienteempresa_logradouro: TStringField
      FieldName = 'empresa_logradouro'
      Size = 80
    end
    object cdsClienteempresa_numero: TIntegerField
      FieldName = 'empresa_numero'
    end
    object cdsClienteempresa_complemento: TStringField
      FieldName = 'empresa_complemento'
      Size = 40
    end
    object cdsClienteempresa_referencia: TStringField
      FieldName = 'empresa_referencia'
      Size = 50
    end
    object cdsClienteempresa_fone: TStringField
      FieldName = 'empresa_fone'
      Size = 11
    end
    object cdsClienteempresa_renda: TFMTBCDField
      FieldName = 'empresa_renda'
      Precision = 15
      Size = 2
    end
    object cdsClientereferencia1_nome: TStringField
      FieldName = 'referencia1_nome'
      Size = 50
    end
    object cdsClientereferencia1_fone: TStringField
      FieldName = 'referencia1_fone'
      Size = 11
    end
    object cdsClientereferencia1_tipo: TStringField
      FieldName = 'referencia1_tipo'
      Size = 15
    end
    object cdsClientereferencia2_nome: TStringField
      FieldName = 'referencia2_nome'
      Size = 50
    end
    object cdsClientereferencia2_fone: TStringField
      FieldName = 'referencia2_fone'
      Size = 11
    end
    object cdsClientereferencia2_tipo: TStringField
      FieldName = 'referencia2_tipo'
      Size = 15
    end
    object cdsClientereferencia3_nome: TStringField
      FieldName = 'referencia3_nome'
      Size = 50
    end
    object cdsClientereferencia3_fone: TStringField
      FieldName = 'referencia3_fone'
      Size = 11
    end
    object cdsClientereferencia3_tipo: TStringField
      FieldName = 'referencia3_tipo'
      Size = 15
    end
    object cdsClientereferencia4_nome: TStringField
      FieldName = 'referencia4_nome'
      Size = 50
    end
    object cdsClientereferencia4_fone: TStringField
      FieldName = 'referencia4_fone'
      Size = 11
    end
    object cdsClientereferencia5_nome: TStringField
      FieldName = 'referencia5_nome'
      Size = 50
    end
    object cdsClientereferencia5_fone: TStringField
      FieldName = 'referencia5_fone'
      Size = 11
    end
    object cdsClientereferencia6_nome: TStringField
      FieldName = 'referencia6_nome'
      Size = 50
    end
    object cdsClientereferencia6_fone: TStringField
      FieldName = 'referencia6_fone'
      Size = 11
    end
    object cdsClienteobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object cdsClienteid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
    end
    object cdsClienteid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
    end
    object cdsClientedata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
    end
    object cdsClientedata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
    end
    object cdsClientedata_ultima_compra: TSQLTimeStampField
      FieldName = 'data_ultima_compra'
    end
  end
  object dspTributacao: TDataSetProvider
    DataSet = dstTributacao
    Options = [poAllowCommandText]
    Left = 440
    Top = 56
  end
  object cdsTributacao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspTributacao'
    Left = 504
    Top = 72
    object cdsTributacaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsTributacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cdsTributacaotipo_tributacao: TStringField
      FieldName = 'tipo_tributacao'
      Size = 1
    end
    object cdsTributacaocst_icms: TIntegerField
      FieldName = 'cst_icms'
    end
    object cdsTributacaoaliquota_icms: TFMTBCDField
      FieldName = 'aliquota_icms'
      Precision = 6
      Size = 2
    end
    object cdsTributacaocst_pis: TIntegerField
      FieldName = 'cst_pis'
    end
    object cdsTributacaoaliquota_pis: TFMTBCDField
      FieldName = 'aliquota_pis'
      Precision = 6
      Size = 2
    end
    object cdsTributacaocst_cofins: TIntegerField
      FieldName = 'cst_cofins'
    end
    object cdsTributacaoaliquota_cofins: TFMTBCDField
      FieldName = 'aliquota_cofins'
      Precision = 6
      Size = 2
    end
    object cdsTributacaomva_interno: TFMTBCDField
      FieldName = 'mva_interno'
      Precision = 8
      Size = 8
    end
  end
  object dstFornecedor: TSQLDataSet
    CommandText = 'select * from fornecedores where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 368
    Top = 136
    object dstFornecedorid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedornome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object dstFornecedorrazao_social: TStringField
      FieldName = 'razao_social'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object dstFornecedortipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object dstFornecedorcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 14
    end
    object dstFornecedorinsc_estadual: TStringField
      FieldName = 'insc_estadual'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 14
    end
    object dstFornecedortransportadora: TBooleanField
      FieldName = 'transportadora'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorid_cidade: TIntegerField
      FieldName = 'id_cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorid_bairro: TIntegerField
      FieldName = 'id_bairro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorcep: TStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object dstFornecedorlogradouro: TStringField
      FieldName = 'logradouro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 80
    end
    object dstFornecedornumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorcomplemento: TStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object dstFornecedorreferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object dstFornecedorfone1: TStringField
      FieldName = 'fone1'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 11
    end
    object dstFornecedorfone2: TStringField
      FieldName = 'fone2'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 11
    end
    object dstFornecedorfone3: TStringField
      FieldName = 'fone3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 11
    end
    object dstFornecedorramal1: TStringField
      FieldName = 'ramal1'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object dstFornecedorramal2: TStringField
      FieldName = 'ramal2'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object dstFornecedorramal3: TStringField
      FieldName = 'ramal3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object dstFornecedorsite: TStringField
      FieldName = 'site'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object dstFornecedoremail: TStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 60
    end
    object dstFornecedorid_banco: TStringField
      FieldName = 'id_banco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object dstFornecedoragencia: TStringField
      FieldName = 'agencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 5
    end
    object dstFornecedoroperacao_conta: TIntegerField
      FieldName = 'operacao_conta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedornumero_conta: TStringField
      FieldName = 'numero_conta'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object dstFornecedorperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 10
      Size = 2
    end
    object dstFornecedorcontato1_nome: TStringField
      FieldName = 'contato1_nome'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object dstFornecedorcontato1_cargo: TStringField
      FieldName = 'contato1_cargo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorcontato1_fone: TStringField
      FieldName = 'contato1_fone'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 11
    end
    object dstFornecedorcontato2_nome: TStringField
      FieldName = 'contato2_nome'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object dstFornecedorcontato2_cargo: TStringField
      FieldName = 'contato2_cargo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorcontato2_fone: TStringField
      FieldName = 'contato2_fone'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 11
    end
    object dstFornecedordata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedordata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstFornecedorid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = dstFornecedor
    Options = [poAllowCommandText]
    Left = 432
    Top = 120
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspFornecedor'
    Left = 504
    Top = 128
    object cdsFornecedorid: TIntegerField
      FieldName = 'id'
    end
    object cdsFornecedornome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 50
    end
    object cdsFornecedorrazao_social: TStringField
      FieldName = 'razao_social'
      Size = 50
    end
    object cdsFornecedortipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object cdsFornecedorinsc_estadual: TStringField
      FieldName = 'insc_estadual'
      Size = 14
    end
    object cdsFornecedortransportadora: TBooleanField
      FieldName = 'transportadora'
    end
    object cdsFornecedorid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object cdsFornecedorid_bairro: TIntegerField
      FieldName = 'id_bairro'
    end
    object cdsFornecedorcep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object cdsFornecedorlogradouro: TStringField
      FieldName = 'logradouro'
      Size = 80
    end
    object cdsFornecedornumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsFornecedorcomplemento: TStringField
      FieldName = 'complemento'
      Size = 40
    end
    object cdsFornecedorreferencia: TStringField
      FieldName = 'referencia'
      Size = 50
    end
    object cdsFornecedorfone1: TStringField
      FieldName = 'fone1'
      Size = 11
    end
    object cdsFornecedorfone2: TStringField
      FieldName = 'fone2'
      Size = 11
    end
    object cdsFornecedorfone3: TStringField
      FieldName = 'fone3'
      Size = 11
    end
    object cdsFornecedorramal1: TStringField
      FieldName = 'ramal1'
      Size = 4
    end
    object cdsFornecedorramal2: TStringField
      FieldName = 'ramal2'
      Size = 4
    end
    object cdsFornecedorramal3: TStringField
      FieldName = 'ramal3'
      Size = 4
    end
    object cdsFornecedorsite: TStringField
      FieldName = 'site'
      Size = 60
    end
    object cdsFornecedoremail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object cdsFornecedorid_banco: TStringField
      FieldName = 'id_banco'
      Size = 3
    end
    object cdsFornecedoragencia: TStringField
      FieldName = 'agencia'
      FixedChar = True
      Size = 5
    end
    object cdsFornecedoroperacao_conta: TIntegerField
      FieldName = 'operacao_conta'
    end
    object cdsFornecedornumero_conta: TStringField
      FieldName = 'numero_conta'
      Size = 12
    end
    object cdsFornecedorperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      Precision = 10
      Size = 2
    end
    object cdsFornecedorcontato1_nome: TStringField
      FieldName = 'contato1_nome'
      Size = 30
    end
    object cdsFornecedorcontato1_cargo: TStringField
      FieldName = 'contato1_cargo'
    end
    object cdsFornecedorcontato1_fone: TStringField
      FieldName = 'contato1_fone'
      Size = 11
    end
    object cdsFornecedorcontato2_nome: TStringField
      FieldName = 'contato2_nome'
      Size = 30
    end
    object cdsFornecedorcontato2_cargo: TStringField
      FieldName = 'contato2_cargo'
    end
    object cdsFornecedorcontato2_fone: TStringField
      FieldName = 'contato2_fone'
      Size = 11
    end
    object cdsFornecedordata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
    end
    object cdsFornecedorid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
    end
    object cdsFornecedordata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
    end
    object cdsFornecedorid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-7'
    HostName = 'localhost'
    Port = 5432
    Database = 'admin'
    User = 'postgres'
    Password = 'admg2'
    TransactIsolationLevel = tiReadCommitted
    Left = 40
    Top = 240
  end
  object ZSequence1: TZSequence
    Connection = ZConnection1
    Left = 40
    Top = 288
  end
  object cdsImpEcf: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ecf_equipamentos where (id = :pid)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspListas'
    Left = 392
    Top = 192
    object cdsImpEcfid: TIntegerField
      FieldName = 'id'
    end
    object cdsImpEcfmodelo: TStringField
      FieldName = 'modelo'
      Size = 30
    end
    object cdsImpEcfcodigo_modelo: TStringField
      FieldName = 'codigo_modelo'
      Size = 10
    end
    object cdsImpEcfnum_serie: TStringField
      FieldName = 'num_serie'
    end
    object cdsImpEcfnum_caixa: TIntegerField
      FieldName = 'num_caixa'
    end
    object cdsImpEcfsequencial: TStringField
      FieldName = 'sequencial'
      Size = 3
    end
    object cdsImpEcftipo_cupom: TStringField
      FieldName = 'tipo_cupom'
      Size = 2
    end
  end
  object dspListas: TDataSetProvider
    DataSet = dstListas
    Options = [poAllowCommandText]
    Left = 80
    Top = 160
  end
  object dstConfig: TSQLDataSet
    CommandText = 'select * from config where (id = 1)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 384
    Top = 16
    object dstConfigid: TIntegerField
      FieldName = 'id'
    end
    object dstConfigdata_atual: TDateField
      FieldName = 'data_atual'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigid_cfop_venda: TIntegerField
      FieldName = 'id_cfop_venda'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigid_cfop_entrada: TIntegerField
      FieldName = 'id_cfop_entrada'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigid_cfop_entrada_fora_uf: TIntegerField
      FieldName = 'id_cfop_entrada_fora_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigid_cfop_venda_fora_uf: TIntegerField
      FieldName = 'id_cfop_venda_fora_uf'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigperc_juros: TFMTBCDField
      FieldName = 'perc_juros'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstConfigperc_multa: TFMTBCDField
      FieldName = 'perc_multa'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 8
    end
    object dstConfiglote: TIntegerField
      FieldName = 'lote'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigativa_sped: TBooleanField
      FieldName = 'ativa_sped'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigativa_sped_pis_cofins: TBooleanField
      FieldName = 'ativa_sped_pis_cofins'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigbusca_referencia: TBooleanField
      FieldName = 'busca_referencia'
      ProviderFlags = [pfInUpdate]
    end
    object dstConfigmd5principal: TStringField
      FieldName = 'md5principal'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
    object dstConfigfarma: TBooleanField
      FieldName = 'farma'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspConfig: TDataSetProvider
    DataSet = dstConfig
    Options = [poAllowCommandText]
    Left = 456
    Top = 16
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    Left = 528
    Top = 16
    object cdsConfigid: TIntegerField
      FieldName = 'id'
    end
    object cdsConfigdata_atual: TDateField
      FieldName = 'data_atual'
    end
    object cdsConfigid_cfop_venda: TIntegerField
      FieldName = 'id_cfop_venda'
    end
    object cdsConfigid_cfop_entrada: TIntegerField
      FieldName = 'id_cfop_entrada'
    end
    object cdsConfigid_cfop_entrada_fora_uf: TIntegerField
      FieldName = 'id_cfop_entrada_fora_uf'
    end
    object cdsConfigid_cfop_venda_fora_uf: TIntegerField
      FieldName = 'id_cfop_venda_fora_uf'
    end
    object cdsConfigperc_juros: TFMTBCDField
      FieldName = 'perc_juros'
      Precision = 10
      Size = 8
    end
    object cdsConfigperc_multa: TFMTBCDField
      FieldName = 'perc_multa'
      Precision = 10
      Size = 8
    end
    object cdsConfiglote: TIntegerField
      FieldName = 'lote'
    end
    object cdsConfigativa_sped: TBooleanField
      FieldName = 'ativa_sped'
    end
    object cdsConfigativa_sped_pis_cofins: TBooleanField
      FieldName = 'ativa_sped_pis_cofins'
    end
    object cdsConfigbusca_referencia: TBooleanField
      FieldName = 'busca_referencia'
    end
    object cdsConfigmd5principal: TStringField
      FieldName = 'md5principal'
      Size = 32
    end
    object cdsConfigfarma: TBooleanField
      FieldName = 'farma'
    end
  end
  object cdsListaNaturezasoperacao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 184
    Data = {
      850000009619E0BD010000001800000005000000000003000000850002696404
      000100000000000964657363726963616F010049000000010005574944544802
      0002002800047469706F01004900000001000557494454480200020001000A69
      645F6465637265746F04000100000000000D7065726D6974655F76656E646102
      000300000000000000}
    object cdsListaNaturezasoperacaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsListaNaturezasoperacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cdsListaNaturezasoperacaotipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsListaNaturezasoperacaoid_decreto: TIntegerField
      FieldName = 'id_decreto'
    end
    object cdsListaNaturezasoperacaopermite_venda: TBooleanField
      FieldName = 'permite_venda'
    end
  end
end
