object frmCadDuplicata: TfrmCadDuplicata
  Left = 267
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Duplicata'
  ClientHeight = 223
  ClientWidth = 350
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
    Width = 350
    Height = 182
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 24
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = dbeNumero
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 64
      Width = 82
      Height = 13
      Caption = 'Data Vencimento'
      Transparent = True
    end
    object Label3: TLabel
      Left = 20
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = dbeValor
      Transparent = True
    end
    object dbeNumero: TDBEdit
      Left = 20
      Top = 40
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DUP_NUMERO_DUPLICATA'
      DataSource = dsCadastro
      MaxLength = 10
      TabOrder = 0
      OnExit = dbeNumeroExit
      OnKeyPress = dbeNumeroKeyPress
    end
    object dbeValor: TDBEdit
      Left = 20
      Top = 120
      Width = 130
      Height = 21
      DataField = 'DUP_VALOR'
      DataSource = dsCadastro
      MaxLength = 10
      TabOrder = 2
      OnExit = dbeValorExit
      OnKeyPress = dbeValorKeyPress
    end
    object dbeDtVencimento: TDBDateEdit
      Left = 20
      Top = 80
      Width = 129
      Height = 21
      DataField = 'DUP_DATA_VENCIMENTO'
      DataSource = dsCadastro
      NumGlyphs = 2
      TabOrder = 1
      OnExit = dbeDtVencimentoExit
      OnKeyPress = dbeDtVencimentoKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 182
    Width = 350
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 168
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
    object BitBtn2: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsListaDuplicatas
    Left = 264
    Top = 128
  end
end
