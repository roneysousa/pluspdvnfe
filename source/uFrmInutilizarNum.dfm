object frmInutilizarNum: TfrmInutilizarNum
  Left = 315
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inutilizar Numera'#231#227'o'
  ClientHeight = 267
  ClientWidth = 393
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
    Width = 393
    Height = 226
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 62
      Width = 40
      Height = 13
      Caption = 'Ano (00)'
      Transparent = True
    end
    object Label2: TLabel
      Left = 120
      Top = 62
      Width = 35
      Height = 13
      Caption = 'Modelo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 223
      Top = 62
      Width = 57
      Height = 13
      Caption = 'N'#186'. da S'#233'rie'
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 150
      Width = 55
      Height = 13
      Caption = 'Justificativa'
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 105
      Width = 67
      Height = 13
      Caption = 'N'#250'mero Inicial'
      Transparent = True
    end
    object Label6: TLabel
      Left = 120
      Top = 105
      Width = 62
      Height = 13
      Caption = 'N'#250'mero Final'
      Transparent = True
    end
    object Label7: TLabel
      Left = 16
      Top = 16
      Width = 20
      Height = 13
      Caption = 'Loja'
      Transparent = True
    end
    object edtAno: TEdit
      Left = 16
      Top = 78
      Width = 90
      Height = 21
      MaxLength = 2
      TabOrder = 1
      OnExit = edtAnoExit
      OnKeyPress = edtAnoKeyPress
    end
    object edtModelo: TEdit
      Left = 120
      Top = 78
      Width = 90
      Height = 21
      TabStop = False
      MaxLength = 2
      ReadOnly = True
      TabOrder = 2
      Text = '55'
    end
    object edtSerie: TEdit
      Left = 223
      Top = 78
      Width = 90
      Height = 21
      MaxLength = 3
      TabOrder = 3
      OnKeyPress = edtSerieKeyPress
    end
    object edtNumInicial: TEdit
      Left = 16
      Top = 123
      Width = 90
      Height = 21
      MaxLength = 8
      TabOrder = 4
      OnExit = edtNumInicialExit
      OnKeyPress = edtNumInicialKeyPress
    end
    object edtNumFinal: TEdit
      Left = 120
      Top = 123
      Width = 90
      Height = 21
      MaxLength = 8
      TabOrder = 5
      OnExit = edtNumFinalExit
      OnKeyPress = edtNumFinalKeyPress
    end
    object edtJustificativa: TEdit
      Left = 16
      Top = 166
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = edtJustificativaKeyPress
    end
    object edtRazaoSocial: TEdit
      Left = 16
      Top = 32
      Width = 362
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 226
    Width = 393
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
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
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
end
