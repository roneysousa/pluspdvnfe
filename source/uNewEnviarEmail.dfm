object FrmNewEmailSend: TFrmNewEmailSend
  Left = 334
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'E-mail'
  ClientHeight = 385
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 98
    Width = 35
    Height = 13
    Caption = 'Para : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 144
    Width = 55
    Height = 13
    Caption = 'Assunto : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 186
    Width = 169
    Height = 13
    Caption = 'Digite o texto da mensagem : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 52
    Width = 24
    Height = 13
    Caption = 'De : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMens: TLabel
    Left = 217
    Top = 329
    Width = 204
    Height = 13
    Caption = 'Aguarde por favor, enviando email...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object edtPara: TEdit
    Left = 8
    Top = 117
    Width = 604
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 1
    OnExit = edtParaExit
  end
  object memTexto: TMemo
    Left = 8
    Top = 205
    Width = 604
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object edtAssunto: TEdit
    Left = 8
    Top = 163
    Width = 604
    Height = 21
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 642
    Height = 51
    Align = alTop
    TabOrder = 6
    Visible = False
    object Label6: TLabel
      Left = 168
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Porta : '
    end
    object Label7: TLabel
      Left = 232
      Top = 5
      Width = 46
      Height = 13
      Caption = 'Usu'#225'rio : '
    end
    object Label8: TLabel
      Left = 391
      Top = 5
      Width = 40
      Height = 13
      Caption = 'Senha : '
    end
    object Label9: TLabel
      Left = 8
      Top = 5
      Width = 84
      Height = 13
      Caption = 'Endere'#231'o SMTP : '
    end
    object edtPorta: TEdit
      Left = 168
      Top = 24
      Width = 58
      Height = 21
      TabOrder = 1
      Text = '587'
    end
    object edtUsuario: TEdit
      Left = 232
      Top = 24
      Width = 153
      Height = 21
      TabOrder = 2
    end
    object edtSenha: TEdit
      Left = 391
      Top = 24
      Width = 154
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
    object edtSMTP: TEdit
      Left = 8
      Top = 24
      Width = 154
      Height = 21
      TabOrder = 0
      Text = 'smtp.gmail.com'
    end
  end
  object rgEmail: TRadioGroup
    Left = 8
    Top = 300
    Width = 149
    Height = 35
    Caption = 'Modo de envio : '
    Columns = 3
    ItemIndex = 1
    Items.Strings = (
      'Indy'
      'Synapse')
    TabOrder = 5
    Visible = False
  end
  object edtDe: TEdit
    Left = 8
    Top = 71
    Width = 604
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = 'Infog2'
  end
  object edtArquivoAnexo: TEdit
    Left = 128
    Top = 342
    Width = 361
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object Edit2: TEdit
    Left = 7
    Top = 332
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'D:\anexo2.xml'
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 366
    Width = 642
    Height = 19
    Panels = <>
  end
  object BmsXPProgressBar1: TBmsXPProgressBar
    Left = 136
    Top = 311
    Width = 349
    Height = 16
    BackColors.StartColor = 14671839
    BackColors.EndColor = clWhite
    BarColors.StartColor = 11530400
    BarColors.EndColor = 5290064
    TabOrder = 10
  end
  object btnEnviar: TBitBtn
    Left = 500
    Top = 305
    Width = 113
    Height = 25
    Caption = '&Enviar'
    TabOrder = 4
    OnClick = btnEnviarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
      AAAA00000000000AAAAA0FFFFFFFFF0AAAAA00FFFFFF000000000F0FFFFF0FF7
      77700FF0FFF00B8008700F0F000F0F07F07000F7F7F70B07B0700F7F7F7F0F07
      F070A0F7F7F70B07B070AA0F7F7F0F07F070AAA0F7F00B07BFB0AAAA000A0008
      8000AAAAAAAAAA07F0AAAAAAAAAAAA800AAAAAAAAAAAAAAAAAAA}
  end
end
