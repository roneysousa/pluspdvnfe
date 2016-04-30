unit uFrmEditarItemNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, ComCtrls;

type
  TFrmEditarItemNota = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    btnCancela: TBitBtn;
    Label1: TLabel;
    dbeCFOP: TDBEdit;
    dsCadastroItem: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    spCFOP: TSpeedButton;
    dbeNCM: TDBEdit;
    Label3: TLabel;
    PageControl1: TPageControl;
    tbsICMS: TTabSheet;
    tbsIPI: TTabSheet;
    tbsPIS: TTabSheet;
    tbsCofins: TTabSheet;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    dbeCstPIS: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    dbeCstCofins: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    dbeCstIPI: TDBEdit;
    tbsSimplesNac: TTabSheet;
    Label20: TLabel;
    dbeCsosn: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    dbeCstICMS: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    dbeBaseICMS: TDBEdit;
    Label5: TLabel;
    dbeAliquotaICMS: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    gbICSM_ST: TGroupBox;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    lblReducao: TLabel;
    dbeReducao: TDBEdit;
    Label25: TLabel;
    dbeOrigem: TDBEdit;
    spOrigem: TSpeedButton;
    Label26: TLabel;
    dbeOrigemSimples: TDBEdit;
    spOrigem2: TSpeedButton;
    tsIpiDevolvido: TTabSheet;
    Label27: TLabel;
    dbePercIpiDevolvida: TDBEdit;
    Label28: TLabel;
    dbeValorIpiDevolvido: TDBEdit;
    procedure btnOKClick(Sender: TObject);
    procedure dbeCFOPExit(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spCFOPClick(Sender: TObject);
    procedure dbeCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNCMExit(Sender: TObject);
    procedure dbeNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCstICMSExit(Sender: TObject);
    procedure dbeCstIPIExit(Sender: TObject);
    procedure dbeCsosnExit(Sender: TObject);
    procedure dbeCstPISExit(Sender: TObject);
    procedure dbeCstCofinsExit(Sender: TObject);
    procedure dbeCstICMSKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCstIPIKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCstPISKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCstCofinsKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCsosnKeyPress(Sender: TObject; var Key: Char);
    procedure dbeBaseICMSExit(Sender: TObject);
    procedure dbeAliquotaICMSExit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure dsCadastroItemDataChange(Sender: TObject; Field: TField);
    procedure dbeReducaoExit(Sender: TObject);
    procedure dbeOrigemKeyPress(Sender: TObject; var Key: Char);
    procedure dbeOrigemExit(Sender: TObject);
    procedure spOrigemClick(Sender: TObject);
    procedure spOrigem2Click(Sender: TObject);
    procedure dbePercIpiDevolvidaExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Procedure AbasImpostos();
    Procedure Calcular();
    Procedure MostrarCampos();
    Function ValidarPercIPI_Devolvido(): Boolean;
  public
    { Public declarations }
  end;

var
  FrmEditarItemNota: TFrmEditarItemNota;
  aOpcaoIPIDevolvido : Boolean;

implementation

uses udmNFe, uDMDados, uFuncoes, uFrmLocCFOP, uFrmLocalizarNCM;

{$R *.dfm}

procedure TFrmEditarItemNota.btnOKClick(Sender: TObject);
begin
     if (tsIpiDevolvido.TabVisible) Then
         If not uFuncoes.Empty(dbePercIpiDevolvida.Text) and not ValidarPercIPI_Devolvido() Then
                Exit;

     //if (dmNFe.cdsItensNota.State in [dsEdit]) then
     If (dsCadastroItem.DataSet.State in [dsEdit]) then
     begin
          //dmNFe.cdsItemsNotaFiscal.edit;
          ///dmNFe.cdsItemsNotaFiscalCDS_CFOP.AsInteger := dmNFe.cdsItensNotaNFI_CFOP.AsInteger;
          dmNFe.cdsItemsNotaFiscal.post;
          //
          //dmNFe.cdsItensNota.ApplyUpdates(0);
     End;
     //
     Close;
end;

procedure TFrmEditarItemNota.dbeCFOPExit(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeCFOP.Text) Then
            begin
                 If not (dmDados.ProcurarValorInt(dbeCFOP.Text, 'cfop_codigo', 'cfop')) Then
                  begin
                       Application.MessageBox(PChar('Código CFOP não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeCFOP.Clear;
                       dbeCFOP.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmEditarItemNota.btnCancelaClick(Sender: TObject);
begin
    If (dsCadastroItem.DataSet.State in [dsEdit]) then
        dsCadastroItem.DataSet.Cancel;
end;

procedure TFrmEditarItemNota.FormShow(Sender: TObject);
begin
     dmNFe.CarregarlistaCST_ICMS;
     dmNFe.CarregarlistaCST_IPI;
     dmNFe.CarregarlistaCST_PIS;
     dmNFe.CarregarlistaCST_COFINS;
     dmNFe.CarregarlistaCST_SIMPLES;
     //
     AbasImpostos;
     //
     {if not(dsCadastroItem.DataSet.State = dsEdit) Then
        dsCadastroItem.DataSet.edit;}

     tsIpiDevolvido.TabVisible := False;
     if (aOpcaoIPIDevolvido) Then
        tsIpiDevolvido.TabVisible := True;

     MostrarCampos();
     //
     if uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_ORIGEM_PRODUTO').AsString) Then
          dsCadastroItem.DataSet.FieldByName('CDS_ORIGEM_PRODUTO').AsString := '0';
     //
     Calcular;
end;

procedure TFrmEditarItemNota.spCFOPClick(Sender: TObject);
begin
     dbeCFOP.SetFocus;
     Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
     try
             With frmLocCFOP do
               ShowModal;
     Finally
            If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
             Begin
                  if not (dsCadastroItem.DataSet.State in [dsEdit]) Then
                     dsCadastroItem.DataSet.Edit;
                  //
                  dbeCFOP.Text := frmLocCFOP.cdsConsultarCFOP_CODIGO.AsString;
                  if (btnOK.Enabled) Then
                     btnOK.SetFocus;
             End;
            frmLocCFOP.Free;
     End;
end;

procedure TFrmEditarItemNota.dbeCFOPKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
      if (dsCadastroItem.DataSet.State in [dsEdit]) Then
      begin
           If (key = #13) and uFuncoes.Empty(dbeCFOP.Text) Then
            begin
                key  := #0;
                spCFOPClick(Self);
            End;
          //
          If (key = #13) and NOT uFuncoes.Empty(dbeCFOP.Text) Then
            begin
                key  := #0;
                If (btnOK.Enabled) then
                   btnOK.SetFocus;
            End;

      End;
end;

procedure TFrmEditarItemNota.dbeNCMExit(Sender: TObject);
begin
   if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
   begin
      if not uFuncoes.Empty(dbeNCM.Text)
        and (Length(dbeNCM.Text) < 8) Then
      begin
           Application.MessageBox(PChar('Código NCM não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNCM.SetFocus;
           Exit;
      End;
      //
           if not uFuncoes.Empty(dbeNCM.Text) Then
            begin
                 dbeNCM.Text := uFuncoes.StrZero(dbeNCM.Text,8);
                 If not (dmDados.ProcurarValor(dbeNCM.Text, 'id', 'ncm')) Then
                  begin
                       Application.MessageBox(PChar('Código NCM não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeNCM.Clear;
                       dbeNCM.SetFocus;
                       Exit;
                  End;
            End;
   End;
end;

procedure TFrmEditarItemNota.dbeNCMKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (key = #13) and uFuncoes.Empty(dbeNCM.Text) and
         (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeNCM.SetFocus;
         Application.CreateForm(TFrmLocalizarNCM, FrmLocalizarNCM);
         try
             With FrmLocalizarNCM do
               ShowModal;
         Finally
            If not (FrmLocalizarNCM.cdsConsultar.IsEmpty) Then
             Begin
                  dsCadastroItem.DataSet.FieldByName('CDS_NCM').AsString := FrmLocalizarNCM.cdsConsultarNCM_CODIGO.AsString;
                  // dbeNCM.Text
                  if (btnOK.Enabled) then
                       btnOK.SetFocus;
             End;
            FrmLocalizarNCM.Free;
         End;
     End;
     //
     If (key = #13) and not uFuncoes.Empty(dbeNCM.Text) Then
      begin
           key  := #0;
           if (btnOK.Enabled) then
              btnOK.SetFocus;
      End;
end;

procedure TFrmEditarItemNota.dbeCstICMSExit(Sender: TObject);
begin

end;

procedure TFrmEditarItemNota.dbeCstIPIExit(Sender: TObject);
begin
end;

procedure TFrmEditarItemNota.AbasImpostos;
begin
   {  if (DM.CdsConfigCFG_COD_REGIME_TRIBUTARIO.AsInteger = 1) Then     to-do
     begin
         tbsSimplesNac.TabVisible := True;
         tbsICMS.TabVisible       := False;
         tbsIPI.TabVisible        := False;
         tbsPIS.TabVisible        := False;
         tbsCofins.TabVisible     := False;
         //
         PageControl1.ActivePageIndex := 4;
     End
     else
     begin}
         tbsSimplesNac.TabVisible := False;
         tbsICMS.TabVisible       := true;
         tbsIPI.TabVisible        := true;
         tbsPIS.TabVisible        := true;
         tbsCofins.TabVisible     := true;
         //
         PageControl1.ActivePageIndex := 0;
//     End;
end;

procedure TFrmEditarItemNota.dbeCsosnExit(Sender: TObject);
begin

end;

procedure TFrmEditarItemNota.dbeCstPISExit(Sender: TObject);
begin

end;

procedure TFrmEditarItemNota.dbeCstCofinsExit(Sender: TObject);
begin

end;

procedure TFrmEditarItemNota.dbeCstICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
end;

procedure TFrmEditarItemNota.dbeCstIPIKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
end;

procedure TFrmEditarItemNota.dbeCstPISKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
end;

procedure TFrmEditarItemNota.dbeCstCofinsKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
end;

procedure TFrmEditarItemNota.dbeCsosnKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key := #0;
end;

procedure TFrmEditarItemNota.Calcular;
Var
   FBaseICMSReduzido, fPercReducao, fBasaCalculo : Double;
begin
   If (dmNFe.cdsItemsNotaFiscal.State in [dsInsert, dsEdit]) Then
   begin
     if (dmNFe.cdsItemsNotaFiscalCDS_BCICMS.AsFloat > 0) and (dmNFe.cdsItemsNotaFiscalCDS_ALIQICMS.AsFloat > 0) Then
      begin
         dmNFe.cdsItemsNotaFiscalCDS_VLIPI.AsFloat := uFuncoes.Arredondar( uFuncoes.Gerapercentual(dmNFe.cdsItemsNotaFiscalCDS_BCICMS.AsFloat,dmNFe.cdsItemsNotaFiscalCDS_ALIQICMS.AsFloat),2);
         //
         fBasaCalculo      := uFuncoes.Arredondar(dmNFe.cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat * dmNFe.cdsItemsNotaFiscalCDS_QTDECOM.AsFloat, 2);
         //
         if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 20) and (dsCadastroItem.DataSet.FieldByName('CDS_PEREDUCAO').AsFloat > 0) Then
          begin
               fPercReducao      := (dsCadastroItem.DataSet.FieldByName('CDS_PEREDUCAO').AsFloat /100);
               FBaseICMSReduzido := uFuncoes.Arredondar(fBasaCalculo * (1 - fPercReducao),2);
               dmNFe.cdsItemsNotaFiscalCDS_BCICMS.AsFloat := FBaseICMSReduzido;
               dmNFe.cdsItemsNotaFiscalCDS_VLICMS.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FBaseICMSReduzido, dmNFe.cdsItemsNotaFiscalCDS_ALIQICMS.AsFloat),2);
          End
          Else
           begin
               dmNFe.cdsItemsNotaFiscalCDS_BCICMS.AsFloat := fBasaCalculo;
               dmNFe.cdsItemsNotaFiscalCDS_VLICMS.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(fBasaCalculo, dmNFe.cdsItemsNotaFiscalCDS_ALIQICMS.AsFloat),2);
           End;
      End;

     if (dmNFe.cdsItemsNotaFiscalCDS_BC_IPI.AsFloat > 0) and (dmNFe.cdsItemsNotaFiscalCDS_ALIQIPI.AsFloat > 0) Then
         dmNFe.cdsItemsNotaFiscalCDS_VLIPI.AsFloat := uFuncoes.Arredondar( uFuncoes.Gerapercentual(dmNFe.cdsItemsNotaFiscalCDS_BC_IPI.AsFloat,dmNFe.cdsItemsNotaFiscalCDS_ALIQIPI.AsFloat),2)
      Else
         dmNFe.cdsItemsNotaFiscalCDS_VLIPI.Clear;

     if (dmNFe.cdsItemsNotaFiscalCDS_ALIQ_PIS.AsFloat > 0) Then
         dmNFe.cdsItemsNotaFiscalCDS_VALOR_PIS.AsFloat := uFuncoes.Arredondar( uFuncoes.Gerapercentual(dmNFe.cdsItemsNotaFiscalCDS_BC_PIS.AsFloat,dmNFe.cdsItemsNotaFiscalCDS_ALIQ_PIS.AsFloat),2)
     Else
         dmNFe.cdsItemsNotaFiscalCDS_VALOR_PIS.Clear;
     if (dmNFe.cdsItemsNotaFiscalCDS_ALIQ_COFINS.asfloat > 0) Then
         dmNFe.cdsItemsNotaFiscalCDS_VALOR_COFINS.AsFloat := uFuncoes.Arredondar( uFuncoes.Gerapercentual(dmNFe.cdsItemsNotaFiscalCDS_BC_COFINS.AsFloat,dmNFe.cdsItemsNotaFiscalCDS_ALIQ_COFINS.AsFloat),2)
     Else
         dmNFe.cdsItemsNotaFiscalCDS_VALOR_COFINS.Clear;
   End;
end;

procedure TFrmEditarItemNota.dbeBaseICMSExit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.dbeAliquotaICMSExit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.DBEdit6Exit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.DBEdit7Exit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.DBEdit10Exit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.DBEdit11Exit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.DBEdit14Exit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.DBEdit15Exit(Sender: TObject);
begin
     Calcular;
end;

procedure TFrmEditarItemNota.dsCadastroItemDataChange(Sender: TObject;
  Field: TField);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          MostrarCampos();
          {lblReducao.Visible := False;
          dbeReducao.Visible := False;
          if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 20) Then
           begin
                lblReducao.Visible := True;
                dbeReducao.Visible := True;
           End;
           //
          gbICSM_ST.Visible := false;
          if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 10) Then
           begin
                gbICSM_ST.Visible := True;
           End;}
     End;
end;

procedure TFrmEditarItemNota.dbeReducaoExit(Sender: TObject);
begin
   Calcular;
end;

procedure TFrmEditarItemNota.dbeOrigemKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEditarItemNota.dbeOrigemExit(Sender: TObject);
begin
     if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          if not uFuncoes.Empty(dbeOrigem.text) Then
           begin
                If StrtoInt(dbeOrigem.text) > 8 Then
                 begin
                      Application.MessageBox(PChar('Código inválido!'),
                         'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                      dbeOrigem.text := '0';
                 End;
           End;
     End;
end;

procedure TFrmEditarItemNota.MostrarCampos;
begin
          lblReducao.Visible := False;
          dbeReducao.Visible := False;
          gbICSM_ST.Visible := false;
          //
          if not uFuncoes.Empty(dsCadastroItem.DataSet.FieldByName('CDS_CST').AsString) Then
           begin
              if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 20) Then
               begin
                   lblReducao.Visible := True;
                   dbeReducao.Visible := True;
               End;
               //
               if (dsCadastroItem.DataSet.FieldByName('CDS_CST').AsInteger = 10) Then
                   gbICSM_ST.Visible := True;
           End;
end;

procedure TFrmEditarItemNota.spOrigemClick(Sender: TObject);
begin

end;

procedure TFrmEditarItemNota.spOrigem2Click(Sender: TObject);
begin

end;

procedure TFrmEditarItemNota.dbePercIpiDevolvidaExit(Sender: TObject);
begin
    if (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          ValidarPercIPI_Devolvido();
     End;
end;

function TFrmEditarItemNota.ValidarPercIPI_Devolvido: Boolean;
begin
     result := False;
     //
          if not uFuncoes.Empty(dbePercIpiDevolvida.Text) Then
          begin
               if (StrtoFloat(dbePercIpiDevolvida.Text) < 1)
                  or (StrtoFloat(dbePercIpiDevolvida.Text) > 100) Then
                begin
                     dbePercIpiDevolvida.SetFocus;
                     Raise Exception.Create('% digitado inválido.');
                End;
                //
                Result := True;
          End;
end;

procedure TFrmEditarItemNota.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
      If (dsCadastroItem.DataSet.State in [dsInsert, dsEdit]) then
       begin

            If Application.MessageBox('Salvar dados do item?',
               'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = idNo then
               begin
                    dsCadastroItem.DataSet.Cancel;
                    Canclose := True;
               End
               else
                begin
                   Canclose := false;
                   btnOK.SetFocus;
                End;
       End;
end;

End.
