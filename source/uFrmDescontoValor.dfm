object FrmDescontoValor: TFrmDescontoValor
  Left = 408
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Desconto em Valor'
  ClientHeight = 189
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 395
    Height = 148
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Sub-Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 88
      Height = 13
      Caption = 'Valor do Desconto'
      Transparent = True
    end
    object edtValor: TCurrencyEdit
      Left = 24
      Top = 32
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = ',0.00;'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtDesconto: TCurrencyEdit
      Left = 24
      Top = 80
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;'
      MaxLength = 9
      TabOrder = 0
      OnExit = edtDescontoExit
      OnKeyPress = edtDescontoKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 148
    Width = 395
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Confirma a opera'#231#227'o'
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
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancela a opera'#231#227'o'
      Caption = '&Cancelar'
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
