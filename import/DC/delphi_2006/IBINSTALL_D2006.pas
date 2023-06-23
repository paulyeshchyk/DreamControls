{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBINSTALL_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  TypInfo,
  SysUtils,
  Classes,
  IB,
  IBInstallHeader,
  IBIntf,
  IBXConst,
  IBInstall;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : MSG_NO;
p1 : string) of object;

_T1 = procedure  of object;

_T2 = _T1;

_T3 = function (p0 : TExamplesOption): string of object;

_T4 = _T3;

_T5 = function (p0 : TExamplesOption): longword of object;

_T6 = _T1;

_T7 = _T1;

function __DC__GetEIBInstall__InstallError(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EIBInstall(Instance).InstallError;
end;

function __DC__GetEIBInstall__InstallerError(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EIBInstall(Instance).InstallerError;
end;

function __DC__GetTIBInstall__UnInstallFile(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBInstall(Instance).UnInstallFile;
end;

function __DC__GetTIBInstall__SuggestedDestination(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBInstall(Instance).SuggestedDestination;
end;

function __DC__GetTIBSetup__RebootToComplete(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBSetup(Instance).RebootToComplete;
end;

function __DC__GetTIBSetup__Progress(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBSetup(Instance).Progress;
end;

function __DC__GetTIBSetup__StatusContext(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBSetup(Instance).StatusContext);
end;

procedure __DC__SetTIBSetup__StatusContext(Instance : TObject; Params : PVariantArgList);
begin
TIBSetup(Instance).StatusContext:=VarToPointer(OleVariant(Params^[0]));
end;

function __DC__GetTIBSetup__ErrorContext(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBSetup(Instance).ErrorContext);
end;

procedure __DC__SetTIBSetup__ErrorContext(Instance : TObject; Params : PVariantArgList);
begin
TIBSetup(Instance).ErrorContext:=VarToPointer(OleVariant(Params^[0]));
end;

function __DC__GetTIBSetup__MsgFilePath(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBSetup(Instance).MsgFilePath;
end;

procedure __DC__SetTIBSetup__MsgFilePath(Instance : TObject; Params : PVariantArgList);
begin
TIBSetup(Instance).MsgFilePath:=OleVariant(Params^[0]);
end;

function __DC__GetTIBUnInstall__UnInstallFile(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBUnInstall(Instance).UnInstallFile;
end;

procedure __DC__SetTIBUnInstall__UnInstallFile(Instance : TObject; Params : PVariantArgList);
begin
TIBUnInstall(Instance).UnInstallFile:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(EIBInstall,'InstallError',__DC__GetEIBInstall__InstallError,nil);
RegisterProperty(EIBInstall,'InstallerError',__DC__GetEIBInstall__InstallerError,nil);
RegisterProperty(TIBInstall,'UnInstallFile',__DC__GetTIBInstall__UnInstallFile,nil);
RegisterProperty(TIBInstall,'SuggestedDestination',__DC__GetTIBInstall__SuggestedDestination,nil);
RegisterProperty(TIBSetup,'RebootToComplete',__DC__GetTIBSetup__RebootToComplete,nil);
RegisterProperty(TIBSetup,'Progress',__DC__GetTIBSetup__Progress,nil);
RegisterProperty(TIBSetup,'StatusContext',__DC__GetTIBSetup__StatusContext,__DC__SetTIBSetup__StatusContext);
RegisterProperty(TIBSetup,'ErrorContext',__DC__GetTIBSetup__ErrorContext,__DC__SetTIBSetup__ErrorContext);
RegisterProperty(TIBSetup,'MsgFilePath',__DC__GetTIBSetup__MsgFilePath,__DC__SetTIBSetup__MsgFilePath);
RegisterProperty(TIBUnInstall,'UnInstallFile',__DC__GetTIBUnInstall__UnInstallFile,__DC__SetTIBUnInstall__UnInstallFile);
end;

const __ConstNames0 : array[0..31] of string = (
'ieSuccess'
,'ieDelphiException'
,'ieNoOptionsSet'
,'ieNoDestinationDirectory'
,'ieNosourceDirectory'
,'ieNoUninstallFile'
,'ieOptionNeedsClient'
,'ieOptionNeedsServer'
,'ieInvalidOption'
,'ieInvalidOnErrorResult'
,'ieInvalidOnStatusResult'
,'moServer'
,'moClient'
,'moConServer'
,'moGuiTools'
,'moDocumentation'
,'moDevelopment'
,'exDB'
,'exAPI'
,'cmDBMgmt'
,'cmDBQuery'
,'cmUsrMgmt'
,'cnODBC'
,'cnOLEDB'
,'cnJDBC'
,'erAbort'
,'erContinue'
,'erRetry'
,'srAbort'
,'srContinue'
,'wrAbort'
,'wrContinue'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ieSuccess));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ieDelphiException));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,ieNoOptionsSet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,ieNoDestinationDirectory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,ieNosourceDirectory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,ieNoUninstallFile));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,ieOptionNeedsClient));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,ieOptionNeedsServer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,ieInvalidOption));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,ieInvalidOnErrorResult));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,ieInvalidOnStatusResult));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,moServer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,moClient));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,moConServer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,moGuiTools));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,moDocumentation));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,moDevelopment));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,exDB));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,exAPI));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,cmDBMgmt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,cmDBQuery));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,cmUsrMgmt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,cnODBC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,cnOLEDB));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,cnJDBC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,erAbort));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,erContinue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,erRetry));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,srAbort));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,srContinue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,wrAbort));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,wrContinue));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..6] of TClass = (
EIBInstall,
EIBInstallerError,
EIBInstallError,
TIBInstall,
TIBSetup,
TIBUnInstall,
TInstallOptions
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
procedure _mreg_0;
begin
//RegisterProc(EIBInstall,'Create',mtConstructor,TypeInfo(_T0),[TypeInfo(MSG_NO),TypeInfo(string)], pointer(0),cRegister);
RegisterProc(EIBInstall,'Create',mtConstructor,TypeInfo(_T0),[TypeInfo(MSG_NO),TypeInfo(string)],  getVMTProcAddr('EIBInstall','Create',0),cRegister);


RegRegisterMethod(TIBInstall,'InstallCheck',TypeInfo(_T1),NoParams,Addr(TIBInstall.InstallCheck));

RegRegisterMethod(TIBInstall,'InstallExecute',TypeInfo(_T2),NoParams,Addr(TIBInstall.InstallExecute));

RegRegisterMethod(TIBInstall,'GetOptionDescription',TypeInfo(_T3),[
TypeInfo(TExamplesOption),TypeInfo(string)],Addr(TIBInstall.GetOptionDescription));

RegRegisterMethod(TIBInstall,'GetOptionName',TypeInfo(_T4),[
TypeInfo(TExamplesOption),TypeInfo(string)],Addr(TIBInstall.GetOptionName));

RegRegisterMethod(TIBInstall,'GetOptionSpaceRequired',TypeInfo(_T5),[
TypeInfo(TExamplesOption),TypeInfo(longword)],Addr(TIBInstall.GetOptionSpaceRequired));

RegRegisterMethod(TIBUnInstall,'UnInstallCheck',TypeInfo(_T6),NoParams,Addr(TIBUnInstall.UnInstallCheck));

RegRegisterMethod(TIBUnInstall,'UnInstallExecute',TypeInfo(_T7),NoParams,Addr(TIBUnInstall.UnInstallExecute));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TIBSetupOnError),[
TypeInfo(TObject),
TypeInfo(TIscError),
TypeInfo(string),
TypeInfo(string),TypeInfo(TErrorResult)]);

RegisterEvent(TypeInfo(TIBSetupOnStatus),[
TypeInfo(TObject),
TypeInfo(string),TypeInfo(TStatusResult)]);

RegisterEvent(TypeInfo(TIBSetupOnWarning),[
TypeInfo(TObject),
TypeInfo(TIscError),
TypeInfo(string),TypeInfo(TWarningResult)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
