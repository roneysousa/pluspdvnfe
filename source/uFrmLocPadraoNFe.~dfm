object frmLocPadraoNFe: TfrmLocPadraoNFe
  Left = 192
  Top = 164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar'
  ClientHeight = 324
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 48
      Height = 13
      Caption = '&Descri'#231#227'o'
      FocusControl = edtConsultar
      Transparent = True
    end
    object edtConsultar: TEdit
      Left = 11
      Top = 24
      Width = 425
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edtConsultarChange
      OnKeyDown = edtConsultarKeyDown
      OnKeyPress = edtConsultarKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 305
    Width = 512
    Height = 19
    Panels = <>
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 512
    Height = 248
    Align = alClient
    TabOrder = 2
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 510
      Height = 246
      Align = alClient
      Ctl3D = False
      DataSource = dsConsultar
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
      OnDblClick = grdConsultarDblClick
      Columns = <
        item
          Expanded = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    Left = 156
    Top = 162
  end
  object dstConsultar: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    Left = 224
    Top = 161
  end
  object dspConsultar: TDataSetProvider
    DataSet = dstConsultar
    Options = [poAllowCommandText]
    Left = 292
    Top = 162
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 348
    Top = 162
  end
end
