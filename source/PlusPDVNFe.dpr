program PlusPDVNFe;

uses
  Forms,
  Windows,
  Dialogs,
  Controls,
  SysUtils,
  uFrmPlusPdvNfe in 'uFrmPlusPdvNfe.pas' {FrmMainNFe},
  udmDados in 'udmDados.pas' {dmDados: TDataModule},
  uFuncoes in 'uFuncoes.pas',
  udmNFe in 'udmNFe.pas' {dmNFe: TDataModule},
  uFrmNFENew in 'uFrmNFENew.pas' {FrmNotaFiscalEletronicaNovo},
  uFrmLocPadrao in 'uFrmLocPadrao.pas' {frmLocPadrao},
  uFrmLocalizaCliente in 'uFrmLocalizaCliente.pas' {frmLocalizarCliente},
  uFrmLocPadraoNFe in 'uFrmLocPadraoNFe.pas' {frmLocPadraoNFe},
  uFrmLocProdutoServico in 'uFrmLocProdutoServico.pas',
  uFrmLocCFOP in 'uFrmLocCFOP.pas' {frmLocCFOP},
  uFrmLocalizarNCM in 'uFrmLocalizarNCM.pas' {FrmLocalizarNCM},
  uFrmCadDuplicata in 'uFrmCadDuplicata.pas' {frmCadDuplicata},
  uFrmCadVolumes in 'uFrmCadVolumes.pas' {frmCadVolumes},
  uFrmLocVenda in 'uFrmLocVenda.pas' {FrmLocVenda},
  uFrmCupomVinculado in 'uFrmCupomVinculado.pas' {FrmCupomVinculado},
  uFrmEditarNotaRef in 'uFrmEditarNotaRef.pas' {FrmEditarNotaReferencia},
  uFrmLogin in 'uFrmLogin.pas' {frmLogin},
  wcrypt2 in 'wcrypt2.pas',
  uFrmCadItemNota in 'uFrmCadItemNota.pas' {FrmCadItemNota},
  uFrmLocTransportadora in 'uFrmLocTransportadora.pas' {FrmLocTransportadora},
  uFrmGerenciarNotas in 'uFrmGerenciarNotas.pas' {FrmGerenciarNotas},
  uFrmInutilizarNum in 'uFrmInutilizarNum.pas' {frmInutilizarNum},
  uFrmCartaCorrecao in 'uFrmCartaCorrecao.pas' {FrmCartaCorrecao},
  uFrmConfig in 'uFrmConfig.pas' {FrmConfig},
  uNewEnviarEmail in 'uNewEnviarEmail.pas' {FrmNewEmailSend},
  uEmailSynalist in 'uEmailSynalist.pas',
  uInterfaceEmail in 'uInterfaceEmail.pas',
  uSobreNFe in 'uSobreNFe.pas' {frmSobre},
  ufrmStatus in 'ufrmStatus.pas' {frmStatus},
  uFrmDescontoValor in 'uFrmDescontoValor.pas' {FrmDescontoValor};

{$R *.res}

begin
     Application.Initialize;
     Application.CreateForm(TdmDados, dmDados);
     Application.CreateForm(TdmNFe, dmNFe);
     Application.CreateForm(TFrmMainNFe, FrmMainNFe);
     frmLogin := TfrmLogin.Create(nil);
     if frmLogin.ShowModal = mrOk then
      begin
           FreeAndNil(frmLogin);
           Application.Run;
      end
      else
      begin
           FreeAndNil(dmNFe);
           FreeAndNil(dmDados);
           Application.Terminate;
      End;
end.
