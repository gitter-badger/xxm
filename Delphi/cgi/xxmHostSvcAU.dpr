program xxmHostSvcAU;

{$R '..\common\xxmData.res' '..\common\xxmData.rc'}

uses
  SvcMgr,
  xxmHostSvcMain in 'xxmHostSvcMain.pas' {xxmHostService: TService},
  xxm in '..\bin\public\xxm.pas',
  xxmCGIHeader in 'xxmCGIHeader.pas',
  xxmHostRun in 'xxmHostRun.pas',
  xxmHostMain in 'xxmHostMain.pas',
  xxmThreadPool in '..\common\xxmThreadPool.pas',
  xxmParams in '..\common\xxmParams.pas',
  xxmParUtils in '..\common\xxmParUtils.pas',
  xxmHeaders in '..\bin\public\xxmHeaders.pas',
  xxmPReg in '..\common\xxmPReg.pas',
  xxmPRegXml in '..\common\xxmPRegXml.pas',
  xxmCommonUtils in '..\common\xxmCommonUtils.pas',
  xxmContext in '..\common\xxmContext.pas',
  MSXML2_TLB in '..\common\MSXML2_TLB.pas',
  xxmAutoUpdate in '..\common\xxmAutoUpdate.pas';

{$R *.RES}

begin
  XxmAutoBuildHandler:=AutoUpdate;
  Application.Initialize;
  Application.CreateForm(TxxmHostService, xxmHostService);
  Application.Run;
end.
