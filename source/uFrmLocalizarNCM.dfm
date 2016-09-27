inherited FrmLocalizarNCM: TFrmLocalizarNCM
  Left = 307
  Top = 162
  Caption = 'Localizar NCM'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited edtConsultar: TEdit
      Width = 486
    end
  end
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
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
          Width = 55
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
          Width = 400
          Visible = True
        end>
    end
  end
  inherited dstConsultar: TSQLDataSet
    CommandText = 
      'select id, descricao from NCM where (descricao like :pNOME) orde' +
      'r by descricao'
    Params = <
      item
        DataType = ftUnknown
        Name = 'pNOME'
        ParamType = ptInput
      end>
    SQLConnection = dmDados.sqlConexao
  end
  inherited cdsConsultar: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptInput
      end>
    object cdsConsultarid: TStringField
      FieldName = 'id'
      Size = 10
    end
    object cdsConsultardescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
  end
end
