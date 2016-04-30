inherited frmLocalizarCliente: TfrmLocalizarCliente
  Caption = 'Localizar Cliente'
  ClientHeight = 438
  ClientWidth = 720
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 720
    Height = 65
    inherited Label1: TLabel
      Left = 113
      Top = 15
    end
    inherited edtConsultar: TEdit
      Left = 113
      Top = 31
      Width = 560
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 5
      Width = 100
      Height = 54
      Caption = '[ Destinat'#225'rio ]'
      ItemIndex = 0
      Items.Strings = (
        '&Cliente'
        '&Fornecedor')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  inherited Panel2: TPanel
    Top = 65
    Width = 720
    Height = 354
    inherited grdConsultar: TDBGrid
      Width = 718
      Height = 253
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razao_social'
          Title.Caption = 'Raz'#227'o Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_cnpj'
          Title.Alignment = taCenter
          Title.Caption = 'CPF/CNPJ'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_cidade'
          Title.Caption = 'Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'identidade_uf'
          Title.Caption = 'UF'
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 33
      Top = 56
      Width = 526
      Height = 171
      Ctl3D = False
      DataSource = dsForn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clRed
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Visible = False
      OnDblClick = grdConsultarDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razao_social'
          Title.Caption = 'Raz'#227'o Social'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_cnpj'
          Title.Alignment = taCenter
          Title.Caption = 'CPF/CNPJ'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'for_cidade'
          Title.Caption = 'Cidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Caption = 'UF'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'logradouro'
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero'
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end>
    end
    object pnlEndereco: TPanel
      Left = 1
      Top = 254
      Width = 718
      Height = 99
      Align = alBottom
      TabOrder = 2
      object Label4: TLabel
        Left = 14
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit1
        Transparent = True
      end
      object Label6: TLabel
        Left = 598
        Top = 8
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit4
        Transparent = True
      end
      object Label10: TLabel
        Left = 14
        Top = 48
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit5
        Transparent = True
      end
      object Label11: TLabel
        Left = 321
        Top = 48
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit8
        Transparent = True
      end
      object Label58: TLabel
        Left = 598
        Top = 48
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit11
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 14
        Top = 24
        Width = 577
        Height = 21
        Color = clSilver
        DataField = 'logradouro'
        DataSource = dsConsultar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 598
        Top = 24
        Width = 100
        Height = 21
        Color = clSilver
        DataField = 'numero'
        DataSource = dsConsultar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 14
        Top = 64
        Width = 300
        Height = 21
        Color = clSilver
        DataField = 'nome_bairro'
        DataSource = dsConsultar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 321
        Top = 64
        Width = 271
        Height = 21
        Color = clSilver
        DataField = 'nome_cidade'
        DataSource = dsConsultar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 598
        Top = 64
        Width = 30
        Height = 21
        Color = clSilver
        DataField = 'identidade_uf'
        DataSource = dsConsultar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 419
    Width = 720
  end
  inherited cdsConsultar: TClientDataSet
    OnCalcFields = cdsConsultarCalcFields
    object cdsConsultarid: TIntegerField
      FieldName = 'id'
      DisplayFormat = '0000000'
    end
    object cdsConsultarcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object cdsConsultartipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 60
    end
    object cdsConsultarrazao_social: TStringField
      FieldName = 'razao_social'
      Size = 60
    end
    object cdsConsultarlogradouro: TStringField
      FieldName = 'logradouro'
      Size = 80
    end
    object cdsConsultarnumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsConsultarnome_cidade: TStringField
      FieldName = 'nome_cidade'
      Size = 60
    end
    object cdsConsultarnome_bairro: TStringField
      FieldName = 'nome_bairro'
      Size = 60
    end
    object cdsConsultaridentidade_uf: TStringField
      FieldName = 'identidade_uf'
      FixedChar = True
      Size = 2
    end
    object cdsConsultarCNPJ_CPF: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CNPJ_CPF'
    end
  end
  inherited dstConsultar: TSQLDataSet
    CommandText = 
      'select CL.id, cl.cpf_cnpj, cl.tipo_pessoa, CL.nome_fantasia, CL.' +
      'razao_social, CL.logradouro, CL.numero, CI.nome as NOME_CIDADE,'#13 +
      #10'BA.nome as NOME_BAIRRO, CL.identidade_uf from CLIENTES CL'#13#10'Left' +
      ' Join cidades CI ON CL.id_cidade = CI.id'#13#10'Left Join bairros BA O' +
      'N CL.id_bairro = BA.id'#13#10'order by CL.razao_social'
    MaxBlobSize = -1
    SQLConnection = dmDados.sqlConexao
    Left = 240
    Top = 161
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForn'
    OnCalcFields = cdsFornecedoresCalcFields
    Left = 360
    Top = 209
    object cdsFornecedoresid: TIntegerField
      FieldName = 'id'
      DisplayFormat = '00000'
    end
    object cdsFornecedorestipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorescpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object cdsFornecedoresrazao_social: TStringField
      FieldName = 'razao_social'
      Size = 50
    end
    object cdsFornecedoresnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 50
    end
    object cdsFornecedoreslogradouro: TStringField
      FieldName = 'logradouro'
      Size = 80
    end
    object cdsFornecedoresnumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsFornecedoresfor_cidade: TStringField
      FieldName = 'for_cidade'
      Size = 60
    end
    object cdsFornecedoresfor_bairro: TStringField
      FieldName = 'for_bairro'
      Size = 60
    end
    object cdsFornecedoresuf: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedoresCNPJ_CPF: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsForn: TDataSource
    DataSet = cdsFornecedores
    Left = 424
    Top = 217
  end
  object dspForn: TDataSetProvider
    DataSet = dstForn
    Options = [poAllowCommandText]
    Left = 304
    Top = 209
  end
  object dstForn: TSQLDataSet
    CommandText = 
      'select F.id, f.tipo_pessoa, f.cpf_cnpj, f.razao_social, f.nome_f' +
      'antasia, f.logradouro, f.numero, '#13#10'ci.nome as FOR_CIDADE, ba.nom' +
      'e as FOR_BAIRRO, ci.uf from FORNECEDORES F '#13#10'Left Join cidades C' +
      'I ON f.id_cidade = CI.id'#13#10'Left Join bairros BA ON f.id_bairro = ' +
      'BA.id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDados.sqlConexao
    Left = 248
    Top = 209
  end
end
