inherited frmLocProdutoServico: TfrmLocProdutoServico
  Left = 281
  Top = 179
  Caption = 'Localizar Produto/Servi'#231'o'
  ClientHeight = 351
  ClientWidth = 617
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 617
  end
  inherited StatusBar1: TStatusBar
    Top = 332
    Width = 617
  end
  inherited Panel2: TPanel
    Width = 617
    Height = 275
    inherited grdConsultar: TDBGrid
      Width = 615
      Height = 273
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
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
          FieldName = 'descricao'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 363
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_venda'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 114
          Visible = True
        end>
    end
  end
  inherited dstConsultar: TSQLDataSet
    CommandText = 
      'select id, cod_barras, descricao, id_ncm, id_unidade, valor_vend' +
      'a from PRODUTOS order by descricao'
    SQLConnection = dmDados.sqlConexao
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      DisplayFormat = '000000000'
    end
    object cdsConsultarcod_barras: TStringField
      DisplayLabel = 'Barras'
      FieldName = 'cod_barras'
      Size = 14
    end
    object cdsConsultardescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 60
    end
    object cdsConsultarid_ncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'id_ncm'
      Size = 10
    end
    object cdsConsultarid_unidade: TStringField
      DisplayLabel = 'UND'
      FieldName = 'id_unidade'
      Size = 2
    end
    object cdsConsultarvalor_venda: TFMTBCDField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'valor_venda'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 15
      Size = 8
    end
  end
end
