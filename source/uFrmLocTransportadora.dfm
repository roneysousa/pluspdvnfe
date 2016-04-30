inherited FrmLocTransportadora: TFrmLocTransportadora
  Caption = 'Localizar Transportadora'
  ClientHeight = 378
  ClientWidth = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 780
    inherited edtConsultar: TEdit
      Width = 566
    end
  end
  inherited Panel2: TPanel
    Width = 780
    Height = 302
    inherited grdConsultar: TDBGrid
      Width = 778
      Height = 300
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
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
          FieldName = 'nome_fantasia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razao_social'
          Width = 292
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'cpf_cnpj'
          Title.Alignment = taCenter
          Width = 137
          Visible = True
        end>
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 359
    Width = 780
  end
  inherited cdsConsultar: TClientDataSet
    Params = <
      item
        DataType = ftBoolean
        Name = 'ptransportadora'
        ParamType = ptInput
      end>
    object cdsConsultarid: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      DisplayFormat = '00000'
    end
    object cdsConsultarnome_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nome_fantasia'
      Size = 50
    end
    object cdsConsultarrazao_social: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'razao_social'
      Size = 50
    end
    object cdsConsultartipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarcpf_cnpj: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object cdsConsultartransportadora: TBooleanField
      FieldName = 'transportadora'
    end
  end
  inherited dstConsultar: TSQLDataSet
    CommandText = 
      'select id, nome_fantasia, razao_social, tipo_pessoa, cpf_cnpj, t' +
      'ransportadora from fornecedores where (transportadora = :ptransp' +
      'ortadora) order by nome_fantasia'
    Params = <
      item
        DataType = ftBoolean
        Name = 'ptransportadora'
        ParamType = ptInput
      end>
  end
end
