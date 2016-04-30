object frmCadVolumes: TfrmCadVolumes
  Left = 347
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Volumes'
  ClientHeight = 344
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 303
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = dbeQuant
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Esp'#233'cie'
      FocusControl = dbeEspecie
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 30
      Height = 13
      Caption = 'Marca'
      FocusControl = dbeMarca
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 144
      Width = 55
      Height = 13
      Caption = 'Numera'#231#227'o'
      FocusControl = dbeNumeracao
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 184
      Width = 84
      Height = 13
      Caption = 'Peso L'#237'quido (kg)'
      FocusControl = dbePesoLiquido
      Transparent = True
    end
    object Label6: TLabel
      Left = 16
      Top = 224
      Width = 73
      Height = 13
      Caption = 'Peso Bruto (kg)'
      FocusControl = dbePesoBruto
      Transparent = True
    end
    object dbeQuant: TDBEdit
      Left = 16
      Top = 40
      Width = 212
      Height = 21
      DataField = 'VOL_QUANTIDADE'
      DataSource = dsCadastroItens
      MaxLength = 5
      TabOrder = 0
    end
    object dbeEspecie: TDBEdit
      Left = 16
      Top = 80
      Width = 490
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VOL_ESPECIE'
      DataSource = dsCadastroItens
      TabOrder = 1
    end
    object dbeMarca: TDBEdit
      Left = 16
      Top = 120
      Width = 490
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VOL_MARCA'
      DataSource = dsCadastroItens
      TabOrder = 2
    end
    object dbeNumeracao: TDBEdit
      Left = 16
      Top = 160
      Width = 490
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VOL_NUMERACAO'
      DataSource = dsCadastroItens
      TabOrder = 3
    end
    object dbePesoLiquido: TDBEdit
      Left = 16
      Top = 200
      Width = 212
      Height = 21
      DataField = 'VOL_PESO_LIQUIDO'
      DataSource = dsCadastroItens
      MaxLength = 12
      TabOrder = 4
    end
    object dbePesoBruto: TDBEdit
      Left = 16
      Top = 240
      Width = 212
      Height = 21
      DataField = 'VOL_PESO_BRUTO'
      DataSource = dsCadastroItens
      MaxLength = 12
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 288
      Top = 224
      Width = 320
      Height = 120
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 303
    Width = 533
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 356
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = btnOKClick
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
    object btnFechar: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnFecharClick
      Kind = bkCancel
    end
  end
  object dsCadastroItens: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsListaVolumes
    Left = 264
    Top = 32
  end
end
