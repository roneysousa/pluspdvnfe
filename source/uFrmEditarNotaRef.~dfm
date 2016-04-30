object FrmEditarNotaReferencia: TFrmEditarNotaReferencia
  Left = 194
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NF-e/CT-e/Nota Fiscal Refer'#234'nciada'
  ClientHeight = 310
  ClientWidth = 594
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
    Width = 594
    Height = 269
    Align = alClient
    TabOrder = 0
    object rgTipo: TRadioGroup
      Left = 1
      Top = 1
      Width = 592
      Height = 48
      Align = alTop
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'NF-e'
        'CT-e'
        'Nota Fiscal')
      ParentFont = False
      TabOrder = 0
      OnClick = rgTipoClick
    end
    object gbxNfe: TGroupBox
      Left = 1
      Top = 49
      Width = 592
      Height = 68
      Align = alTop
      Caption = '[ NF-e/CT-e]'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 109
        Height = 13
        Caption = 'Chave de Acesso *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object spFornecedor: TSpeedButton
        Left = 513
        Top = 30
        Width = 23
        Height = 22
        Hint = 'Localizar Fornecedor'
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
        OnClick = spFornecedorClick
      end
      object edtChaveAcesso: TMaskEdit
        Left = 16
        Top = 32
        Width = 496
        Height = 21
        CharCase = ecUpperCase
        EditMask = '9999 9999 9999 9999 9999 9999 9999 9999 9999 9999 9999;0;_'
        MaxLength = 54
        TabOrder = 0
        OnExit = edtChaveAcessoExit
        OnKeyPress = edtChaveAcessoKeyPress
      end
    end
    object gbxNota: TGroupBox
      Left = 1
      Top = 117
      Width = 592
      Height = 151
      Align = alClient
      Caption = '[ Nota Fiscal ]'
      TabOrder = 2
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 39
        Height = 13
        Caption = 'S'#233'rie *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 186
        Top = 16
        Width = 53
        Height = 13
        Caption = 'N'#250'mero *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 384
        Top = 16
        Width = 51
        Height = 13
        Caption = 'Modelo *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 16
        Top = 57
        Width = 26
        Height = 13
        Caption = 'UF *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 16
        Top = 97
        Width = 41
        Height = 13
        Caption = 'CNPJ *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 186
        Top = 57
        Width = 186
        Height = 13
        Caption = 'M'#234's e ano de emiss'#227'o (mm/aa) *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtSerie: TMaskEdit
        Left = 16
        Top = 32
        Width = 120
        Height = 21
        EditMask = '###;0;_'
        MaxLength = 3
        TabOrder = 0
        OnKeyPress = edtSerieKeyPress
      end
      object edtNumero: TEdit
        Left = 186
        Top = 32
        Width = 121
        Height = 21
        MaxLength = 9
        TabOrder = 1
        OnKeyPress = edtNumeroKeyPress
      end
      object edtModelo: TEdit
        Left = 385
        Top = 32
        Width = 56
        Height = 21
        Color = clSilver
        Enabled = False
        TabOrder = 2
      end
      object cmbUf: TComboBox
        Left = 16
        Top = 72
        Width = 57
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 3
        OnKeyPress = cmbUfKeyPress
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PR'
          'PI'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
      end
      object edtCNPJ: TMaskEdit
        Left = 16
        Top = 112
        Width = 120
        Height = 21
        EditMask = '99.999.999/9999-99;0;_'
        MaxLength = 18
        TabOrder = 5
        OnExit = edtCNPJExit
        OnKeyPress = edtCNPJKeyPress
      end
      object edtMesAno: TMaskEdit
        Left = 186
        Top = 72
        Width = 71
        Height = 21
        EditMask = '##/##;0;_'
        MaxLength = 5
        TabOrder = 4
        OnExit = edtMesAnoExit
        OnKeyPress = edtMesAnoKeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 269
    Width = 594
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOk: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = btnOkClick
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
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML'
    Left = 148
    Top = 24
  end
end
