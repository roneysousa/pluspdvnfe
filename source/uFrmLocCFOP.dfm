inherited frmLocCFOP: TfrmLocCFOP
  Caption = 'Localizar CFOP'
  ClientHeight = 358
  ClientWidth = 602
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 602
    inherited edtConsultar: TEdit
      Width = 582
    end
  end
  inherited Panel2: TPanel
    Width = 602
    Height = 282
    inherited grdConsultar: TDBGrid
      Width = 600
      Height = 280
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 490
          Visible = True
        end>
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 339
    Width = 602
    SimpleText = 'Digite uma descri'#231#227'o de pressione <ENTER>'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarid: TIntegerField
      FieldName = 'id'
      DisplayFormat = '0000'
    end
    object cdsConsultardescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
  inherited dstConsultar: TSQLDataSet
    CommandText = 'select id, descricao from cfop order by id'
    MaxBlobSize = -1
    SQLConnection = dmDados.sqlConexao
  end
end
