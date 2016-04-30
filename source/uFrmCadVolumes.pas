unit uFrmCadVolumes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls, Grids, DBGrids;

type
  TfrmCadVolumes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    dbeQuant: TDBEdit;
    dsCadastroItens: TDataSource;
    Label2: TLabel;
    dbeEspecie: TDBEdit;
    Label3: TLabel;
    dbeMarca: TDBEdit;
    Label4: TLabel;
    dbeNumeracao: TDBEdit;
    Label5: TLabel;
    dbePesoLiquido: TDBEdit;
    Label6: TLabel;
    dbePesoBruto: TDBEdit;
    DBGrid1: TDBGrid;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVolumes: TfrmCadVolumes;
  Opcao : String;
  M_NRITEM : Integer;

implementation

uses udmNFe;

{$R *.dfm}

procedure TfrmCadVolumes.btnFecharClick(Sender: TObject);
begin
     dmNFe.cdsListaVolumes.Cancel; 
     Close;
end;

procedure TfrmCadVolumes.FormShow(Sender: TObject);
begin
     KeyPreview := true;
     With dmNFe.cdsListaVolumes do
       begin
            if (Opcao = 'I') Then
             begin
                 Append;
                 FieldByName('VOL_ID_NOTA_FISCAL').AsInteger := dmNFe.cdsNotaFiscalid.AsInteger;
                 FieldByName('VOL_ITEM').AsInteger           := M_NRITEM;
             End
            Else
                Edit;
            //
            dbeQuant.SetFocus;
       End;
end;

procedure TfrmCadVolumes.btnOKClick(Sender: TObject);
begin
     dmNFe.cdsListaVolumes.Post; 
     Close;
end;

procedure TfrmCadVolumes.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) and (dsCadastroItens.DataSet.State in [dsInsert, dsEdit]) then
      if not (ActiveControl is TDBGrid) then
       begin
           if (not (ActiveControl is TDBMemo)) Then
            begin
               Key := #0;
               Perform(WM_NEXTDLGCTL, 0, 0);
            End;
      end
      else
         if (ActiveControl is TDBGrid) then
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
                else
                   selectedindex := 0;
end;

procedure TfrmCadVolumes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if (dmNFe.cdsListaVolumes.State in [dsInsert, dsEdit]) then
          dmNFe.cdsListaVolumes.Cancel;
end;

end.
