{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SITEWIZ_D2006;
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
  Windows,
  SysUtils,
  Classes,
  Dialogs,
  Forms,
  ToolsAPI,
  WebSess,
  WebDisp,
  WebAdapt,
  WProdReg,
  HTTPApp,
  WebFact,
  ProdTemplateReg,
  NwWebPageMod,
  NwWebDataMod,
  NwPageFrame,
  Contnrs,
  WebUsers,
  InetSource,
  InetWiz,
  SiteWiz;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : string of object;

_T1 = _T0;

_T2 = procedure  of object;

_T3 = _T0;

_T4 = _T0;

_T5 = function : TDateTime of object;

_T6 = procedure (const p0 : string;
const p1 : string;
const p2 : string;
p3 : TWebModuleCreateMode;
p4 : TWebModuleCacheMode;
p5 : TSiteSourceIndex;
const p6 : string) of object;

_T7 = procedure (const p0 : string;
const p1 : string;
const p2 : string;
const p3 : string;
p4 : TWebModuleCreateMode;
p5 : TWebModuleCacheMode;
p6 : TSiteSourceIndex;
const p7 : string;
const p8 : string) of object;

_T8 = _T0;

_T9 = _T0;

_T10 = _T5;

_T11 = procedure (const p0 : string;
const p1 : string;
const p2 : string;
p3 : Integer;
p4 : Integer) of object;

_T12 = procedure (p0 : TFormComponentsList) of object;

_T13 = _T0;

_T14 = function : Boolean of object;

_T15 = _T0;

{_T16 = function : IOTAModule of object;}

_T17 = _T14;

_T18 = _T0;

_T19 = _T0;

_T20 = _T0;

_T21 = _T0;

_T22 = _T14;

_T23 = _T14;

_T24 = _T14;

{_T25 = function (const p0 : string;
const p1 : string): IOTAFile of object;}

{_T26 = function (const p0 : string;
const p1 : string): IOTAFile of object;}

{_T27 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T28 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T29 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T30 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T31 = procedure (const p0 : IOTAFormEditor) of object;}

_T32 = _T0;

_T33 = _T0;

_T34 = _T5;

_T35 = _T0;

_T36 = _T0;

_T37 = _T5;

_T38 = procedure (p0 : TModulePageProducerInfo;
const p1 : string;
const p2 : string;
const p3 : string;
p4 : TWebModuleCreateMode;
p5 : TWebModuleCacheMode;
p6 : TWebPageAccess;
p7 : TSiteSourceIndex;
const p8 : string;
const p9 : string) of object;

_T39 = function : Integer of object;

{_T40 = function (p0 : Integer;
const p1 : string;
const p2 : string;
const p3 : string): IOTAFile of object;}

_T41 = function (p0 : Integer): string of object;

_T42 = _T41;

{_T43 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T44 = function : IOTAModuleCreator of object;}

_T45 = procedure (const p0 : string) of object;

_T46 = _T0;

_T47 = _T0;

_T48 = _T14;

_T49 = _T0;

{_T50 = function : IOTAModule of object;}

_T51 = _T14;

_T52 = _T0;

_T53 = _T0;

_T54 = _T14;

_T55 = _T2;

{_T56 = function (const p0 : string): IOTAFile of object;}

{_T57 = procedure (const p0 : IOTAProject) of object;}

{_T58 = function (const p0 : string): IOTAFile of object;}

{_T59 = procedure (const p0 : IOTAProject) of object;}

_T60 = _T2;

_T61 = _T39;

_T62 = _T39;

_T63 = procedure (const p0 : string;
const p1 : string;
p2 : TFormComponentsList) of object;

_T64 = procedure (const p0 : string;
const p1 : string) of object;

_T65 = _T45;

_T66 = procedure (p0 : TNewPageFrame;
const p1 : string) of object;

_T67 = _T14;

_T68 = _T14;

_T69 = _T2;

_T70 = _T2;

_T71 = _T45;

_T72 = procedure (p0 : string;
const p1 : string) of object;

_T73 = _T0;

_T74 = _T5;

_T75 = _T2;

_T76 = procedure (p0 : TWebModuleCacheMode;
const p1 : string) of object;

_T77 = procedure (p0 : TModulePageProducerInfo;
const p1 : string;
const p2 : string;
p3 : TWebModuleCacheMode;
p4 : TWebPageAccess;
const p5 : string) of object;

_T78 = _T0;

_T79 = _T0;

_T80 = _T0;

_T81 = function : TWizardState of object;

_T82 = _T2;

_T83 = _T0;

_T84 = _T0;

_T85 = _T0;

_T86 = function : Cardinal of object;

_T87 = _T0;

{_T88 = function : IOTAGalleryCategory of object;}

_T89 = _T0;

_T90 = procedure (p0 : TWebModuleCreateMode;
p1 : TWebModuleCacheMode;
p2 : TSiteSourceIndex;
const p3 : string) of object;

_T91 = _T45;

_T92 = _T45;

_T93 = _T0;

_T94 = _T14;

_T95 = _T0;

{_T96 = function : IOTAModule of object;}

_T97 = _T14;

_T98 = _T0;

_T99 = _T0;

_T100 = _T0;

_T101 = _T0;

_T102 = _T14;

_T103 = _T14;

_T104 = _T14;

{_T105 = function (const p0 : string;
const p1 : string): IOTAFile of object;}

{_T106 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T107 = function (const p0 : string;
const p1 : string;
const p2 : string): IOTAFile of object;}

{_T108 = procedure (const p0 : IOTAFormEditor) of object;}

_T109 = procedure (const p0 : string;
const p1 : string;
const p2 : string;
const p3 : string) of object;

_T110 = _T109;

_T111 = _T2;

_T112 = procedure (p0 : TModulePageProducerInfo;
const p1 : string;
const p2 : string;
p3 : TWebModuleCreateMode;
p4 : TWebModuleCacheMode;
p5 : TWebPageAccess;
p6 : TSiteSourceIndex;
const p7 : string) of object;

_T113 = _T0;

_T114 = procedure (const p0 : string;
const p1 : string;
const p2 : string;
const p3 : string;
p4 : TWebModuleCreateMode;
p5 : TWebModuleCacheMode;
p6 : TWebPageAccess;
p7 : TSiteSourceIndex;
const p8 : string;
const p9 : string) of object;

_T115 = _T45;

_T116 = _T76;

_T117 = _T77;

function __DC__GetTBaseWebProjectCreator__CreatorType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).CreatorType;
end;

function __DC__GetTBaseWebProjectCreator__Existing(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).Existing;
end;

function __DC__GetTBaseWebProjectCreator__FileSystem(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).FileSystem;
end;

function __DC__GetTBaseWebProjectCreator__Unnamed(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).Unnamed;
end;

function __DC__GetTBaseWebProjectCreator__FileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).FileName;
end;

function __DC__GetTBaseWebProjectCreator__OptionFileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).OptionFileName;
end;

function __DC__GetTBaseWebProjectCreator__ShowSource(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseWebProjectCreator(Instance).ShowSource;
end;

function __DC__GetTFormComponentsList__PropertyItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TFormComponentsList(Instance).PropertyItems[OleVariant(Params^[0])]);
end;

function __DC__GetTFormComponentsList__ObjectItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TFormComponentsList(Instance).ObjectItems[OleVariant(Params^[0])]);
end;

function __DC__GetTNewPageHelper__Template(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TNewPageHelper(Instance).Template;
end;

function __DC__GetTNewPageHelper__Frame(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TNewPageHelper(Instance).Frame);
end;

procedure __RegisterProps;
begin
RegisterProperty(TBaseWebProjectCreator,'CreatorType',__DC__GetTBaseWebProjectCreator__CreatorType,nil);
RegisterProperty(TBaseWebProjectCreator,'Existing',__DC__GetTBaseWebProjectCreator__Existing,nil);
RegisterProperty(TBaseWebProjectCreator,'FileSystem',__DC__GetTBaseWebProjectCreator__FileSystem,nil);
RegisterProperty(TBaseWebProjectCreator,'Unnamed',__DC__GetTBaseWebProjectCreator__Unnamed,nil);
RegisterProperty(TBaseWebProjectCreator,'FileName',__DC__GetTBaseWebProjectCreator__FileName,nil);
RegisterProperty(TBaseWebProjectCreator,'OptionFileName',__DC__GetTBaseWebProjectCreator__OptionFileName,nil);
RegisterProperty(TBaseWebProjectCreator,'ShowSource',__DC__GetTBaseWebProjectCreator__ShowSource,nil);
RegisterIndexedProperty(TFormComponentsList,'PropertyItems',1,False,__DC__GetTFormComponentsList__PropertyItems,nil);
RegisterIndexedProperty(TFormComponentsList,'ObjectItems',1,False,__DC__GetTFormComponentsList__ObjectItems,nil);
RegisterProperty(TNewPageHelper,'Template',__DC__GetTNewPageHelper__Template,nil);
RegisterProperty(TNewPageHelper,'Frame',__DC__GetTNewPageHelper__Frame,nil);
end;

const __ConstNames0 : array[0..32] of string = (
'sAppServicesProperty'
,'sPageDispatcherProperty'
,'sAdapterDispatcherProperty'
,'sDispatchActionsProperty'
,'sSessionsProperty'
,'sLocateFileServiceProperty'
,'sApplicationAdapterProperty'
,'sEndUserAdapterProperty'
,'sScriptEngineProperty'
,'sPageProducerProperty'
,'sUserListProperty'
,'wsApplicationAdapter'
,'wsEndUserAdapter'
,'wsPageDispatcher'
,'wsAdapterDispatcher'
,'wsDispatchActions'
,'wsLocateFileService'
,'wsSessions'
,'wsUserList'
,'DefaultSelectedServices'
,'sHTMLComment'
,'sCHTMLComment'
,'stWebModuleSource'
,'stWebModuleIntf'
,'stWebAppPageModuleFactory'
,'stWebAppDataModuleFactory'
,'stWebPageModuleFactory'
,'stWebDataModuleFactory'
,'prodtEndUser'
,'prodtPageLinks'
,'prodtHTMLStandard'
,'prodtXSLStandard'
,'prodtXSLDataPacket'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sAppServicesProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sPageDispatcherProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sAdapterDispatcherProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sDispatchActionsProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sSessionsProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,sLocateFileServiceProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,sApplicationAdapterProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,sEndUserAdapterProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,sScriptEngineProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,sPageProducerProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,sUserListProperty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,wsApplicationAdapter));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,wsEndUserAdapter));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,wsPageDispatcher));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,wsAdapterDispatcher));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,wsDispatchActions));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,wsLocateFileService));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,wsSessions));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,wsUserList));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,VarFromSet(DefaultSelectedServices, sizeof(DefaultSelectedServices))));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,sHTMLComment));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,sCHTMLComment));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,stWebModuleSource));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,stWebModuleIntf));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,stWebAppPageModuleFactory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,stWebAppDataModuleFactory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,stWebPageModuleFactory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,stWebDataModuleFactory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,prodtEndUser));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,prodtPageLinks));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,prodtHTMLStandard));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,prodtXSLStandard));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,prodtXSLDataPacket));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..33] of TClass = (
EWebWizardException,
TBaseHTMLFile,
TBaseWebDataModuleCreator,
TBaseWebDataModuleFile,
TBaseWebFormFile,
TBaseWebModuleCreator,
TBaseWebModuleFile,
TBaseWebModuleIntfFile,
TBaseWebPageModuleCreator,
TBaseWebPageModuleFile,
TBaseWebProjectCreator,
TComponentObjectItem,
TComponentPropertyItem,
TFormComponentsList,
THTMLFile,
TNewPageHelper,
TPersonalityNotifierObject,
TProjectFile,
TStandardProducerTemplates,
TWebAppDataModuleCreator,
TWebAppPageModuleCreator,
TWebAppWizard,
TWebDataModuleCreator,
TWebDataModuleFile,
TWebDataModuleWizard,
TWebModuleCOMFormCreator,
TWebModuleCOMFormFile,
TWebModuleCOMFormIntfFile,
TWebModuleWizard,
TWebPageModuleCreator,
TWebPageModuleFile,
TWebPageModuleWizard,
TWebProjectWDataModuleCreator,
TWebProjectWPageModuleCreator
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
const MethodNames : array[0..2] of string = (
'GetHTMLSampleImage'
,'GetHTMLFileExt'
,'Register'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[TypeInfo(string)],Addr(GetHTMLSampleImage),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[TypeInfo(string)],Addr(GetHTMLFileExt),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),NoParams,Addr(Register),cRegister);

RegRegisterMethod(TBaseHTMLFile,'GetSource',TypeInfo(_T3),[TypeInfo(string)],Addr(TBaseHTMLFile.GetSource));

//RegRegisterMethod(TBaseHTMLFile,'ImplGetSource',TypeInfo(_T4),[TypeInfo(string)], pointer(0));
RegRegisterMethod(TBaseHTMLFile,'ImplGetSource',TypeInfo(_T4),[TypeInfo(string)],  getVMTProcAddr('TBaseHTMLFile','ImplGetSource',0));


RegRegisterMethod(TBaseHTMLFile,'GetAge',TypeInfo(_T5),[TypeInfo(TDateTime)],Addr(TBaseHTMLFile.GetAge));

RegisterProc(TBaseWebDataModuleCreator,'CreateModule',mtConstructor,TypeInfo(_T6),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCreateMode),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TSiteSourceIndex),
TypeInfo(string)],Addr(TBaseWebDataModuleCreator.CreateModule),cRegister);

RegisterProc(TBaseWebDataModuleFile,'CreateModule',mtConstructor,TypeInfo(_T7),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCreateMode),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TSiteSourceIndex),
TypeInfo(string),
TypeInfo(string)],Addr(TBaseWebDataModuleFile.CreateModule),cRegister);

RegRegisterMethod(TBaseWebFormFile,'GetSource',TypeInfo(_T8),[TypeInfo(string)],Addr(TBaseWebFormFile.GetSource));

//RegRegisterMethod(TBaseWebFormFile,'ImplGetSource',TypeInfo(_T9),[TypeInfo(string)], pointer(0));
RegRegisterMethod(TBaseWebFormFile,'ImplGetSource',TypeInfo(_T9),[TypeInfo(string)],  getVMTProcAddr('TBaseWebFormFile','ImplGetSource',0));


RegRegisterMethod(TBaseWebFormFile,'GetAge',TypeInfo(_T10),[TypeInfo(TDateTime)],Addr(TBaseWebFormFile.GetAge));

RegisterProc(TBaseWebFormFile,'Create',mtConstructor,TypeInfo(_T11),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TBaseWebFormFile.Create),cRegister);

//RegRegisterMethod(TBaseWebModuleCreator,'PopulateComponentsList',TypeInfo(_T12),[TypeInfo(TFormComponentsList)], pointer(0));
RegRegisterMethod(TBaseWebModuleCreator,'PopulateComponentsList',TypeInfo(_T12),[TypeInfo(TFormComponentsList)],  getVMTProcAddr('TBaseWebModuleCreator','PopulateComponentsList',0));


RegRegisterMethod(TBaseWebModuleCreator,'GetCreatorType',TypeInfo(_T13),[TypeInfo(string)],Addr(TBaseWebModuleCreator.GetCreatorType));

RegRegisterMethod(TBaseWebModuleCreator,'GetExisting',TypeInfo(_T14),[TypeInfo(Boolean)],Addr(TBaseWebModuleCreator.GetExisting));

RegRegisterMethod(TBaseWebModuleCreator,'GetFileSystem',TypeInfo(_T15),[TypeInfo(string)],Addr(TBaseWebModuleCreator.GetFileSystem));

RegRegisterMethod(TBaseWebModuleCreator,'GetUnnamed',TypeInfo(_T17),[TypeInfo(Boolean)],Addr(TBaseWebModuleCreator.GetUnnamed));

RegRegisterMethod(TBaseWebModuleCreator,'GetAncestorName',TypeInfo(_T18),[TypeInfo(string)],Addr(TBaseWebModuleCreator.GetAncestorName));

RegRegisterMethod(TBaseWebModuleCreator,'GetImplFileName',TypeInfo(_T19),[TypeInfo(string)],Addr(TBaseWebModuleCreator.GetImplFileName));

RegRegisterMethod(TBaseWebModuleCreator,'GetIntfFileName',TypeInfo(_T20),[TypeInfo(string)],Addr(TBaseWebModuleCreator.GetIntfFileName));

RegRegisterMethod(TBaseWebModuleCreator,'GetFormName',TypeInfo(_T21),[TypeInfo(string)],Addr(TBaseWebModuleCreator.GetFormName));

RegRegisterMethod(TBaseWebModuleCreator,'GetMainForm',TypeInfo(_T22),[TypeInfo(Boolean)],Addr(TBaseWebModuleCreator.GetMainForm));

RegRegisterMethod(TBaseWebModuleCreator,'GetShowForm',TypeInfo(_T23),[TypeInfo(Boolean)],Addr(TBaseWebModuleCreator.GetShowForm));

RegRegisterMethod(TBaseWebModuleCreator,'GetShowSource',TypeInfo(_T24),[TypeInfo(Boolean)],Addr(TBaseWebModuleCreator.GetShowSource));

RegRegisterMethod(TBaseWebModuleFile,'GetSource',TypeInfo(_T32),[TypeInfo(string)],Addr(TBaseWebModuleFile.GetSource));

//RegRegisterMethod(TBaseWebModuleFile,'ImplGetSource',TypeInfo(_T33),[TypeInfo(string)], pointer(0));
RegRegisterMethod(TBaseWebModuleFile,'ImplGetSource',TypeInfo(_T33),[TypeInfo(string)],  getVMTProcAddr('TBaseWebModuleFile','ImplGetSource',0));


RegRegisterMethod(TBaseWebModuleFile,'GetAge',TypeInfo(_T34),[TypeInfo(TDateTime)],Addr(TBaseWebModuleFile.GetAge));

RegRegisterMethod(TBaseWebModuleIntfFile,'GetSource',TypeInfo(_T35),[TypeInfo(string)],Addr(TBaseWebModuleIntfFile.GetSource));

//RegRegisterMethod(TBaseWebModuleIntfFile,'ImplGetIntfSource',TypeInfo(_T36),[TypeInfo(string)], pointer(0));
RegRegisterMethod(TBaseWebModuleIntfFile,'ImplGetIntfSource',TypeInfo(_T36),[TypeInfo(string)],  getVMTProcAddr('TBaseWebModuleIntfFile','ImplGetIntfSource',0));


RegRegisterMethod(TBaseWebModuleIntfFile,'GetAge',TypeInfo(_T37),[TypeInfo(TDateTime)],Addr(TBaseWebModuleIntfFile.GetAge));

RegisterProc(TBaseWebPageModuleCreator,'CreateModule',mtConstructor,TypeInfo(_T38),[
TypeInfo(TModulePageProducerInfo),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCreateMode),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TWebPageAccess),
TypeInfo(TSiteSourceIndex),
TypeInfo(string),
TypeInfo(string)],Addr(TBaseWebPageModuleCreator.CreateModule),cRegister);

RegRegisterMethod(TBaseWebPageModuleCreator,'GetAdditionalFilesCount',TypeInfo(_T39),[TypeInfo(Integer)],Addr(TBaseWebPageModuleCreator.GetAdditionalFilesCount));

RegRegisterMethod(TBaseWebPageModuleCreator,'GetAdditionalFileName',TypeInfo(_T41),[
TypeInfo(Integer),TypeInfo(string)],Addr(TBaseWebPageModuleCreator.GetAdditionalFileName));

RegRegisterMethod(TBaseWebPageModuleCreator,'GetAdditionalFileExt',TypeInfo(_T42),[
TypeInfo(Integer),TypeInfo(string)],Addr(TBaseWebPageModuleCreator.GetAdditionalFileExt));

RegisterProc(TBaseWebProjectCreator,'Create',mtConstructor,TypeInfo(_T45),[
TypeInfo(string)],Addr(TBaseWebProjectCreator.Create),cRegister);

RegRegisterMethod(TBaseWebProjectCreator,'GetProjectPersonality',TypeInfo(_T46),[TypeInfo(string)],Addr(TBaseWebProjectCreator.GetProjectPersonality));

RegRegisterMethod(TBaseWebProjectCreator,'GetCreatorType',TypeInfo(_T47),[TypeInfo(string)],Addr(TBaseWebProjectCreator.GetCreatorType));

RegRegisterMethod(TBaseWebProjectCreator,'GetExisting',TypeInfo(_T48),[TypeInfo(Boolean)],Addr(TBaseWebProjectCreator.GetExisting));

RegRegisterMethod(TBaseWebProjectCreator,'GetFileSystem',TypeInfo(_T49),[TypeInfo(string)],Addr(TBaseWebProjectCreator.GetFileSystem));

RegRegisterMethod(TBaseWebProjectCreator,'GetUnnamed',TypeInfo(_T51),[TypeInfo(Boolean)],Addr(TBaseWebProjectCreator.GetUnnamed));

RegRegisterMethod(TBaseWebProjectCreator,'GetFileName',TypeInfo(_T52),[TypeInfo(string)],Addr(TBaseWebProjectCreator.GetFileName));

RegRegisterMethod(TBaseWebProjectCreator,'GetOptionFileName',TypeInfo(_T53),[TypeInfo(string)],Addr(TBaseWebProjectCreator.GetOptionFileName));

RegRegisterMethod(TBaseWebProjectCreator,'GetShowSource',TypeInfo(_T54),[TypeInfo(Boolean)],Addr(TBaseWebProjectCreator.GetShowSource));

RegRegisterMethod(TBaseWebProjectCreator,'NewDefaultModule',TypeInfo(_T55),NoParams,Addr(TBaseWebProjectCreator.NewDefaultModule));

RegisterProc(TFormComponentsList,'Create',mtConstructor,TypeInfo(_T60),NoParams,Addr(TFormComponentsList.Create),cRegister);

RegRegisterMethod(TFormComponentsList,'PropertyCount',TypeInfo(_T61),[TypeInfo(Integer)],Addr(TFormComponentsList.PropertyCount));

RegRegisterMethod(TFormComponentsList,'ObjectCount',TypeInfo(_T62),[TypeInfo(Integer)],Addr(TFormComponentsList.ObjectCount));

RegRegisterMethod(TFormComponentsList,'AddObject',TypeInfo(_T63),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(TFormComponentsList)],Addr(TFormComponentsList.AddObject));

RegRegisterMethod(TFormComponentsList,'AddProperty',TypeInfo(_T64),[
TypeInfo(string),
TypeInfo(string)],Addr(TFormComponentsList.AddProperty));

RegisterProc(THTMLFile,'CreateModule',mtConstructor,TypeInfo(_T65),[
TypeInfo(string)],Addr(THTMLFile.CreateModule),cRegister);

RegisterProc(TNewPageHelper,'Create',mtConstructor,TypeInfo(_T66),[
TypeInfo(TNewPageFrame),
TypeInfo(string)],Addr(TNewPageHelper.Create),cRegister);

RegRegisterMethod(TNewPageHelper,'HaveTemplate',TypeInfo(_T67),[TypeInfo(Boolean)],Addr(TNewPageHelper.HaveTemplate));

RegRegisterMethod(TNewPageHelper,'GetTemplate',TypeInfo(_T68),[TypeInfo(Boolean)],Addr(TNewPageHelper.GetTemplate));

RegRegisterMethod(TNewPageHelper,'SaveOptions',TypeInfo(_T69),NoParams,Addr(TNewPageHelper.SaveOptions));

RegRegisterMethod(TNewPageHelper,'RestoreOptions',TypeInfo(_T70),NoParams,Addr(TNewPageHelper.RestoreOptions));

RegisterProc(TPersonalityNotifierObject,'Create',mtConstructor,TypeInfo(_T71),[
TypeInfo(string)],Addr(TPersonalityNotifierObject.Create),cRegister);

RegisterProc(TProjectFile,'CreateNamedProject',mtConstructor,TypeInfo(_T72),[
TypeInfo(string),
TypeInfo(string)],Addr(TProjectFile.CreateNamedProject),cRegister);

RegRegisterMethod(TProjectFile,'GetSource',TypeInfo(_T73),[TypeInfo(string)],Addr(TProjectFile.GetSource));

RegRegisterMethod(TProjectFile,'GetAge',TypeInfo(_T74),[TypeInfo(TDateTime)],Addr(TProjectFile.GetAge));

RegisterProc(TStandardProducerTemplates,'Create',mtConstructor,TypeInfo(_T75),NoParams,Addr(TStandardProducerTemplates.Create),cRegister);

RegisterProc(TWebAppDataModuleCreator,'CreateModule',mtConstructor,TypeInfo(_T76),[
TypeInfo(TWebModuleCacheMode),
TypeInfo(string)],Addr(TWebAppDataModuleCreator.CreateModule),cRegister);

RegisterProc(TWebAppPageModuleCreator,'CreateModule',mtConstructor,TypeInfo(_T77),[
TypeInfo(TModulePageProducerInfo),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TWebPageAccess),
TypeInfo(string)],Addr(TWebAppPageModuleCreator.CreateModule),cRegister);

//RegRegisterMethod(TWebAppPageModuleCreator,'GetModuleClassName',TypeInfo(_T78),[TypeInfo(string)], pointer(20));
RegRegisterMethod(TWebAppPageModuleCreator,'GetModuleClassName',TypeInfo(_T78),[TypeInfo(string)],  getVMTProcAddr('TWebAppPageModuleCreator','GetModuleClassName',20));


RegRegisterMethod(TWebAppWizard,'GetIDString',TypeInfo(_T79),[TypeInfo(string)],Addr(TWebAppWizard.GetIDString));

RegRegisterMethod(TWebAppWizard,'GetName',TypeInfo(_T80),[TypeInfo(string)],Addr(TWebAppWizard.GetName));

RegRegisterMethod(TWebAppWizard,'GetState',TypeInfo(_T81),[TypeInfo(TWizardState)],Addr(TWebAppWizard.GetState));

RegRegisterMethod(TWebAppWizard,'Execute',TypeInfo(_T82),NoParams,Addr(TWebAppWizard.Execute));

RegRegisterMethod(TWebAppWizard,'GetAuthor',TypeInfo(_T83),[TypeInfo(string)],Addr(TWebAppWizard.GetAuthor));

RegRegisterMethod(TWebAppWizard,'GetComment',TypeInfo(_T84),[TypeInfo(string)],Addr(TWebAppWizard.GetComment));

RegRegisterMethod(TWebAppWizard,'GetPage',TypeInfo(_T85),[TypeInfo(string)],Addr(TWebAppWizard.GetPage));

RegRegisterMethod(TWebAppWizard,'GetGlyph',TypeInfo(_T86),[TypeInfo(Cardinal)],Addr(TWebAppWizard.GetGlyph));

RegRegisterMethod(TWebAppWizard,'GetDesigner',TypeInfo(_T87),[TypeInfo(string)],Addr(TWebAppWizard.GetDesigner));

RegRegisterMethod(TWebAppWizard,'GetPersonality',TypeInfo(_T89),[TypeInfo(string)],Addr(TWebAppWizard.GetPersonality));

RegisterProc(TWebDataModuleCreator,'CreateModule',mtConstructor,TypeInfo(_T90),[
TypeInfo(TWebModuleCreateMode),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TSiteSourceIndex),
TypeInfo(string)],Addr(TWebDataModuleCreator.CreateModule),cRegister);

RegisterProc(TWebDataModuleWizard,'Create',mtConstructor,TypeInfo(_T91),[
TypeInfo(string)],Addr(TWebDataModuleWizard.Create),cRegister);

RegisterProc(TWebModuleCOMFormCreator,'CreateModule',mtConstructor,TypeInfo(_T92),[
TypeInfo(string)],Addr(TWebModuleCOMFormCreator.CreateModule),cRegister);

RegRegisterMethod(TWebModuleCOMFormCreator,'GetCreatorType',TypeInfo(_T93),[TypeInfo(string)],Addr(TWebModuleCOMFormCreator.GetCreatorType));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetExisting',TypeInfo(_T94),[TypeInfo(Boolean)],Addr(TWebModuleCOMFormCreator.GetExisting));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetFileSystem',TypeInfo(_T95),[TypeInfo(string)],Addr(TWebModuleCOMFormCreator.GetFileSystem));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetUnnamed',TypeInfo(_T97),[TypeInfo(Boolean)],Addr(TWebModuleCOMFormCreator.GetUnnamed));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetAncestorName',TypeInfo(_T98),[TypeInfo(string)],Addr(TWebModuleCOMFormCreator.GetAncestorName));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetImplFileName',TypeInfo(_T99),[TypeInfo(string)],Addr(TWebModuleCOMFormCreator.GetImplFileName));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetIntfFileName',TypeInfo(_T100),[TypeInfo(string)],Addr(TWebModuleCOMFormCreator.GetIntfFileName));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetFormName',TypeInfo(_T101),[TypeInfo(string)],Addr(TWebModuleCOMFormCreator.GetFormName));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetMainForm',TypeInfo(_T102),[TypeInfo(Boolean)],Addr(TWebModuleCOMFormCreator.GetMainForm));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetShowForm',TypeInfo(_T103),[TypeInfo(Boolean)],Addr(TWebModuleCOMFormCreator.GetShowForm));

RegRegisterMethod(TWebModuleCOMFormCreator,'GetShowSource',TypeInfo(_T104),[TypeInfo(Boolean)],Addr(TWebModuleCOMFormCreator.GetShowSource));

RegisterProc(TWebModuleCOMFormFile,'CreateModule',mtConstructor,TypeInfo(_T109),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string)],Addr(TWebModuleCOMFormFile.CreateModule),cRegister);

RegisterProc(TWebModuleCOMFormIntfFile,'CreateModule',mtConstructor,TypeInfo(_T110),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string)],Addr(TWebModuleCOMFormIntfFile.CreateModule),cRegister);

//RegRegisterMethod(TWebModuleWizard,'ImplExecute',TypeInfo(_T111),NoParams, pointer(0));
RegRegisterMethod(TWebModuleWizard,'ImplExecute',TypeInfo(_T111),NoParams,  getVMTProcAddr('TWebModuleWizard','ImplExecute',0));


RegisterProc(TWebPageModuleCreator,'CreateModule',mtConstructor,TypeInfo(_T112),[
TypeInfo(TModulePageProducerInfo),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCreateMode),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TWebPageAccess),
TypeInfo(TSiteSourceIndex),
TypeInfo(string)],Addr(TWebPageModuleCreator.CreateModule),cRegister);

//RegRegisterMethod(TWebPageModuleCreator,'GetModuleClassName',TypeInfo(_T113),[TypeInfo(string)], pointer(20));
RegRegisterMethod(TWebPageModuleCreator,'GetModuleClassName',TypeInfo(_T113),[TypeInfo(string)],  getVMTProcAddr('TWebPageModuleCreator','GetModuleClassName',20));


RegisterProc(TWebPageModuleFile,'CreateModule',mtConstructor,TypeInfo(_T114),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCreateMode),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TWebPageAccess),
TypeInfo(TSiteSourceIndex),
TypeInfo(string),
TypeInfo(string)],Addr(TWebPageModuleFile.CreateModule),cRegister);

RegisterProc(TWebPageModuleWizard,'Create',mtConstructor,TypeInfo(_T115),[
TypeInfo(string)],Addr(TWebPageModuleWizard.Create),cRegister);

RegisterProc(TWebProjectWDataModuleCreator,'CreateProject',mtConstructor,TypeInfo(_T116),[
TypeInfo(TWebModuleCacheMode),
TypeInfo(string)],Addr(TWebProjectWDataModuleCreator.CreateProject),cRegister);

RegisterProc(TWebProjectWPageModuleCreator,'CreateProject',mtConstructor,TypeInfo(_T117),[
TypeInfo(TModulePageProducerInfo),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TWebModuleCacheMode),
TypeInfo(TWebPageAccess),
TypeInfo(string)],Addr(TWebProjectWPageModuleCreator.CreateProject),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TBaseWebModuleCreator,'GetOwner',TypeInfo(_T16),[TypeInfo(IOTAModule)],Addr(TBaseWebModuleCreator.GetOwner))}

{RegRegisterMethod(TBaseWebModuleCreator,'NewFormFile',TypeInfo(_T25),[
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TBaseWebModuleCreator.NewFormFile))}

{RegRegisterMethod(TBaseWebModuleCreator,'ImplNewFormFile',TypeInfo(_T26),[
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)], pointer(4))}

{RegRegisterMethod(TBaseWebModuleCreator,'NewImplSource',TypeInfo(_T27),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TBaseWebModuleCreator.NewImplSource))}

{RegRegisterMethod(TBaseWebModuleCreator,'ImplNewImplSource',TypeInfo(_T28),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)], pointer(8))}

{RegRegisterMethod(TBaseWebModuleCreator,'NewIntfSource',TypeInfo(_T29),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TBaseWebModuleCreator.NewIntfSource))}

{RegRegisterMethod(TBaseWebModuleCreator,'ImplNewIntfSource',TypeInfo(_T30),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)], pointer(12))}

{RegRegisterMethod(TBaseWebModuleCreator,'FormCreated',TypeInfo(_T31),[
TypeInfo(IOTAFormEditor)],Addr(TBaseWebModuleCreator.FormCreated))}

{RegRegisterMethod(TBaseWebPageModuleCreator,'NewAdditionalFileSource',TypeInfo(_T40),[
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TBaseWebPageModuleCreator.NewAdditionalFileSource))}

{RegRegisterMethod(TBaseWebPageModuleCreator,'ImplNewHTMLSource',TypeInfo(_T43),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)], pointer(16))}

{RegRegisterMethod(TBaseWebProjectCreator,'GetAppModuleCreator',TypeInfo(_T44),[TypeInfo(IOTAModuleCreator)], pointer(0))}

{RegRegisterMethod(TBaseWebProjectCreator,'GetOwner',TypeInfo(_T50),[TypeInfo(IOTAModule)],Addr(TBaseWebProjectCreator.GetOwner))}

{RegRegisterMethod(TBaseWebProjectCreator,'NewOptionSource',TypeInfo(_T56),[
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TBaseWebProjectCreator.NewOptionSource))}

{RegRegisterMethod(TBaseWebProjectCreator,'NewProjectResource',TypeInfo(_T57),[
TypeInfo(IOTAProject)],Addr(TBaseWebProjectCreator.NewProjectResource))}

{RegRegisterMethod(TBaseWebProjectCreator,'NewProjectSource',TypeInfo(_T58),[
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TBaseWebProjectCreator.NewProjectSource))}

{RegRegisterMethod(TBaseWebProjectCreator,'NewDefaultProjectModule',TypeInfo(_T59),[
TypeInfo(IOTAProject)],Addr(TBaseWebProjectCreator.NewDefaultProjectModule))}

{RegRegisterMethod(TWebAppWizard,'GetGalleryCategory',TypeInfo(_T88),[TypeInfo(IOTAGalleryCategory)],Addr(TWebAppWizard.GetGalleryCategory))}

{RegRegisterMethod(TWebModuleCOMFormCreator,'GetOwner',TypeInfo(_T96),[TypeInfo(IOTAModule)],Addr(TWebModuleCOMFormCreator.GetOwner))}

{RegRegisterMethod(TWebModuleCOMFormCreator,'NewFormFile',TypeInfo(_T105),[
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TWebModuleCOMFormCreator.NewFormFile))}

{RegRegisterMethod(TWebModuleCOMFormCreator,'NewImplSource',TypeInfo(_T106),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TWebModuleCOMFormCreator.NewImplSource))}

{RegRegisterMethod(TWebModuleCOMFormCreator,'NewIntfSource',TypeInfo(_T107),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(IOTAFile)],Addr(TWebModuleCOMFormCreator.NewIntfSource))}

{RegRegisterMethod(TWebModuleCOMFormCreator,'FormCreated',TypeInfo(_T108),[
TypeInfo(IOTAFormEditor)],Addr(TWebModuleCOMFormCreator.FormCreated))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
