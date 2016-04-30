object FrmLocVenda: TFrmLocVenda
  Left = 265
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Venda'
  ClientHeight = 396
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 138
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 46
      Height = 13
      Caption = 'N'#186'.Venda'
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 32
      Height = 13
      Caption = 'Cliente'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label4: TLabel
      Left = 136
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label5: TLabel
      Left = 496
      Top = 88
      Width = 28
      Height = 13
      Caption = 'C&FOP'
      FocusControl = edtCFOP
      Transparent = True
    end
    object spCFOP: TSpeedButton
      Left = 592
      Top = 103
      Width = 23
      Height = 22
      Hint = 'Clique aqui para localizar CFOP do produto/servi'#231'o'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777770077777777777770FF077777777777077FF07777
        7777770777FF077777777770777FFF00777777790777F1111077777790771117
        0B77777770799170B77777777709990B77777777770990B77777777777090B77
        777777777770B777777777777777777777777777777777777777}
    end
    object Label6: TLabel
      Left = 496
      Top = 8
      Width = 33
      Height = 13
      Caption = '&Tabela'
      Visible = False
    end
    object edtVenda: TEdit
      Left = 16
      Top = 21
      Width = 121
      Height = 21
      MaxLength = 7
      TabOrder = 0
      OnChange = edtVendaChange
      OnEnter = edtVendaEnter
      OnExit = edtVendaExit
      OnKeyPress = edtVendaKeyPress
    end
    object btnConsulta: TBitBtn
      Left = 144
      Top = 18
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 1
      OnClick = btnConsultaClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF0084000000840000008400000084000000840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00FF00FF008400
        0000840000008400000084000000840000008400000084000000840000008400
        000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008400000000FFFF0084000000FF00FF00FF00FF00FF00FF008400
        000000FFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 64
      Width = 473
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'NOME_CLIENTE'
      DataSource = dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 104
      Width = 108
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'data_venda'
      DataSource = dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 104
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'valor_mercadorias'
      DataSource = dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtCFOP: TEdit
      Left = 496
      Top = 104
      Width = 92
      Height = 21
      MaxLength = 5
      TabOrder = 5
      OnExit = edtCFOPExit
      OnKeyPress = edtCFOPKeyPress
    end
    object edtCPFCGC: TEdit
      Left = 496
      Top = 64
      Width = 121
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object edtTabela: TCurrencyEdit
      Left = 496
      Top = 24
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00;'
      MaxLength = 3
      MaxValue = 1.000000000000000000
      TabOrder = 7
      Value = 1.000000000000000000
      Visible = False
      OnKeyPress = edtTabelaKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 138
    Width = 641
    Height = 217
    Align = alClient
    TabOrder = 1
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 639
      Height = 215
      Align = alClient
      Ctl3D = False
      DataSource = dsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id_produto'
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
          FieldName = 'descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 279
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id_unidade'
          Title.Alignment = taCenter
          Title.Caption = 'UND.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Title.Caption = 'Quant.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_unitario'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Unit'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_desconto_item'
          Title.Alignment = taRightJustify
          Title.Caption = 'R$ Desc.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id_ncm'
          Title.Alignment = taCenter
          Title.Caption = 'NCM'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 355
    Width = 641
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object btnConfirma: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = btnConfirmaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancela&r'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsVendaItensNFE
    Left = 240
    Top = 168
  end
  object dstConsulta: TSQLDataSet
    CommandText = 
      'Select m.id, m.data_venda, m.situacao, m.numero_nfe from vendas ' +
      'm where (m.id = :pVENDA) and (m.situacao = '#39'F'#39');'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
    Left = 296
    Top = 184
  end
  object dspConsulta: TDataSetProvider
    DataSet = dstConsulta
    Options = [poAllowCommandText]
    Left = 336
    Top = 186
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select m.id, m.data_venda, m.situacao, m.numero_nfe from vendas ' +
      'm where (m.id = :pVENDA) and (m.situacao = '#39'F'#39');'
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 384
    Top = 186
    object cdsVendaid: TIntegerField
      FieldName = 'id'
    end
    object cdsVendadata_venda: TSQLTimeStampField
      FieldName = 'data_venda'
    end
    object cdsVendasituacao: TStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 1
    end
    object cdsVendanumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
    end
  end
end
