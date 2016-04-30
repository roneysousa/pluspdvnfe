object FrmConfig: TFrmConfig
  Left = 314
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 308
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 49
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
      FocusControl = DBEdit2
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 186
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'cnpj'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 65
      Width = 500
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'razao_social'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 267
    Width = 563
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 365
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object BitBtn2: TBitBtn
      Left = 462
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = BitBtn2Click
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 563
    Height = 154
    Align = alClient
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 174
      Height = 13
      Caption = 'N'#250'mero de s'#233'rie do certificado digital'
      FocusControl = dbeCertificado
    end
    object dbeCertificado: TDBEdit
      Left = 16
      Top = 32
      Width = 500
      Height = 21
      CharCase = ecUpperCase
      DataField = 'certificado_numero_serie'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 16
      Top = 56
      Width = 185
      Height = 57
      Caption = '[ Ambiente da NF-e ]'
      DataField = 'ambiente_nfe'
      DataSource = dsCadastro
      Items.Strings = (
        '1 - Produ'#231#227'o'
        '2 - Homologa'#231#227'o')
      TabOrder = 1
      Values.Strings = (
        '1'
        '2')
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = dmDados.cdsEmpresa
    Left = 312
    Top = 184
  end
end
