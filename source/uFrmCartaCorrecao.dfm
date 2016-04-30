object FrmCartaCorrecao: TFrmCartaCorrecao
  Left = 208
  Top = 61
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Carta de Corre'#231#227'o'
  ClientHeight = 499
  ClientWidth = 809
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
    Width = 809
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 757
      Height = 78
      Caption = 
        'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186'-A do art. 7'#186' do Con' +
        'v'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utilizada para '#13 +
        #10'regulariza'#231#227'o de erro ocorrido na emiss'#227'o de documento fiscal, ' +
        'desde que o erro n'#227'o esteja relacionado com: '#13#10'    I - as vari'#225'v' +
        'eis que determinam o valor do imposto tais como: base de c'#225'lculo' +
        ', al'#237'quota, diferen'#231'a de pre'#231'o, quantidade, valor da '#13#10'        o' +
        'pera'#231#227'o ou da presta'#231#227'o; '#13#10'    II - a corre'#231#227'o de dados cadastra' +
        'is que implique mudan'#231'a do remetente ou do destinat'#225'rio; '#13#10'    I' +
        'II - a data de emiss'#227'o ou de sa'#237'da.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 24
      Top = 15
      Width = 229
      Height = 13
      Caption = 'Condi'#231#245'es de Uso da Carta de Corre'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblOrgao: TLabel
      Left = 760
      Top = 8
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Caption = '....'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 809
    Height = 329
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 24
      Top = 8
      Width = 141
      Height = 13
      Caption = '* Data e Hora do Evento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 173
      Top = 8
      Width = 135
      Height = 13
      Caption = '* N'#250'mero de Seq'#252#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 24
      Top = 48
      Width = 61
      Height = 13
      Caption = '* Corre'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 25
      Top = 265
      Width = 210
      Height = 13
      Caption = 'M'#237'nimo de 15 e m'#225'ximo de 1000 caracteres.'
      Transparent = True
    end
    object Label7: TLabel
      Left = 315
      Top = 8
      Width = 50
      Height = 13
      Caption = 'N'#186'. NF-e'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 430
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Chave de Acesso'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtDataHora: TEdit
      Left = 24
      Top = 24
      Width = 145
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtSequencia: TEdit
      Left = 173
      Top = 24
      Width = 138
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object mmnCorrecao: TMemo
      Left = 24
      Top = 64
      Width = 757
      Height = 198
      Hint = 'Digite o texto de Corre'#231#227'o'
      TabOrder = 2
      OnExit = mmnCorrecaoExit
    end
    object DBEdit1: TDBEdit
      Left = 315
      Top = 24
      Width = 111
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'numero_nota_fiscal'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 430
      Top = 24
      Width = 353
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'chave_acesso'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 281
      Width = 807
      Height = 47
      ActivePage = TabSheet2
      Align = alBottom
      TabOrder = 5
      Visible = False
      object TabSheet1: TTabSheet
        Caption = 'Retorno'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 799
          Height = 19
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Browse'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 799
          Height = 19
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C00000094520000F70100000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 458
    Width = 809
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object lblMensagem: TLabel
      Left = 240
      Top = 14
      Width = 215
      Height = 13
      Caption = 'Por favor, aguarde retorno do sefaz...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object btnEnvia: TBitBtn
      Left = 624
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Enviar Carta de Corre'#231#227'o'
      Caption = '&Enviar'
      TabOrder = 0
      OnClick = btnEnviaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F07777777777
        7777F0FFFF78FFFFFFF7F0FFFF777777FFF70088888837778887077777778378
        82677FFFFFFF883787677FF888FFF083788778888888F08837807F88888FF0F8
        82007FFFFFFFF0FF83277F88F88FF0FF00717F88888FF080FF007F88888FF00F
        FFFF7F88888FF0FFFFFF7FFFFFFFF0FFFFFF0777777770FFFFFF}
    end
    object btnCancelar: TBitBtn
      Left = 714
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar opera'#231#227'o'
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      Kind = bkCancel
    end
    object btnImprimir: TBitBtn
      Left = 25
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Imprimir Ultima Carta Corre'#231#227'o'
      Caption = 'Imprimir'
      TabOrder = 2
      Visible = False
      OnClick = btnImprimirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDB0000000000000000000000DBDBDBDB00DBDBDBDB
        DBDBDBDBDB00DB00DBDB00000000000000000000000000DB00DB00DBDBDBDBDB
        DBFCFCFCDBDB000000DB00DBDBDBDBDBDB929292DBDB00DB00DB000000000000
        00000000000000DBDB0000DBDBDBDBDBDBDBDBDBDB00DB00DB00DB0000000000
        0000000000DB00DB0000DBDB00FFFFFFFFFFFFFFFF00DB00DB00DBDBDB00FF00
        00000000FF00000000DBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00FF
        0000000000FF00DBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00
        0000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
    end
  end
  object dsCadastro: TDataSource
    DataSet = dmNFe.cdsNotaFiscal
    Left = 448
    Top = 208
  end
end
