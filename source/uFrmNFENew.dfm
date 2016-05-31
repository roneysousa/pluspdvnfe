object FrmNotaFiscalEletronicaNovo: TFrmNotaFiscalEletronicaNovo
  Left = 230
  Top = 80
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Nota Fiscal Eletr'#244'nica'
  ClientHeight = 591
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1003
    Height = 550
    ActivePage = tbsDados
    Align = alClient
    TabOrder = 0
    object tbsDados: TTabSheet
      Caption = '&Dados'
      object pnlTopo: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 216
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 34
          Height = 13
          Caption = 'Loja *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 81
          Top = 46
          Width = 70
          Height = 13
          Caption = 'CNPJ/CPF *'
          FocusControl = dbeCNPJCPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 280
          Top = 46
          Width = 96
          Height = 13
          Caption = 'Raz'#227'o Social/Nome'
          FocusControl = dbeRazaoDestinatario
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 86
          Width = 42
          Height = 13
          Caption = 'Modelo'
          FocusControl = dbeModelo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 68
          Top = 86
          Width = 53
          Height = 13
          Caption = 'N'#250'mero *'
          FocusControl = dbeNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 163
          Top = 86
          Width = 39
          Height = 13
          Caption = 'S'#233'rie *'
          FocusControl = dbeSerie
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 236
          Top = 86
          Width = 87
          Height = 13
          Caption = 'Data Emiss'#227'o *'
          FocusControl = dbeDTEMIS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 772
          Top = 46
          Width = 51
          Height = 13
          Caption = 'N'#186'. Cupom'
          FocusControl = dbeCupom
          Visible = False
        end
        object Label9: TLabel
          Left = 486
          Top = 86
          Width = 138
          Height = 13
          Caption = 'Natureza da Opera'#231#227'o *'
          FocusControl = cmbNatureza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 16
          Top = 128
          Width = 129
          Height = 13
          Caption = 'Forma de Pagamento *'
          FocusControl = cmbFormaPaga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 280
          Top = 128
          Width = 112
          Height = 13
          Caption = 'Forma de Emiss'#227'o *'
          FocusControl = cmbEmissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 438
          Top = 128
          Width = 136
          Height = 13
          Caption = 'Finalidade de Emiss'#227'o *'
          FocusControl = cmbFinalidadeEmissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spLocCliente: TSpeedButton
          Left = 254
          Top = 61
          Width = 23
          Height = 22
          Hint = 'Clique aqui para localizar destinat'#225'rio'
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
          OnClick = spLocClienteClick
        end
        object Label51: TLabel
          Left = 16
          Top = 46
          Width = 35
          Height = 13
          Caption = 'Tipo *'
          FocusControl = dbeCNPJCPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label116: TLabel
          Left = 361
          Top = 86
          Width = 97
          Height = 13
          Caption = 'Data Entrada/Sa'#237'da'
          FocusControl = dbeDTEMIS
        end
        object Label117: TLabel
          Left = 490
          Top = 6
          Width = 84
          Height = 13
          Caption = 'Chave de Acesso'
          FocusControl = EditChaveAcesso
          Transparent = True
        end
        object DBText1: TDBText
          Left = 864
          Top = 50
          Width = 63
          Height = 17
          DataField = 'id'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label118: TLabel
          Left = 168
          Top = 168
          Width = 130
          Height = 13
          Caption = 'Destino da Opera'#231#227'o *'
          FocusControl = cmbDestinoOpe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label119: TLabel
          Left = 384
          Top = 168
          Width = 127
          Height = 13
          Caption = 'Tipo de Atendimento *'
          FocusControl = cmbTipoOperacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object dbeCNPJCPF: TDBEdit
          Left = 80
          Top = 62
          Width = 173
          Height = 21
          DataField = 'destinatario_cnpjcpf'
          DataSource = dsCadastro
          TabOrder = 3
          OnChange = dbeCNPJCPFChange
          OnExit = dbeCNPJCPFExit
          OnKeyPress = dbeCNPJCPFKeyPress
        end
        object dbeRazaoDestinatario: TDBEdit
          Left = 280
          Top = 62
          Width = 430
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'destinatario_razaosocial'
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
        object dbeModelo: TDBEdit
          Left = 16
          Top = 102
          Width = 49
          Height = 21
          TabStop = False
          Color = clSilver
          DataField = 'modelo'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 5
        end
        object dbeNumero: TDBEdit
          Left = 68
          Top = 102
          Width = 92
          Height = 21
          DataField = 'numero_nota_fiscal'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 6
          OnExit = dbeNumeroExit
          OnKeyPress = dbeNumeroKeyPress
        end
        object dbeSerie: TDBEdit
          Left = 163
          Top = 102
          Width = 69
          Height = 21
          DataField = 'serie'
          DataSource = dsCadastro
          MaxLength = 6
          TabOrder = 7
          OnKeyPress = dbeSerieKeyPress
        end
        object dbeDTEMIS: TDBDateEdit
          Left = 236
          Top = 102
          Width = 121
          Height = 21
          DataField = 'data_hora_emissao'
          DataSource = dsCadastro
          NumGlyphs = 2
          TabOrder = 8
          OnExit = dbeDTEMISExit
          OnKeyPress = dbeDTEMISKeyPress
        end
        object dbeCupom: TDBEdit
          Left = 772
          Top = 62
          Width = 82
          Height = 21
          DataField = 'num_coo'
          DataSource = dsCadastro
          TabOrder = 15
          Visible = False
          OnExit = dbeCupomExit
          OnKeyPress = dbeCupomKeyPress
        end
        object cmbNatureza: TDBLookupComboBox
          Left = 486
          Top = 102
          Width = 225
          Height = 21
          DataField = 'NTF_NMNATUREZAOP'
          DataSource = dsCadastro
          TabOrder = 10
          OnKeyPress = cmbNaturezaKeyPress
        end
        object rgTipo: TDBRadioGroup
          Left = 280
          Top = 8
          Width = 202
          Height = 36
          Caption = '[ Tipo * ]'
          Columns = 2
          DataField = 'tipo_operacao'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '0'
            '1')
        end
        object cmbFormaPaga: TDBLookupComboBox
          Left = 16
          Top = 144
          Width = 260
          Height = 21
          DataField = 'NTF_FMPAGA'
          DataSource = dsCadastro
          TabOrder = 12
          OnKeyPress = cmbFormaPagaKeyPress
        end
        object cmbEmissao: TDBLookupComboBox
          Left = 280
          Top = 144
          Width = 153
          Height = 21
          DataField = 'NTF_FMEMISSAO'
          DataSource = dsCadastro
          TabOrder = 13
          OnKeyPress = cmbEmissaoKeyPress
        end
        object cmbFinalidadeEmissao: TDBLookupComboBox
          Left = 438
          Top = 144
          Width = 273
          Height = 21
          DataField = 'NTF_FNEMISSAO'
          DataSource = dsCadastro
          TabOrder = 14
          OnKeyPress = cmbFinalidadeEmissaoKeyPress
        end
        object cmbTipoPessoa: TComboBox
          Left = 16
          Top = 62
          Width = 61
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          TabOrder = 2
          OnExit = cmbTipoPessoaExit
          OnKeyPress = cmbTipoPessoaKeyPress
          Items.Strings = (
            'CPF'
            'CNPJ')
        end
        object dbeDTEntSai: TDBDateEdit
          Left = 361
          Top = 102
          Width = 121
          Height = 21
          DataField = 'data_saida_entrada'
          DataSource = dsCadastro
          NumGlyphs = 2
          TabOrder = 9
          OnExit = dbeDTEntSaiExit
          OnKeyPress = dbeDTEntSaiKeyPress
        end
        object EditChaveAcesso: TDBEdit
          Left = 490
          Top = 22
          Width = 450
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
          TabOrder = 16
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 728
          Top = 78
          Width = 202
          Height = 44
          Caption = '[ Tipo de Impress'#227'o de Danfe ] '
          Columns = 2
          DataField = 'tipo_danfe'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Retrato'
            'Paisagem')
          ParentFont = False
          TabOrder = 11
          TabStop = True
          Values.Strings = (
            '1'
            '2')
        end
        object btnCupomFiscal: TBitBtn
          Left = 728
          Top = 141
          Width = 201
          Height = 25
          Hint = 'Cupom Fiscal Vinculados '#224' NF-e.'
          Caption = 'Cupom Fiscal Vinculados '#224' NF-e'
          TabOrder = 17
          OnClick = btnCupomFiscalClick
        end
        object rbConsumidorFinal: TDBRadioGroup
          Left = 16
          Top = 168
          Width = 142
          Height = 38
          Caption = '[ Consumidor Final * ]'
          Columns = 2
          DataField = 'indicador_consumidor_final'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            '&0 - N'#227'o'
            '&1 - Sim')
          ParentFont = False
          TabOrder = 18
          TabStop = True
          Values.Strings = (
            '0'
            '1')
        end
        object cmbDestinoOpe: TDBLookupComboBox
          Left = 168
          Top = 184
          Width = 209
          Height = 21
          DataField = 'DESTINO_OPE_DESCRICAO'
          DataSource = dsCadastro
          TabOrder = 19
          OnKeyPress = cmbDestinoOpeKeyPress
        end
        object cmbTipoOperacao: TDBLookupComboBox
          Left = 384
          Top = 184
          Width = 327
          Height = 21
          DataField = 'TIPO_ATENDIMENTO'
          DataSource = dsCadastro
          TabOrder = 20
          OnKeyPress = cmbTipoOperacaoKeyPress
        end
        object edtNomeEmpresa: TEdit
          Left = 16
          Top = 23
          Width = 255
          Height = 21
          TabStop = False
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
      object pnlDados: TPanel
        Left = 0
        Top = 216
        Width = 995
        Height = 172
        Align = alClient
        TabOrder = 1
        object grdConsultar: TDBGrid
          Left = 1
          Top = 1
          Width = 993
          Height = 170
          Align = alClient
          Ctl3D = False
          DataSource = dsItensNota
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = grdConsultarDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_CDPROD'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_DESCRICAO'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 235
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_NCM'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_CFOP'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 40
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_UNDCOM'
              Title.Alignment = taCenter
              Title.Caption = 'Unid.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_QTDECOM'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_VLUNITARIO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Vl. Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_VLDESCONTO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Desc.(R$)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_ALIQICMS'
              Title.Alignment = taRightJustify
              Title.Caption = 'ICMS (%)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_ALIQIPI'
              Title.Alignment = taRightJustify
              Title.Caption = 'IPI(%)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_SUBTOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taRightJustify
              Title.Caption = 'Sub-Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_DTFABRICACAO'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CDS_DTVENCIMENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_PERC_TRIBUTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CDS_PERC_ESTADUAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CDS_VLTRIB_ESTADUAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CDS_PERC_MUNICIPAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CDS_VLTRIB_MUNICIPAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CDS_BC_IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_VLIPI'
              Visible = True
            end>
        end
      end
      object pnlDetalheDados: TPanel
        Left = 0
        Top = 388
        Width = 995
        Height = 93
        Align = alBottom
        TabOrder = 2
        object Label13: TLabel
          Left = 8
          Top = 5
          Width = 86
          Height = 13
          Caption = 'C'#243'digo/Descri'#231#227'o'
          FocusControl = edtCDPROD
          Transparent = True
        end
        object spLocProduto: TSpeedButton
          Left = 138
          Top = 21
          Width = 23
          Height = 22
          Hint = 'Clique aqui para localizar produto/servi'#231'o'
          Enabled = False
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
          OnClick = spLocProdutoClick
        end
        object spCFOP: TSpeedButton
          Left = 93
          Top = 61
          Width = 23
          Height = 22
          Hint = 'Clique aqui para localizar CFOP do produto/servi'#231'o'
          Enabled = False
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
          OnClick = spCFOPClick
        end
        object Label15: TLabel
          Left = 7
          Top = 45
          Width = 28
          Height = 13
          Caption = 'CFOP'
        end
        object Label14: TLabel
          Left = 297
          Top = 45
          Width = 55
          Height = 13
          Caption = 'Quantidade'
        end
        object Label16: TLabel
          Left = 357
          Top = 45
          Width = 86
          Height = 13
          Caption = 'Valor Unit'#225'rio (R$)'
        end
        object Label17: TLabel
          Left = 456
          Top = 45
          Width = 63
          Height = 13
          Caption = 'Desconto (%)'
        end
        object Label19: TLabel
          Left = 586
          Top = 45
          Width = 43
          Height = 13
          Caption = 'ICMS (%)'
        end
        object Label20: TLabel
          Left = 684
          Top = 45
          Width = 30
          Height = 13
          Caption = 'IPI (%)'
        end
        object Label21: TLabel
          Left = 760
          Top = 45
          Width = 46
          Height = 13
          Caption = 'Sub-Total'
        end
        object Label113: TLabel
          Left = 120
          Top = 45
          Width = 24
          Height = 13
          Caption = 'NCM'
          Transparent = True
        end
        object lblItens: TLabel
          Left = 802
          Top = 4
          Width = 42
          Height = 13
          Caption = 'lblItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label114: TLabel
          Left = 206
          Top = 45
          Width = 40
          Height = 13
          Caption = 'Unidade'
          Transparent = True
        end
        object spDescValor: TSpeedButton
          Left = 519
          Top = 60
          Width = 23
          Height = 22
          Hint = 'Desconto em valor'
          Enabled = False
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            8181810202020202020202020202020202020202020202020202020202020202
            02818181FFFFFFFFFFFFFFFFFFFFFFFF05050505050505050505050505050505
            0505050505050505050505050505050505050505FFFFFFFFFFFFFFFFFFFFFFFF
            080808080808FFFFFFFFFFFF080808FFFFFFFFFFFF080808FFFFFFFFFFFF0808
            08080808FFFFFFFFFFFFFFFFFFFFFFFF0B0B0B0B0B0BFFFFFFFFFFFF0B0B0BFF
            FFFFFFFFFF0B0B0BFFFFFFFFFFFF0B0B0B0B0B0BFFFFFFFFFFFFFFFFFFFFFFFF
            0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
            0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF121212121212FFFFFFFFFFFF121212FF
            FFFFFFFFFF121212FFFFFFFFFFFF121212121212FFFFFFFFFFFFFFFFFFFFFFFF
            151515151515FFFFFFFFFFFF151515FFFFFFFFFFFF151515FFFFFFFFFFFF1515
            15151515FFFFFFFFFFFFFFFFFFFFFFFF18181818181818181818181818181818
            1818181818181818181818181818181818181818FFFFFFFFFFFFFFFFFFFFFFFF
            1B1B1B1B1B1BFFFFFFFFFFFF1B1B1BFFFFFFFFFFFF1B1B1BFFFFFFFFFFFF1B1B
            1B1B1B1BFFFFFFFFFFFFFFFFFFFFFFFF1E1E1E1E1E1EFFFFFFFFFFFF3A3A3AFF
            FFFFFFFFFF3A3A3AFFFFFFFFFFFF3A3A3A1E1E1EFFFFFFFFFFFFFFFFFFFFFFFF
            2121212121212121212121212121212121212121212121212121212121212121
            21212121FFFFFFFFFFFFFFFFFFFFFFFF25252525252525252525252525252525
            2525252525252525252525252525252525252525FFFFFFFFFFFFFFFFFFFFFFFF
            282828282828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2828
            28282828FFFFFFFFFFFFFFFFFFF3F3F32B2B2B2B2B2BFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF4545452B2B2BFFFFFFFFFFFFFFFFFFF3F3F3
            2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
            2E2E2E2EFFFFFFFFFFFFFFFFFFFFFFFF98989831313131313131313131313131
            3131313131313131313131313131313131989898FFFFFFFFFFFF}
          OnClick = spDescValorClick
        end
        object edtCDPROD: TEdit
          Left = 8
          Top = 21
          Width = 129
          Height = 21
          MaxLength = 8
          TabOrder = 0
          OnChange = edtCDPRODChange
          OnExit = edtCDPRODExit
          OnKeyPress = edtCDPRODKeyPress
        end
        object edtDescricao: TEdit
          Left = 162
          Top = 21
          Width = 644
          Height = 21
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtCFOP: TEdit
          Left = 8
          Top = 61
          Width = 83
          Height = 21
          MaxLength = 4
          TabOrder = 1
          OnExit = edtCFOPExit
          OnKeyPress = edtCFOPKeyPress
        end
        object edtQTDE: TCurrencyEdit
          Left = 273
          Top = 61
          Width = 80
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;'
          MaxLength = 15
          TabOrder = 4
          OnExit = edtQTDEExit
          OnKeyPress = edtQTDEKeyPress
        end
        object edtValorUnitario: TCurrencyEdit
          Left = 357
          Top = 61
          Width = 80
          Height = 21
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = ',0.000;'
          MaxLength = 15
          TabOrder = 6
          OnExit = edtValorUnitarioExit
          OnKeyPress = edtValorUnitarioKeyPress
        end
        object edtDesconto: TCurrencyEdit
          Left = 440
          Top = 61
          Width = 80
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          MaxValue = 99.000000000000000000
          TabOrder = 7
          OnExit = edtDescontoExit
          OnKeyPress = edtDescontoKeyPress
        end
        object edtICMS: TCurrencyEdit
          Left = 544
          Top = 61
          Width = 80
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          MaxValue = 50.000000000000000000
          TabOrder = 8
          OnExit = edtICMSExit
          OnKeyPress = edtICMSKeyPress
        end
        object edtIPI: TCurrencyEdit
          Left = 628
          Top = 61
          Width = 80
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          MaxValue = 50.000000000000000000
          TabOrder = 9
          OnExit = edtIPIExit
          OnKeyPress = edtIPIKeyPress
        end
        object edtSubTotal: TCurrencyEdit
          Left = 712
          Top = 61
          Width = 95
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
          TabOrder = 10
        end
        object dbeNCM: TEdit
          Left = 120
          Top = 61
          Width = 80
          Height = 21
          MaxLength = 8
          TabOrder = 2
          OnExit = dbeNCMExit
          OnKeyPress = dbeNCMKeyPress
        end
        object edtUnidade: TEdit
          Left = 205
          Top = 61
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 3
          OnExit = edtUnidadeExit
          OnKeyPress = edtUnidadeKeyPress
        end
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 481
        Width = 995
        Height = 41
        Align = alBottom
        Enabled = False
        TabOrder = 3
        object btnNovoItem: TBitBtn
          Left = 8
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Adiciona novo item '
          Caption = '&Novo Item'
          TabOrder = 0
          OnClick = btnNovoItemClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
            0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
            0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
            111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnExcluiItem: TBitBtn
          Left = 114
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Excluir item selecionado'
          Caption = '&Excluir Item'
          TabOrder = 1
          OnClick = btnExcluiItemClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
            0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
            0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnSalvarItem: TBitBtn
          Left = 323
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Salva item'
          Caption = '&Salvar Item'
          Enabled = False
          TabOrder = 2
          OnClick = btnSalvarItemClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
            840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
            C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
            F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
            FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
            1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
            0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
            1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
            1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
            1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
            13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
            16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
            1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
        end
        object btnCancelarItem: TBitBtn
          Left = 429
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Cancela item'
          Caption = 'Ca&ncelar Item'
          Enabled = False
          TabOrder = 3
          OnClick = btnCancelarItemClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
            840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
            C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
            F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
            FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
            1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
            0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
            111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
            1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
            1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
            13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
            16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
            1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
        end
        object pnlTotalItens: TPanel
          Left = 760
          Top = 1
          Width = 234
          Height = 39
          Align = alRight
          Alignment = taRightJustify
          Caption = '0,00'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Emitente'
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 16
        Top = 16
        Width = 761
        Height = 234
        Caption = '[ Identifica'#231#227'o ]'
        TabOrder = 0
        object Label67: TLabel
          Left = 13
          Top = 16
          Width = 41
          Height = 13
          Caption = 'CNPJ *'
          FocusControl = dbeCNPJEmitente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label68: TLabel
          Left = 13
          Top = 56
          Width = 85
          Height = 13
          Caption = 'Raz'#227'o Social *'
          FocusControl = dbeRazaoEmitente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label69: TLabel
          Left = 13
          Top = 96
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          FocusControl = dbeNomeFantasiaEmitente
          Transparent = True
        end
        object Label70: TLabel
          Left = 13
          Top = 136
          Width = 115
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual *'
          FocusControl = dbeEmiInsEstadual
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label71: TLabel
          Left = 208
          Top = 136
          Width = 139
          Height = 13
          Caption = 'Insc. Est. do Subst. Tribut'#225'rio'
          FocusControl = DBEdit37
          Transparent = True
        end
        object Label72: TLabel
          Left = 13
          Top = 176
          Width = 91
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal'
          FocusControl = DBEdit38
          Transparent = True
        end
        object Label73: TLabel
          Left = 208
          Top = 176
          Width = 29
          Height = 13
          Caption = 'CNAE'
          FocusControl = DBEdit39
          Transparent = True
        end
        object dbeCNPJEmitente: TDBEdit
          Left = 13
          Top = 32
          Width = 186
          Height = 21
          TabStop = False
          Color = clSilver
          DataField = 'emitente_cnpj'
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
        object dbeRazaoEmitente: TDBEdit
          Left = 13
          Top = 72
          Width = 732
          Height = 21
          CharCase = ecUpperCase
          DataField = 'emitente_razao'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbeNomeFantasiaEmitente: TDBEdit
          Left = 13
          Top = 112
          Width = 732
          Height = 21
          CharCase = ecUpperCase
          DataField = 'emitente_fantasia'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object dbeEmiInsEstadual: TDBEdit
          Left = 13
          Top = 152
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          DataField = 'emitente_ie'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit37: TDBEdit
          Left = 208
          Top = 152
          Width = 186
          Height = 21
          DataField = 'emintente_iest'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object DBEdit38: TDBEdit
          Left = 13
          Top = 192
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          DataField = 'emitente_im'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object DBEdit39: TDBEdit
          Left = 208
          Top = 192
          Width = 95
          Height = 21
          DataField = 'emitente_cnae'
          DataSource = dsCadastro
          TabOrder = 6
        end
      end
      object GroupBox6: TGroupBox
        Left = 16
        Top = 259
        Width = 761
        Height = 197
        Caption = '[ Endere'#231'o ]'
        TabOrder = 1
        object Label74: TLabel
          Left = 13
          Top = 19
          Width = 74
          Height = 13
          Caption = 'Logradouro *'
          FocusControl = dbeLogradouroEmitente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label75: TLabel
          Left = 638
          Top = 19
          Width = 53
          Height = 13
          Caption = 'N'#250'mero *'
          FocusControl = dbeNumeroEmissor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label76: TLabel
          Left = 13
          Top = 59
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = dbeComplementoEmitente
        end
        object Label77: TLabel
          Left = 638
          Top = 59
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = dbeCepEmitente
        end
        object Label78: TLabel
          Left = 258
          Top = 59
          Width = 43
          Height = 13
          Caption = 'Bairro *'
          FocusControl = dbeBairroEmissor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label79: TLabel
          Left = 13
          Top = 99
          Width = 26
          Height = 13
          Caption = 'UF *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label80: TLabel
          Left = 78
          Top = 99
          Width = 49
          Height = 13
          Caption = 'Cidade *'
          FocusControl = dbeCidadeEmissor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label81: TLabel
          Left = 638
          Top = 99
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = dbeFoneEmitente
        end
        object dbeLogradouroEmitente: TDBEdit
          Left = 13
          Top = 35
          Width = 618
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'emitente_end_logradouro'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 0
        end
        object dbeNumeroEmissor: TDBEdit
          Left = 638
          Top = 35
          Width = 108
          Height = 21
          TabStop = False
          DataField = 'emitente_end_numero'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 1
        end
        object dbeComplementoEmitente: TDBEdit
          Left = 13
          Top = 75
          Width = 240
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'emitente_end_complemento'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 2
        end
        object dbeCepEmitente: TDBEdit
          Left = 638
          Top = 75
          Width = 108
          Height = 21
          TabStop = False
          DataField = 'emitente_cep'
          DataSource = dsCadastro
          MaxLength = 9
          ReadOnly = True
          TabOrder = 4
        end
        object dbeBairroEmissor: TDBEdit
          Left = 258
          Top = 75
          Width = 374
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'emintente_end_bairro'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 3
        end
        object dbeCidadeEmissor: TDBEdit
          Left = 78
          Top = 115
          Width = 554
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'emitente_nome_municipio'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 6
          OnExit = dbeCidadeEmissorExit
        end
        object dbeFoneEmitente: TDBEdit
          Left = 638
          Top = 115
          Width = 108
          Height = 21
          TabStop = False
          DataField = 'emitente_telefone'
          DataSource = dsCadastro
          MaxLength = 15
          ReadOnly = True
          TabOrder = 7
        end
        object cmbUFEmitente: TDBLookupComboBox
          Left = 13
          Top = 115
          Width = 61
          Height = 21
          DataField = 'UF_EMITENTE'
          DataSource = dsCadastro
          TabOrder = 5
        end
      end
    end
    object tbsDestinatario: TTabSheet
      Caption = 'Destinat'#225'rio/Remetente'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 305
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 16
          Top = 3
          Width = 761
          Height = 190
          Caption = '[ Dados ]'
          TabOrder = 0
          object Label39: TLabel
            Left = 16
            Top = 24
            Width = 70
            Height = 13
            Caption = 'CNPJ/CPF *'
            FocusControl = dbeCNPJCPFDest
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 208
            Top = 24
            Width = 123
            Height = 13
            Caption = 'Raz'#227'o Social/Nome *'
            FocusControl = dbeRazaoDest
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 16
            Top = 64
            Width = 87
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual'
            FocusControl = dbeInscricaoEstadual
          end
          object Label42: TLabel
            Left = 208
            Top = 64
            Width = 98
            Height = 13
            Caption = 'Inscri'#231#227'o SUFRAMA'
            FocusControl = DBEdit21
          end
          object Label43: TLabel
            Left = 16
            Top = 104
            Width = 25
            Height = 13
            Caption = 'Email'
            FocusControl = dbeEmailDest
          end
          object Label112: TLabel
            Left = 523
            Top = 104
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = dbeDestTelefone
          end
          object Label120: TLabel
            Left = 16
            Top = 144
            Width = 116
            Height = 13
            Caption = 'Tipo de Contribuinte'
            FocusControl = cmbTipoContribuinte
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeCNPJCPFDest: TDBEdit
            Left = 16
            Top = 40
            Width = 186
            Height = 21
            TabStop = False
            DataField = 'destinatario_cnpjcpf'
            DataSource = dsCadastro
            ReadOnly = True
            TabOrder = 0
          end
          object dbeRazaoDest: TDBEdit
            Left = 208
            Top = 40
            Width = 500
            Height = 21
            CharCase = ecUpperCase
            DataField = 'destinatario_razaosocial'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object dbeInscricaoEstadual: TDBEdit
            Left = 16
            Top = 80
            Width = 186
            Height = 21
            CharCase = ecUpperCase
            DataField = 'destinatario_ie'
            DataSource = dsCadastro
            TabOrder = 2
            OnExit = dbeInscricaoEstadualExit
            OnKeyPress = dbeInscricaoEstadualKeyPress
          end
          object DBEdit21: TDBEdit
            Left = 208
            Top = 80
            Width = 121
            Height = 21
            DataField = 'destinatario_isuf'
            DataSource = dsCadastro
            TabOrder = 3
            OnKeyPress = DBEdit21KeyPress
          end
          object dbeEmailDest: TDBEdit
            Left = 16
            Top = 120
            Width = 500
            Height = 21
            CharCase = ecLowerCase
            DataField = 'destinatario_email'
            DataSource = dsCadastro
            TabOrder = 4
            OnExit = dbeEmailDestExit
          end
          object dbeDestTelefone: TDBEdit
            Left = 523
            Top = 120
            Width = 121
            Height = 21
            DataField = 'destinatario_telefone'
            DataSource = dsCadastro
            MaxLength = 15
            TabOrder = 5
          end
          object cmbTipoContribuinte: TDBLookupComboBox
            Left = 16
            Top = 160
            Width = 225
            Height = 21
            DataField = 'TIPO_CONTRIBUINTE'
            DataSource = dsCadastro
            TabOrder = 6
          end
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 196
          Width = 761
          Height = 104
          Caption = '[ Endere'#231'o ]'
          TabOrder = 1
          object Label44: TLabel
            Left = 8
            Top = 16
            Width = 74
            Height = 13
            Caption = 'Logradouro *'
            FocusControl = dbeLogradouroDest
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 598
            Top = 16
            Width = 53
            Height = 13
            Caption = 'N'#250'mero *'
            FocusControl = dbeNumeroDest
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 8
            Top = 56
            Width = 43
            Height = 13
            Caption = 'Bairro *'
            FocusControl = dbeBairroDest
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label47: TLabel
            Left = 264
            Top = 56
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edtCepDesc
          end
          object Label49: TLabel
            Left = 379
            Top = 56
            Width = 26
            Height = 13
            Caption = 'UF *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 445
            Top = 56
            Width = 49
            Height = 13
            Caption = 'Cidade *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeLogradouroDest: TDBEdit
            Left = 8
            Top = 32
            Width = 585
            Height = 21
            CharCase = ecUpperCase
            DataField = 'destinatario_logradouro'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object dbeNumeroDest: TDBEdit
            Left = 598
            Top = 32
            Width = 134
            Height = 21
            DataField = 'destinatario_end_numero'
            DataSource = dsCadastro
            MaxLength = 8
            TabOrder = 1
            OnKeyPress = dbeNumeroDestKeyPress
          end
          object dbeBairroDest: TDBEdit
            Left = 8
            Top = 72
            Width = 249
            Height = 21
            CharCase = ecUpperCase
            DataField = 'destinatario_end_bairro'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object edtCepDesc: TDBEdit
            Left = 264
            Top = 72
            Width = 108
            Height = 21
            DataField = 'destinatario_cep'
            DataSource = dsCadastro
            MaxLength = 9
            TabOrder = 3
          end
          object dbeCidadeDest: TDBLookupComboBox
            Left = 445
            Top = 72
            Width = 300
            Height = 21
            DataField = 'CidadeDestinatario'
            DataSource = dsCadastro
            TabOrder = 5
            OnEnter = dbeCidadeDestEnter
          end
          object cmbUFDest: TDBLookupComboBox
            Left = 379
            Top = 72
            Width = 61
            Height = 21
            DataField = 'UF_DESTINATARIO'
            DataSource = dsCadastro
            TabOrder = 4
            OnExit = cmbUFDestExit
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 305
        Width = 995
        Height = 217
        Align = alClient
        TabOrder = 1
        object pcRetiradaEntrega: TPageControl
          Left = 1
          Top = 1
          Width = 993
          Height = 215
          ActivePage = tsDestRetirada
          Align = alClient
          TabOrder = 0
          object tsDestRetirada: TTabSheet
            Caption = 'Retirada'
            object Label95: TLabel
              Left = 374
              Top = 0
              Width = 70
              Height = 13
              Caption = 'CNPJ/CPF *'
              FocusControl = dbeCNPJ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label96: TLabel
              Left = 16
              Top = 37
              Width = 74
              Height = 13
              Caption = 'Logradouro *'
              FocusControl = dbeRetiradaLogradouro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label97: TLabel
              Left = 640
              Top = 36
              Width = 53
              Height = 13
              Caption = 'N'#250'mero *'
              FocusControl = dbeRetiradaNumero
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label98: TLabel
              Left = 16
              Top = 80
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = dbeRetiradaComp
              Transparent = True
            end
            object Label99: TLabel
              Left = 374
              Top = 80
              Width = 43
              Height = 13
              Caption = 'Bairro *'
              FocusControl = dbeRetiradaBairro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label100: TLabel
              Left = 16
              Top = 120
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
            object Label101: TLabel
              Left = 81
              Top = 120
              Width = 49
              Height = 13
              Caption = 'Cidade *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object cbxRetirada: TCheckBox
              Left = 16
              Top = 13
              Width = 217
              Height = 17
              Caption = 'Local de retirada diferente do emitente'
              Enabled = False
              TabOrder = 0
            end
            object dbeCNPJ: TDBEdit
              Left = 374
              Top = 16
              Width = 186
              Height = 21
              DataField = 'emitente_retirada_cnpjcpf'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = dbeCNPJExit
              OnKeyPress = dbeCNPJKeyPress
            end
            object dbeRetiradaLogradouro: TDBEdit
              Left = 16
              Top = 53
              Width = 617
              Height = 21
              CharCase = ecUpperCase
              DataField = 'emitente_retirada_logradouro'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object dbeRetiradaNumero: TDBEdit
              Left = 640
              Top = 53
              Width = 134
              Height = 21
              DataField = 'emitente_retirada_numero'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object dbeRetiradaComp: TDBEdit
              Left = 16
              Top = 96
              Width = 350
              Height = 21
              CharCase = ecUpperCase
              DataField = 'emitente_retirada_complemento'
              DataSource = dsCadastro
              TabOrder = 4
            end
            object dbeRetiradaBairro: TDBEdit
              Left = 374
              Top = 96
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              DataField = 'emitente_retirada_bairro'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object dbeCidadeRetirada: TDBLookupComboBox
              Left = 80
              Top = 136
              Width = 694
              Height = 21
              DataField = 'RetiradaNomeCidade'
              DataSource = dsCadastro
              TabOrder = 7
              OnEnter = dbeCidadeRetiradaEnter
            end
            object cmbUFRetiratada: TDBLookupComboBox
              Left = 16
              Top = 136
              Width = 61
              Height = 21
              DataField = 'UF_EMITENTE_RET'
              DataSource = dsCadastro
              TabOrder = 6
              OnExit = cmbUFRetiratadaExit
            end
          end
          object tsDestEntrega: TTabSheet
            Caption = 'Entrega'
            ImageIndex = 1
            object Label102: TLabel
              Left = 374
              Top = 0
              Width = 70
              Height = 13
              Caption = 'CNPJ/CPF *'
              FocusControl = dbeEntregaCNPJ
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label103: TLabel
              Left = 16
              Top = 37
              Width = 74
              Height = 13
              Caption = 'Logradouro *'
              FocusControl = dbeEntregaLogradouro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label104: TLabel
              Left = 640
              Top = 37
              Width = 53
              Height = 13
              Caption = 'N'#250'mero *'
              FocusControl = dbeEntregaNumero
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label105: TLabel
              Left = 16
              Top = 80
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = dbeEntregaComp
              Transparent = True
            end
            object Label106: TLabel
              Left = 374
              Top = 80
              Width = 43
              Height = 13
              Caption = 'Bairro *'
              FocusControl = dbeEntregaBairro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label107: TLabel
              Left = 16
              Top = 120
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
            object Label108: TLabel
              Left = 81
              Top = 120
              Width = 49
              Height = 13
              Caption = 'Cidade *'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label48: TLabel
              Left = 464
              Top = 144
              Width = 156
              Height = 13
              Caption = 'destinatario_entrega_munic_ibge'
            end
            object cbxEntrega: TCheckBox
              Left = 16
              Top = 13
              Width = 257
              Height = 17
              Caption = 'Local de entrega diferente do destinat'#225'rio'
              Enabled = False
              TabOrder = 0
            end
            object dbeEntregaCNPJ: TDBEdit
              Left = 374
              Top = 16
              Width = 186
              Height = 21
              DataField = 'destinatario_entrega_cnpjcpf'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = dbeEntregaCNPJExit
              OnKeyPress = dbeEntregaCNPJKeyPress
            end
            object dbeEntregaLogradouro: TDBEdit
              Left = 16
              Top = 53
              Width = 617
              Height = 21
              CharCase = ecUpperCase
              DataField = 'destinatario_entrega_logradouro'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object dbeEntregaNumero: TDBEdit
              Left = 640
              Top = 53
              Width = 134
              Height = 21
              DataField = 'destinatario_entrega_numero'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object dbeEntregaComp: TDBEdit
              Left = 16
              Top = 96
              Width = 350
              Height = 21
              CharCase = ecUpperCase
              DataField = 'destinatario_entrega_complement'
              DataSource = dsCadastro
              TabOrder = 4
            end
            object dbeEntregaBairro: TDBEdit
              Left = 374
              Top = 96
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              DataField = 'destinatario_entrega_bairro'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object dbeCidadeEntrega: TDBLookupComboBox
              Left = 81
              Top = 136
              Width = 691
              Height = 21
              DataField = 'EntregaNomeCidade'
              DataSource = dsCadastro
              TabOrder = 7
              OnEnter = dbeCidadeEntregaEnter
              OnExit = dbeCidadeEntregaExit
            end
            object cmbUFEntrega: TDBLookupComboBox
              Left = 16
              Top = 136
              Width = 61
              Height = 21
              DataField = 'UF_DESTINATARIO_ENTREGA'
              DataSource = dsCadastro
              TabOrder = 6
              OnExit = cmbUFEntregaExit
            end
          end
        end
      end
    end
    object tsbTotais: TTabSheet
      Caption = 'Totais'
      ImageIndex = 2
      object PageControlImpostos: TPageControl
        Left = 0
        Top = 0
        Width = 995
        Height = 522
        ActivePage = tbsICMS
        Align = alClient
        TabOrder = 0
        object tbsICMS: TTabSheet
          Caption = 'ICMS'
          DesignSize = (
            987
            494)
          object Label22: TLabel
            Left = 16
            Top = 22
            Width = 139
            Height = 13
            Caption = 'Total dos produtos e servi'#231'os'
            FocusControl = dbeTotalMercadorias
            Transparent = True
          end
          object Label23: TLabel
            Left = 16
            Top = 64
            Width = 121
            Height = 13
            Caption = 'Base de C'#225'lculo de ICMS'
            FocusControl = dbeBaseCalculoICMS
            Transparent = True
          end
          object Label25: TLabel
            Left = 16
            Top = 102
            Width = 148
            Height = 13
            Caption = 'Base de C'#225'lculo da Subtitui'#231#227'o'
            FocusControl = dbeBaseSubstituicao
            Transparent = True
          end
          object Label24: TLabel
            Left = 337
            Top = 64
            Width = 68
            Height = 13
            Caption = 'Valor do ICMS'
            FocusControl = dbeValorICMS
            Transparent = True
          end
          object Label26: TLabel
            Left = 337
            Top = 102
            Width = 95
            Height = 13
            Caption = 'Valor da Subtitui'#231#227'o'
            FocusControl = dbeValorSubtituicao
            Transparent = True
          end
          object Label27: TLabel
            Left = 337
            Top = 141
            Width = 66
            Height = 13
            Caption = 'Total de Frete'
            FocusControl = dbeTotalFrete
            Transparent = True
          end
          object Label28: TLabel
            Left = 16
            Top = 251
            Width = 55
            Height = 13
            Caption = 'Total do IPI'
            FocusControl = dbeTotalIPI
            Transparent = True
          end
          object Label29: TLabel
            Left = 337
            Top = 251
            Width = 76
            Height = 13
            Caption = 'Total do Seguro'
            FocusControl = dbeTotalSeguro
            Transparent = True
          end
          object Label30: TLabel
            Left = 16
            Top = 291
            Width = 132
            Height = 13
            Caption = 'Outras despesas acess'#243'rias'
            FocusControl = dbeOutrasDespesas
            Transparent = True
          end
          object Label31: TLabel
            Left = 16
            Top = 331
            Width = 65
            Height = 13
            Caption = 'Total da Nota'
            FocusControl = dbeValorNota
            Transparent = True
          end
          object Label109: TLabel
            Left = 337
            Top = 291
            Width = 88
            Height = 13
            Caption = 'Valor de Desconto'
            FocusControl = dbeTotalDesconto
            Transparent = True
          end
          object Label110: TLabel
            Left = 16
            Top = 455
            Width = 806
            Height = 26
            Anchors = [akLeft, akRight, akBottom]
            Caption = 
              'Aten'#231#227'o: o preenchimento das informa'#231#245'es da Nota Fiscal '#233' de res' +
              'ponsabilidade do emitente. Confira atentamente estes valores e, ' +
              'caso n'#227'o correspondam '#224' realidade, altere-os na aba corresponden' +
              'te.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object Label18: TLabel
            Left = 337
            Top = 179
            Width = 17
            Height = 13
            Caption = 'PIS'
            FocusControl = dbeValorPis
            Transparent = True
          end
          object Label115: TLabel
            Left = 337
            Top = 214
            Width = 39
            Height = 13
            Caption = 'COFINS'
            FocusControl = dbeValorCofins
            Transparent = True
          end
          object dbeTotalMercadorias: TDBEdit
            Left = 16
            Top = 39
            Width = 251
            Height = 21
            DataField = 'valor_itens'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object dbeBaseCalculoICMS: TDBEdit
            Left = 16
            Top = 80
            Width = 251
            Height = 21
            DataField = 'valor_bc_icms'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object dbeBaseSubstituicao: TDBEdit
            Left = 16
            Top = 118
            Width = 251
            Height = 21
            DataField = 'valor_bc_icms_st'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object dbeValorICMS: TDBEdit
            Left = 337
            Top = 80
            Width = 251
            Height = 21
            DataField = 'valor_icms'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object dbeValorSubtituicao: TDBEdit
            Left = 337
            Top = 118
            Width = 251
            Height = 21
            DataField = 'valor_icms_st'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object rgTipoFrete: TDBRadioGroup
            Left = 16
            Top = 140
            Width = 281
            Height = 110
            Caption = '[ Tipo de Frete ]'
            DataField = 'modalidade_frete'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Items.Strings = (
              '0 - Por conta do emitente'
              '1 - Por conta do destinat'#225'rio/rementente'
              '2 - Por conta de terceiros'
              '9 - Sem frete')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2'
              '9')
            OnChange = rgTipoFreteChange
            OnClick = rgTipoFreteClick
          end
          object dbeTotalFrete: TDBEdit
            Left = 337
            Top = 157
            Width = 251
            Height = 21
            DataField = 'valor_frete'
            DataSource = dsCadastro
            TabOrder = 6
            OnExit = dbeTotalFreteExit
          end
          object dbeTotalSeguro: TDBEdit
            Left = 337
            Top = 267
            Width = 251
            Height = 21
            DataField = 'valor_seguro'
            DataSource = dsCadastro
            TabOrder = 8
            OnExit = dbeTotalSeguroExit
          end
          object dbeTotalIPI: TDBEdit
            Left = 16
            Top = 267
            Width = 251
            Height = 21
            DataField = 'valor_ipi'
            DataSource = dsCadastro
            TabOrder = 7
          end
          object dbeOutrasDespesas: TDBEdit
            Left = 16
            Top = 308
            Width = 251
            Height = 21
            DataField = 'valor_outras_despesas'
            DataSource = dsCadastro
            TabOrder = 9
            OnExit = dbeOutrasDespesasExit
          end
          object dbeValorNota: TDBEdit
            Left = 16
            Top = 348
            Width = 251
            Height = 21
            TabStop = False
            DataField = 'valor_total_nota'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object dbeTotalDesconto: TDBEdit
            Left = 337
            Top = 308
            Width = 251
            Height = 21
            DataField = 'valor_desconto'
            DataSource = dsCadastro
            ReadOnly = True
            TabOrder = 10
            OnExit = dbeTotalDescontoExit
          end
          object dbeValorPis: TDBEdit
            Left = 337
            Top = 193
            Width = 251
            Height = 21
            TabStop = False
            Color = clSilver
            DataField = 'valor_pis'
            DataSource = dsCadastro
            ReadOnly = True
            TabOrder = 12
          end
          object dbeValorCofins: TDBEdit
            Left = 337
            Top = 229
            Width = 251
            Height = 21
            TabStop = False
            Color = clSilver
            DataField = 'valor_cofins'
            DataSource = dsCadastro
            ReadOnly = True
            TabOrder = 13
          end
        end
        object tbsISSQN: TTabSheet
          Caption = 'ISSQN'
          ImageIndex = 1
          object Label83: TLabel
            Left = 16
            Top = 22
            Width = 111
            Height = 13
            Caption = 'Base de c'#225'lculo do ISS'
            FocusControl = DBEdit18
            Transparent = True
          end
          object Label84: TLabel
            Left = 16
            Top = 64
            Width = 44
            Height = 13
            Caption = 'Total ISS'
            FocusControl = DBEdit19
            Transparent = True
          end
          object Label85: TLabel
            Left = 16
            Top = 102
            Width = 88
            Height = 13
            Caption = 'PIS sobre servi'#231'os'
            FocusControl = DBEdit22
            Transparent = True
          end
          object Label86: TLabel
            Left = 16
            Top = 141
            Width = 118
            Height = 13
            Caption = 'CONFINS sobre servi'#231'os'
            FocusControl = DBEdit23
            Transparent = True
          end
          object Label87: TLabel
            Left = 16
            Top = 185
            Width = 315
            Height = 13
            Caption = 
              'Total dos servi'#231'os sob n'#227'o-incid'#234'ncia ou n'#227'o tributados pelo ICM' +
              'S'
            FocusControl = DBEdit24
            Transparent = True
          end
          object DBEdit18: TDBEdit
            Left = 16
            Top = 39
            Width = 251
            Height = 21
            DataField = 'valor_bc_iss'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit19: TDBEdit
            Left = 16
            Top = 80
            Width = 251
            Height = 21
            DataField = 'valor_total_iss'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 16
            Top = 118
            Width = 251
            Height = 21
            DataField = 'valor_pis_servico'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 16
            Top = 157
            Width = 251
            Height = 21
            DataField = 'valor_cofins_servico'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit24: TDBEdit
            Left = 16
            Top = 203
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 4
          end
        end
        object tbsRetencao: TTabSheet
          Caption = 'Reten'#231#227'o de Tributos'
          ImageIndex = 2
          object Label88: TLabel
            Left = 16
            Top = 22
            Width = 88
            Height = 13
            Caption = 'Valor retido de PIS'
            FocusControl = DBEdit25
            Transparent = True
          end
          object Label89: TLabel
            Left = 16
            Top = 64
            Width = 118
            Height = 13
            Caption = 'Valor retido de CONFINS'
            FocusControl = DBEdit27
            Transparent = True
          end
          object Label90: TLabel
            Left = 16
            Top = 102
            Width = 97
            Height = 13
            Caption = 'Valor retido de CSLL'
            FocusControl = DBEdit36
            Transparent = True
          end
          object Label91: TLabel
            Left = 16
            Top = 141
            Width = 119
            Height = 13
            Caption = 'Base de c'#225'lculo do IRRF'
            FocusControl = DBEdit40
            Transparent = True
          end
          object Label92: TLabel
            Left = 16
            Top = 185
            Width = 96
            Height = 13
            Caption = 'Valor retido do IRRF'
            FocusControl = DBEdit41
            Transparent = True
          end
          object Label93: TLabel
            Left = 16
            Top = 227
            Width = 119
            Height = 13
            Caption = 'BC da ret. da Prev.Social'
            FocusControl = DBEdit44
            Transparent = True
          end
          object Label94: TLabel
            Left = 16
            Top = 267
            Width = 119
            Height = 13
            Caption = 'Reten'#231#227'o da Prev.Social'
            FocusControl = DBEdit45
            Transparent = True
          end
          object DBEdit25: TDBEdit
            Left = 16
            Top = 39
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit27: TDBEdit
            Left = 16
            Top = 80
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit36: TDBEdit
            Left = 16
            Top = 118
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit40: TDBEdit
            Left = 16
            Top = 157
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit41: TDBEdit
            Left = 16
            Top = 203
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 4
          end
          object DBEdit44: TDBEdit
            Left = 16
            Top = 244
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 5
          end
          object DBEdit45: TDBEdit
            Left = 16
            Top = 283
            Width = 251
            Height = 21
            DataSource = dsCadastro
            TabOrder = 6
          end
        end
      end
    end
    object tbsTransportes: TTabSheet
      Caption = 'Transportes'
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 995
        Height = 522
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Transportador'
          object GroupBox1: TGroupBox
            Left = 16
            Top = 208
            Width = 713
            Height = 129
            Caption = '[ Endere'#231'o ]'
            TabOrder = 1
            object Label36: TLabel
              Left = 16
              Top = 16
              Width = 93
              Height = 13
              Caption = 'Endere'#231'o Completo'
              FocusControl = dbeEndTransportadora
              Transparent = True
            end
            object Label37: TLabel
              Left = 16
              Top = 60
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label38: TLabel
              Left = 82
              Top = 60
              Width = 33
              Height = 13
              Caption = 'Cidade'
              Transparent = True
            end
            object dbeEndTransportadora: TDBEdit
              Left = 16
              Top = 32
              Width = 683
              Height = 21
              CharCase = ecUpperCase
              DataField = 'transporte_endereco'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object dbeCidadeTransportadora: TDBLookupComboBox
              Left = 82
              Top = 75
              Width = 616
              Height = 21
              DataField = 'TransportadoraNomeCidade'
              DataSource = dsCadastro
              TabOrder = 2
              OnEnter = dbeCidadeTransportadoraEnter
            end
            object cmbUFTransp: TDBLookupComboBox
              Left = 16
              Top = 75
              Width = 61
              Height = 21
              DataField = 'UF_TRANSPORTE'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = cmbUFTranspExit
            end
          end
          object GroupBox4: TGroupBox
            Left = 16
            Top = 16
            Width = 713
            Height = 188
            Caption = '[ Identifica'#231#227'o ]'
            TabOrder = 0
            object Label32: TLabel
              Left = 16
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Transportadora'
              FocusControl = dbeTransportadora
              Transparent = True
            end
            object spTransportadora: TSpeedButton
              Left = 139
              Top = 31
              Width = 23
              Height = 22
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
              OnClick = spTransportadoraClick
            end
            object Label33: TLabel
              Left = 16
              Top = 59
              Width = 52
              Height = 13
              Caption = 'CNPJ/CPF'
              FocusControl = dbeCNPJTransporte
              Transparent = True
            end
            object Label34: TLabel
              Left = 16
              Top = 99
              Width = 63
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = dbeTransRazao
              Transparent = True
            end
            object Label35: TLabel
              Left = 16
              Top = 139
              Width = 87
              Height = 13
              Caption = 'Inscri'#231#227'o Estadual'
              FocusControl = DBEdit15
              Transparent = True
            end
            object dbeTransportadora: TDBEdit
              Left = 16
              Top = 32
              Width = 121
              Height = 21
              DataField = 'id_transportadora'
              DataSource = dsCadastro
              TabOrder = 0
              OnChange = dbeTransportadoraChange
              OnExit = dbeTransportadoraExit
              OnKeyPress = dbeTransportadoraKeyPress
            end
            object dbeCNPJTransporte: TDBEdit
              Left = 16
              Top = 75
              Width = 186
              Height = 21
              DataField = 'transporte_cnpjcpf'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = dbeCNPJTransporteExit
              OnKeyPress = dbeCNPJTransporteKeyPress
            end
            object dbeTransRazao: TDBEdit
              Left = 16
              Top = 115
              Width = 683
              Height = 21
              CharCase = ecUpperCase
              DataField = 'transporte_razao'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object DBEdit15: TDBEdit
              Left = 16
              Top = 155
              Width = 186
              Height = 21
              DataField = 'transporte_ie'
              DataSource = dsCadastro
              TabOrder = 3
              OnKeyPress = DBEdit15KeyPress
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Reten'#231#227'o ICMS'
          ImageIndex = 3
          TabVisible = False
          object Label57: TLabel
            Left = 16
            Top = 16
            Width = 76
            Height = 13
            Caption = 'Base de c'#225'lculo'
            FocusControl = DBEdit14
            Transparent = True
          end
          object Label58: TLabel
            Left = 16
            Top = 56
            Width = 40
            Height = 13
            Caption = 'Al'#237'quota'
            FocusControl = DBEdit28
            Transparent = True
          end
          object Label59: TLabel
            Left = 16
            Top = 97
            Width = 76
            Height = 13
            Caption = 'Valor do servi'#231'o'
            FocusControl = DBEdit29
            Transparent = True
          end
          object Label60: TLabel
            Left = 16
            Top = 138
            Width = 14
            Height = 13
            Caption = 'UF'
            Transparent = True
          end
          object Label61: TLabel
            Left = 82
            Top = 138
            Width = 33
            Height = 13
            Caption = 'Cidade'
            FocusControl = dbeCidadeRetencao
            Transparent = True
          end
          object Label62: TLabel
            Left = 16
            Top = 180
            Width = 28
            Height = 13
            Caption = 'CFOP'
            FocusControl = dbeCFOPRetencaoICMS
            Transparent = True
          end
          object Label63: TLabel
            Left = 16
            Top = 221
            Width = 55
            Height = 13
            Caption = 'ICMS retido'
            FocusControl = dbeICMSRetido
            Transparent = True
          end
          object spCFOPRetencao: TSpeedButton
            Left = 166
            Top = 195
            Width = 23
            Height = 22
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
            OnClick = spCFOPRetencaoClick
          end
          object DBEdit14: TDBEdit
            Left = 16
            Top = 32
            Width = 150
            Height = 21
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit28: TDBEdit
            Left = 16
            Top = 72
            Width = 150
            Height = 21
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit29: TDBEdit
            Left = 16
            Top = 113
            Width = 150
            Height = 21
            DataSource = dsCadastro
            TabOrder = 2
          end
          object cmbUFRetencao: TDBComboBox
            Left = 16
            Top = 155
            Width = 61
            Height = 22
            Style = csOwnerDrawFixed
            DataSource = dsCadastro
            ItemHeight = 16
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
            TabOrder = 3
          end
          object dbeCidadeRetencao: TDBEdit
            Left = 82
            Top = 155
            Width = 337
            Height = 21
            CharCase = ecUpperCase
            DataSource = dsCadastro
            TabOrder = 4
            OnExit = dbeCidadeRetencaoExit
          end
          object dbeCFOPRetencaoICMS: TDBEdit
            Left = 16
            Top = 196
            Width = 150
            Height = 21
            DataSource = dsCadastro
            MaxLength = 4
            TabOrder = 5
            OnExit = dbeCFOPRetencaoICMSExit
            OnKeyPress = dbeCFOPRetencaoICMSKeyPress
          end
          object dbeICMSRetido: TDBEdit
            Left = 16
            Top = 237
            Width = 150
            Height = 21
            DataSource = dsCadastro
            TabOrder = 6
          end
        end
        object tbsVeiculo: TTabSheet
          Caption = 'Ve'#237'culo'
          ImageIndex = 2
          object Label54: TLabel
            Left = 16
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Placa'
            FocusControl = dbeVeiculoPlaca
            Transparent = True
          end
          object Label55: TLabel
            Left = 16
            Top = 56
            Width = 30
            Height = 13
            Caption = 'RNTC'
            FocusControl = dbeVeiculoRNTC
            Transparent = True
          end
          object Label56: TLabel
            Left = 16
            Top = 96
            Width = 14
            Height = 13
            Caption = 'UF'
            Transparent = True
          end
          object dbeVeiculoPlaca: TDBEdit
            Left = 16
            Top = 32
            Width = 264
            Height = 21
            CharCase = ecUpperCase
            DataField = 'transporte_veiculo_num_placa'
            DataSource = dsCadastro
            MaxLength = 7
            TabOrder = 0
            OnExit = dbeVeiculoPlacaExit
          end
          object dbeVeiculoRNTC: TDBEdit
            Left = 16
            Top = 72
            Width = 264
            Height = 21
            CharCase = ecUpperCase
            DataField = 'transporte_veiculo_rntc'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object cmbUFVeiculo: TDBLookupComboBox
            Left = 16
            Top = 112
            Width = 61
            Height = 21
            DataField = 'UF_VEICULO'
            DataSource = dsCadastro
            TabOrder = 2
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Reboque'
          ImageIndex = 3
          object Label64: TLabel
            Left = 16
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Placa'
            FocusControl = dbeRecoquePlaca
          end
          object Label65: TLabel
            Left = 16
            Top = 60
            Width = 30
            Height = 13
            Caption = 'RNTC'
            FocusControl = dbeReboqueRNTC
          end
          object Label66: TLabel
            Left = 16
            Top = 102
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object dbeRecoquePlaca: TDBEdit
            Left = 16
            Top = 33
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            DataField = 'transporte_reboque_num_placa'
            DataSource = dsCadastro
            MaxLength = 7
            TabOrder = 0
            OnExit = dbeRecoquePlacaExit
          end
          object dbeReboqueRNTC: TDBEdit
            Left = 16
            Top = 76
            Width = 298
            Height = 21
            CharCase = ecUpperCase
            DataField = 'transporte_reboque_rntc'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object cmbReboqueUF: TDBLookupComboBox
            Left = 16
            Top = 118
            Width = 61
            Height = 21
            DataField = 'UF_REBOQUE'
            DataSource = dsCadastro
            TabOrder = 2
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Volume'
          ImageIndex = 4
          object DBGridVolumes: TDBGrid
            Left = 0
            Top = 0
            Width = 946
            Height = 449
            Align = alClient
            Ctl3D = False
            DataSource = dsVolumes
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'VOL_ITEM'
                Title.Alignment = taCenter
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_QUANTIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde Vol.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_ESPECIE'
                Title.Alignment = taCenter
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 214
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_MARCA'
                Title.Alignment = taCenter
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 187
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_NUMERACAO'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero Vol.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_PESO_LIQUIDO'
                Title.Alignment = taCenter
                Title.Caption = 'Peso Liq.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_PESO_BRUTO'
                Title.Alignment = taCenter
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end>
          end
          object pnlBotoesVolumes: TPanel
            Left = 0
            Top = 449
            Width = 946
            Height = 45
            Align = alBottom
            TabOrder = 1
            object btnIncVolume: TBitBtn
              Left = 16
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Incluir'
              TabOrder = 0
              OnClick = btnIncVolumeClick
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000E30E0000E30E0000000100000001000031319C003131
                A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
                E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
                FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
                FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
                0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
                0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
                0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
                1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
                0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
                111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
                0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
            end
            object btnEditarVol: TBitBtn
              Left = 104
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Editar'
              TabOrder = 1
              OnClick = btnEditarVolClick
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000E30E0000E30E0000000100000001000031319C003131
                A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
                E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
                FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
                FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
                0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
                0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
                1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
                1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
                0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
                11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
                0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
            end
            object btnExcluir: TBitBtn
              Left = 192
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Excluir'
              TabOrder = 2
              OnClick = btnExcluirClick
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000E30E0000E30E0000000100000001000031319C003131
                A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
                E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
                FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
                FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
                0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
                0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
                0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
                1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
                0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
                11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
                0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
            end
          end
        end
      end
    end
    object tbCobranca: TTabSheet
      Caption = 'Cobran'#231'a'
      ImageIndex = 6
      OnShow = tbCobrancaShow
      DesignSize = (
        995
        522)
      object gbxDuplicatas: TGroupBox
        Left = 13
        Top = 16
        Width = 966
        Height = 281
        Anchors = [akLeft, akTop, akRight]
        Caption = '[ Duplicata ]'
        TabOrder = 0
        object lblTotal: TLabel
          Left = 491
          Top = 244
          Width = 31
          Height = 19
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label111: TLabel
          Left = 373
          Top = 244
          Width = 43
          Height = 19
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBGDuplicata: TDBGrid
          Left = 8
          Top = 27
          Width = 758
          Height = 200
          Ctl3D = False
          DataSource = dsDuplicatas
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
              FieldName = 'DUP_ITEM'
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DUP_NUMERO_DUPLICATA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 216
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DUP_DATA_VENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DUP_VALOR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end>
        end
        object btnAddDuplicata: TBitBtn
          Left = 8
          Top = 240
          Width = 75
          Height = 25
          Hint = 'Incluir duplicata'
          Caption = '&Incluir'
          TabOrder = 1
          OnClick = btnAddDuplicataClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
            0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
            0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
            111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnEdiDuplicata: TBitBtn
          Left = 88
          Top = 240
          Width = 75
          Height = 25
          Hint = 'Editar duplicata'
          Caption = '&Editar'
          TabOrder = 2
          OnClick = btnEdiDuplicataClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
            1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
            1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
            0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnExcDuplicata: TBitBtn
          Left = 168
          Top = 240
          Width = 75
          Height = 25
          Hint = 'Excluir duplicata'
          Caption = 'E&xcluir'
          TabOrder = 3
          OnClick = btnExcDuplicataClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
            0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
            0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
      end
    end
    object tsbInformacoes: TTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 4
      object Label52: TLabel
        Left = 16
        Top = 24
        Width = 208
        Height = 13
        Caption = 'Informa'#231#245'es adicionais de interesse do fisco'
        FocusControl = DBMemo1
        Transparent = True
      end
      object Label53: TLabel
        Left = 16
        Top = 144
        Width = 271
        Height = 13
        Caption = 'Informa'#231#245'es complementares de interesse do contribuinte'
        FocusControl = mmoObservacao
        Transparent = True
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 40
        Width = 700
        Height = 89
        TabStop = False
        DataField = 'informacoes_adicionais_fisco'
        DataSource = dsCadastro
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object mmoObservacao: TDBMemo
        Left = 16
        Top = 160
        Width = 700
        Height = 89
        DataField = 'informacoes_adicionais_contribu'
        DataSource = dsCadastro
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object tsNotaReferencias: TTabSheet
      Caption = 'Notas e Conhecimentos Fiscais Referenciados'
      ImageIndex = 7
      object pnlBotoesRef: TPanel
        Left = 0
        Top = 481
        Width = 954
        Height = 41
        Align = alBottom
        TabOrder = 0
        object btnNTR_Incluir: TBitBtn
          Left = 24
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnNTR_IncluirClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
            0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
            0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
            111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnNTR_Detalhar: TBitBtn
          Left = 112
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Detalhar'
          TabOrder = 1
          OnClick = btnNTR_DetalharClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
            1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
            1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
            0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnNTR_Excluir: TBitBtn
          Left = 200
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnNTR_ExcluirClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
            0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
            0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
      end
      object dbGridNotaReferenciadas: TDBGrid
        Left = 0
        Top = 0
        Width = 954
        Height = 481
        Align = alClient
        Ctl3D = False
        DataSource = dsListaNotasReferenciadas
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
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_ITEM'
            Title.Alignment = taCenter
            Width = 38
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_DESCRICAO_TIPO'
            Title.Alignment = taCenter
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_CHAVE'
            Title.Alignment = taCenter
            Width = 338
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_UF'
            Title.Alignment = taCenter
            Width = 26
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_MESANO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_CNPJ'
            Title.Alignment = taCenter
            Width = 146
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_MODELO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_SERIE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDR_NUMERO'
            Title.Alignment = taCenter
            Width = 73
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 550
    Width = 1003
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    DesignSize = (
      1003
      41)
    object BtAdicionar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Adicionar nova nota'
      Caption = '&Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtAdicionarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
        8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
        9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
        AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
        B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
        C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
        DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
        09090909090909090937373710302926231A16110E0E0E130937373710302C28
        26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
        292823221A11110E093737371736322E2E2C2826221A11110937373718383432
        2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
        34322E2C28262323093737371D3838383532312E2C282822093737371E383838
        3835323131302719093737371F383838383834342E0D0C0A093737371F383838
        383838362A0204000137373725383838383838382B070503373737371F353434
        343434342A070B37373737371F212121211F1F211C0637373737}
    end
    object BtCancelar: TBitBtn
      Left = 737
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      Anchors = [akRight, akBottom]
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E00000001000000010000AD4A0000B54A
        0000B5520000BD520000BD5A0000C65A0000C6630000CE630000CE6B0000D673
        0000DE730000DE7B0000E77B0000E7840000F7940000CE6B0800FF9C0800A542
        1000AD4A1000B5521000C6631000B55A2100CE732100B55A3100BD633100FFAD
        3100CE7B3900BD6B4200C6734200CE844200CE844A00BD735200BD7B5200C67B
        5200C6845A00C6846300FFBD6300C68C7300CE947B00CE9C8400FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282828282828
        2828281F05002828282828282828282828282817050713282828282828282828
        2828282817060715282828282828282828282828281507062328280004040404
        040404232828000701282802090807070707061B28282706062328040B090711
        2727272828282800071328060D070A07232828282828281C070128070E13020B
        082028282828281C0701280F101D28020D0818282828280107132816191E2828
        140D0C03212513060623281A2421282828150C0D0B0908061228282622282828
        282827140808041B282828282828282828282828282828282828282828282828
        2828282828282828282828282828282828282828282828282828}
    end
    object BtGravar: TBitBtn
      Left = 817
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar nota'
      Anchors = [akRight, akBottom]
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000942929009431
        31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
        4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
        5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
        73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
        8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
        A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
        BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
        CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
        E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
        33343433332505050B4848191516111B27384647452D0002131048191515111A
        05184046492E0102121048191515111C03032F42493200011210481915151120
        0601243A493200011210481915151221231D1F27322C04041310481915151515
        1515151313151515160F48190D111E282B292B2828292B26150C481909384544
        4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
        3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
        4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
        4343434343434630130F4848092D3A363636363636363A2A0748}
    end
    object BtSair: TBitBtn
      Left = 913
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar esta janela'
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtSairClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000006400004242
        42008C6363009A666600B9666600BB686800B0717200C3686900C66A6B00C76A
        6D00CF6C6E00D2686900D16D6E00CC6E7100C0797A00D2707200D4707100D572
        7300D0727500D3747600D9757600D8767700E37D7E000080000000960000DC7F
        8000FF00FF00D7868700DA888800D8888A00DA888A00DF898A00E6808100E085
        8500E9818200EE868700E3888900E78C8D00F0878800F18B8C00F28B8C00F18D
        8E00F48C8D00F48E8F00EB8F9000EC969700E49A9800F3919200F7909100F791
        9200F2939400F9909200F9949500FA949500F9969700F0999A00FC999A00FF9D
        9E00F7B58400F5A7A500FACCAA00FBD6BB00FADCDC00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1A1A1A1A1A
        1A02011A1A1A1A1A1A1A1A1A1A1A02030405011A1A1A1A1A1A1A1A1A0203080B
        0B07010303030303031A1A1A030C0C0C0A09010E1F323B3B031A1A1A030C0C10
        0F0D01181818183B031A1A1A03111114151201181818183B031A1A1A03161616
        201301181717173B031A1A1A0326222D3E1D01171700003B031A1A1A03262337
        3F1E013C3A3A3A3B031A1A1A03272B282A19013C3D3D3D3B031A1A1A03273031
        2921013C3D3D3D3B031A1A1A032734352F24013C3D3D3D3B031A1A1A03273338
        3625013C3D3D3D3B031A1A1A03032E33392C013C3D3D3D3B031A1A1A1A1A0306
        1B1C010303030303031A1A1A1A1A1A1A0303011A1A1A1A1A1A1A}
    end
    object BtEditar: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Editar nota atual'
      Caption = '&Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtEditarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000520B0000520B000000010000000100002D2D2D001855
        6F004544420058534E005160610054777B007C707800B56D3E00C1713500C076
        38008A5B5200947E7500AD7B7300BD847B00EFA65A00EDA75F00F0A85C00C694
        7B0000009A000316AC0041749600477AA9000018C6001029D600106BFF00FF00
        FF0035A8F5004A9EED006D8AFD00B5848400BD9494009891A200C6A59C00F1BC
        8600C6ADA500C6ADAD00CEB5AD00D6B5AD00C6B5B500D6BDB500DEBDB500F8C2
        8C00F9C48D00EFCE9400EFCE9C00F7D69C00DEC6B500D6C6BD00EFD6AD00F7D6
        A500FBD3A900E7C6B500EFCEB500EFCEBD00F7DEB500F7DEBD00C6C6C600E7CE
        CE00E7D6CE00F7E7C600FFEFD600FFEFE700FFF7E700FFF7EF00FFF7F700FFFF
        F700FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000019191D1D1D1D
        1D1D1D1D1D1D1D1D1D191919203C3B373630312C2B2B2B2D1D191919203C3838
        383838383838382C1D191919223D00032F37302C2C2C2B2C1D191919223E0302
        042F36302C2C2C2B1D1919192441380515010A263838382C1D19191925423F05
        140B080A2F3030301D1919192742403F062110090A2F30301D19191927423838
        0C322A0E090A262F1E19191928424242400C322A10080A2F231919192E424242
        42400C32290F070A26191919334238383838380C321F1A131219191933424242
        424242410C1B17171312191935424242424242423A161C181719191933403F3F
        3F3F3F3F39111616191919193334343434333334270D19191919}
    end
    object btnVenda: TBitBtn
      Left = 232
      Top = 8
      Width = 105
      Height = 25
      Hint = 'Clique aqui para importar venda'
      Caption = '&Importa Venda'
      TabOrder = 5
      OnClick = btnVendaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6696BA6696BA6696BA669
        6BA6696BA6696BA6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA6696BF3D3A4F0CB97EFC68AEDC180EBBB76A6696BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7756BF6DDBA707BCE0F2E
        F36E75BFEEC484A6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFBC8268F8E7CE0F30F7001EFF0F2FF3F0CC96A6696BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1926DFBF2E27486E70F30
        F8727FD7F3D7ABA6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFDA9D75FEFAF3FBF4E7FAEEDCF8E7CFF6E1C0A6696BFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79FFFFFFFEFBF8FCF7
        EEA6696AA6696AAC6C5AA46769A46769A46769A46769A46769A46769A46769A4
        6769FF00FFE7AB79FFFFFFFFFFFFFEFCFBA6696AC67F4EFF00FFA46769E9C49D
        D8A57BD8A373D59D66D1965AEAB66CA46769FF00FFE7AB79D1926DD1926DD192
        6DA6696AFF00FF005901A46769BB76507D1800821F00811F00811E00DCA162A4
        6769FF00FFFF00FF2D6718FF00FFFF00FFFF00FFFF00FF016405A7756BF6E9DD
        8A2A087F1A007B1600AB5B30FCDD9FA46769FF00FF005D03067F14FF00FFFF00
        FFFF00FF017707036506BC8268FFFFFFC99379791400892907E6BD99FFEAB5A4
        6769015A0630BD571A922F01550303600704780A05840C015804D1926DFFFFFF
        FBF4F299411EBF7D59FAEDD4D4BCA02A70272CC55841E07527BB4515A5280996
        13058C0D026606FF00FFDA9D75FFFFFFFFFFFFE7D0C4F7EEE3A46769A46769A4
        6A5A1C963122B63E149A2605700B036C07026005FF00FFFF00FFE7AB79FFFFFF
        FFFFFFFFFFFFFCFFFFA46769D18649FF00FFFF00FF0875110C8816FF00FFFF00
        FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DA46769FF00FFFF
        00FFFF00FFFF00FF036307FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnImportaXML: TBitBtn
      Left = 376
      Top = 8
      Width = 97
      Height = 25
      Hint = 'Importa arquivo XML de Transfer'#234'ncia'
      Caption = 'Importar XML'
      TabOrder = 6
      OnClick = btnImportaXMLClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFBE9D85BC957BBC957BBD9376BF9172BF8E6EC18C69C38962C38962C484
        5EC58258C88055C88055FFFFFFFFFFFFFFFFFFBE9D85FCEDE3FCECE1FCEAE0FB
        E9DEFBE8DCFBE8DCFBE6D9FBE6D9FAE3D4FAE3D4FAE3D4C58258FFFFFFFFFFFF
        FFFFFFC2A28CFCEFE6FCEDE3D6AE90D6AE90D6AE90D6AE90D6AE90D6AE90D6AE
        90FAE3D4FAE3D4C4845EFFFFFFFFFFFFFFFFFFC2A28CFCEFE6FCEFE6FCEDE3FC
        ECE1FCEAE0FBE9DEFBE8DCFBE8DCFBE6D9FBE6D9FAE3D4C38962FFFFFFFFFFFF
        FFFFFFC6A892FCEFE6FCEFE6D6AE90D6AE90D6AE90D6AE90D6AE90D6AE90D6AE
        90FBE6D9FBE6D9C18C69FFFFFFFFFFFFFFFFFFC6A892FDF1EAFCEFE6FCEFE6FC
        EFE6FCEDE3FCECE1FCEAE0FBE9DEFBE8DCFBE8DCFBE6D9BF8E6EFFFFFFFFFFFF
        FFFFFFC9AC97FDF1EAFDF1EAD6AE90D6AE90D6AE90D6AE90D6AE90D6AE90D6AE
        90FBE8DCFBE8DCBF9172FFFFFFFFFFFFFFFFFFC9AC97FDF4EFFDF1EAFDF1EAFC
        EFE6FCEFE6FCEFE6FCEDE3FCECE1FCEAE0FBE9DEFBE8DCBD93760066FF0066FF
        0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066
        FFFCEAE0FBE9DEBC957B0066FFFFFFFF0066FFFFFFFF0066FFFFFFFF0066FF00
        66FF0066FFFFFFFF0066FFFFFFFFFFFFFFFCECE1FCEAE0BA977E0066FF0066FF
        FFFFFF0066FF0066FFFFFFFF0066FFFFFFFF0066FFFFFFFF0066FFFFFFFF0066
        FFFCEDE3FCECE1BA977E0066FFFFFFFF0066FFFFFFFF0066FFFFFFFFFFFFFF00
        66FFFFFFFFFFFFFF0066FFFFFFFF0066FFBA977EBA977EBA977E0066FFFFFFFF
        0066FFFFFFFF0066FFFFFFFF0066FF0066FF0066FFFFFFFF0066FFFFFFFF0066
        FFFFFFFFFFFFFFBA977E0066FF0066FF0066FF0066FF0066FF0066FF0066FF00
        66FF0066FF0066FF0066FF0066FF0066FFFFFFFFBA977EFFFFFFFFFFFFFFFFFF
        FFFFFFDAC3B3FEF9F5FEF9F5FEF9F5FEF9F5FEF6F0FEF6F0FDF4EFBA977EFFFF
        FFBA977EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC3B3D4BBA9CDB19DCDB19DC9
        AC97C6A892C2A28CBE9D85BA977EBA977EFFFFFFFFFFFFFFFFFF}
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsNotaFiscal
    OnDataChange = dsCadastroDataChange
    Left = 412
    Top = 40
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 572
    Top = 48
  end
  object dsItensNota: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsItemsNotaFiscal
    OnDataChange = dsItensNotaDataChange
    Left = 468
    Top = 40
  end
  object dsVolumes: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsListaVolumes
    Left = 520
    Top = 32
  end
  object dsDuplicatas: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsListaDuplicatas
    Left = 297
    Top = 160
  end
  object dsItens: TDataSource
    Left = 672
    Top = 176
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML'
    Left = 900
    Top = 80
  end
  object dsListaNotasReferenciadas: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsListaNT_Ref
    OnDataChange = dsListaNotasReferenciadasDataChange
    Left = 808
    Top = 344
  end
end
