{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit WEBCNTXT_D2006;
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
  SysUtils,
  Classes,
  HTTPApp,
  Contnrs,
  WebCntxt;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : TAbstractWebContext of object;

_T1 = procedure  of object;

_T2 = _T1;

{_T3 = function : IWebEndUser of object;}

_T4 = function : TWebRequest of object;

_T5 = function : TWebResponse of object;

{_T6 = function : IUnknown of object;}

{_T7 = function : IUnknown of object;}

{_T8 = procedure (p0 : IUnknown) of object;}

{_T9 = procedure (p0 : IUnknown) of object;}

_T10 = function : TAbstractWebModuleList of object;

_T11 = function : TAbstractWebSession of object;

_T12 = function : Integer of object;

{_T13 = function (p0 : Integer): IWebPageInfo of object;}

_T14 = function : string of object;

_T15 = procedure (const p0 : string) of object;

_T16 = _T14;

_T17 = _T15;

_T18 = _T1;

_T19 = function (p0 : TWebModuleContext): TComponent of object;

{_T20 = function (p0 : TComponentClass): TComponent of object;}

_T21 = function (const p0 : string): TComponent of object;

_T22 = function (const p0 : string;
p1 : TFindPageOptions;
out p2 : TObject): Boolean of object;

_T23 = function (const p0 : string;
p1 : TFindPageOptions;
out p2 : TAbstractWebPageInfo): Boolean of object;

{_T24 = function (p0 : TComponentClass;
out p1 : TAbstractWebPageInfo): Boolean of object;}

_T25 = _T21;

_T26 = procedure (p0 : TAbstractWebModuleList;
p1 : TWebRequest;
p2 : TWebResponse;
p3 : TAbstractWebSession) of object;

function __DC__GetTAbstractWebContext__Request(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TAbstractWebContext(Instance).Request);
end;

function __DC__GetTAbstractWebContext__Response(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TAbstractWebContext(Instance).Response);
end;

function __DC__GetTAbstractWebContext__Session(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TAbstractWebContext(Instance).Session);
end;

function __DC__GetTAbstractWebContext__WebModules(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TAbstractWebContext(Instance).WebModules);
end;

function __DC__GetTAbstractWebContext__PageCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TAbstractWebContext(Instance).PageCount;
end;

function __DC__GetTAbstractWebContext__DispatchedPageName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TAbstractWebContext(Instance).DispatchedPageName;
end;

procedure __DC__SetTAbstractWebContext__DispatchedPageName(Instance : TObject; Params : PVariantArgList);
begin
TAbstractWebContext(Instance).DispatchedPageName:=OleVariant(Params^[0]);
end;

function __DC__GetTAbstractWebContext__RequestedPageName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TAbstractWebContext(Instance).RequestedPageName;
end;

procedure __DC__SetTAbstractWebContext__RequestedPageName(Instance : TObject; Params : PVariantArgList);
begin
TAbstractWebContext(Instance).RequestedPageName:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TAbstractWebContext,'Request',__DC__GetTAbstractWebContext__Request,nil);
RegisterProperty(TAbstractWebContext,'Response',__DC__GetTAbstractWebContext__Response,nil);
RegisterProperty(TAbstractWebContext,'Session',__DC__GetTAbstractWebContext__Session,nil);
RegisterProperty(TAbstractWebContext,'WebModules',__DC__GetTAbstractWebContext__WebModules,nil);
RegisterProperty(TAbstractWebContext,'PageCount',__DC__GetTAbstractWebContext__PageCount,nil);
RegisterProperty(TAbstractWebContext,'DispatchedPageName',__DC__GetTAbstractWebContext__DispatchedPageName,__DC__SetTAbstractWebContext__DispatchedPageName);
RegisterProperty(TAbstractWebContext,'RequestedPageName',__DC__GetTAbstractWebContext__RequestedPageName,__DC__SetTAbstractWebContext__RequestedPageName);
end;

const __ConstNames0 : array[0..1] of string = (
'fpPublished'
,'fpLoginRequired'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,fpPublished));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,fpLoginRequired));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..3] of TClass = (
TAbstractAdapterRequest,
TAbstractAdapterResponse,
TAbstractWebContext,
TWebContext
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
const MethodNames : array[0..0] of string = (
'WebContext'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[TypeInfo(TAbstractWebContext)],Addr(WebContext),cRegister);

RegisterProc(TAbstractAdapterRequest,'Create',mtConstructor,TypeInfo(_T1),NoParams,Addr(TAbstractAdapterRequest.Create),cRegister);

RegisterProc(TAbstractAdapterResponse,'Create',mtConstructor,TypeInfo(_T2),NoParams,Addr(TAbstractAdapterResponse.Create),cRegister);

//RegRegisterMethod(TAbstractWebContext,'GetWebRequest',TypeInfo(_T4),[TypeInfo(TWebRequest)], pointer(4));
RegRegisterMethod(TAbstractWebContext,'GetWebRequest',TypeInfo(_T4),[TypeInfo(TWebRequest)],  getVMTProcAddr('TAbstractWebContext','GetWebRequest',4));


//RegRegisterMethod(TAbstractWebContext,'GetWebResponse',TypeInfo(_T5),[TypeInfo(TWebResponse)], pointer(8));
RegRegisterMethod(TAbstractWebContext,'GetWebResponse',TypeInfo(_T5),[TypeInfo(TWebResponse)],  getVMTProcAddr('TAbstractWebContext','GetWebResponse',8));


//RegRegisterMethod(TAbstractWebContext,'GetWebModules',TypeInfo(_T10),[TypeInfo(TAbstractWebModuleList)], pointer(28));
RegRegisterMethod(TAbstractWebContext,'GetWebModules',TypeInfo(_T10),[TypeInfo(TAbstractWebModuleList)],  getVMTProcAddr('TAbstractWebContext','GetWebModules',28));


//RegRegisterMethod(TAbstractWebContext,'GetSession',TypeInfo(_T11),[TypeInfo(TAbstractWebSession)], pointer(32));
RegRegisterMethod(TAbstractWebContext,'GetSession',TypeInfo(_T11),[TypeInfo(TAbstractWebSession)],  getVMTProcAddr('TAbstractWebContext','GetSession',32));


//RegRegisterMethod(TAbstractWebContext,'GetPageCount',TypeInfo(_T12),[TypeInfo(Integer)], pointer(36));
RegRegisterMethod(TAbstractWebContext,'GetPageCount',TypeInfo(_T12),[TypeInfo(Integer)],  getVMTProcAddr('TAbstractWebContext','GetPageCount',36));


//RegRegisterMethod(TAbstractWebContext,'GetDispatchedPageName',TypeInfo(_T14),[TypeInfo(string)], pointer(44));
RegRegisterMethod(TAbstractWebContext,'GetDispatchedPageName',TypeInfo(_T14),[TypeInfo(string)],  getVMTProcAddr('TAbstractWebContext','GetDispatchedPageName',44));


//RegRegisterMethod(TAbstractWebContext,'SetDispatchedPageName',TypeInfo(_T15),[TypeInfo(string)], pointer(48));
RegRegisterMethod(TAbstractWebContext,'SetDispatchedPageName',TypeInfo(_T15),[TypeInfo(string)],  getVMTProcAddr('TAbstractWebContext','SetDispatchedPageName',48));


//RegRegisterMethod(TAbstractWebContext,'GetRequestedPageName',TypeInfo(_T16),[TypeInfo(string)], pointer(52));
RegRegisterMethod(TAbstractWebContext,'GetRequestedPageName',TypeInfo(_T16),[TypeInfo(string)],  getVMTProcAddr('TAbstractWebContext','GetRequestedPageName',52));


//RegRegisterMethod(TAbstractWebContext,'SetRequestedPageName',TypeInfo(_T17),[TypeInfo(string)], pointer(56));
RegRegisterMethod(TAbstractWebContext,'SetRequestedPageName',TypeInfo(_T17),[TypeInfo(string)],  getVMTProcAddr('TAbstractWebContext','SetRequestedPageName',56));


RegisterProc(TAbstractWebContext,'Create',mtConstructor,TypeInfo(_T18),NoParams,Addr(TAbstractWebContext.Create),cRegister);

//RegRegisterMethod(TAbstractWebContext,'FindApplicationModule',TypeInfo(_T19),[TypeInfo(TWebModuleContext),TypeInfo(TComponent)], pointer(60));
RegRegisterMethod(TAbstractWebContext,'FindApplicationModule',TypeInfo(_T19),[TypeInfo(TWebModuleContext),TypeInfo(TComponent)],  getVMTProcAddr('TAbstractWebContext','FindApplicationModule',60));


//RegRegisterMethod(TAbstractWebContext,'FindModuleName',TypeInfo(_T21),[TypeInfo(string),TypeInfo(TComponent)], pointer(68));
RegRegisterMethod(TAbstractWebContext,'FindModuleName',TypeInfo(_T21),[TypeInfo(string),TypeInfo(TComponent)],  getVMTProcAddr('TAbstractWebContext','FindModuleName',68));


//RegRegisterMethod(TAbstractWebContext,'FindPage',TypeInfo(_T22),[TypeInfo(string),TypeInfo(TFindPageOptions),TypeInfo(TObject),TypeInfo(Boolean)], pointer(72));
RegRegisterMethod(TAbstractWebContext,'FindPage',TypeInfo(_T22),[TypeInfo(string),TypeInfo(TFindPageOptions),TypeInfo(TObject),TypeInfo(Boolean)],  getVMTProcAddr('TAbstractWebContext','FindPage',72));


//RegRegisterMethod(TAbstractWebContext,'FindPageInfo',TypeInfo(_T23),[TypeInfo(string),TypeInfo(TFindPageOptions),TypeInfo(TAbstractWebPageInfo),TypeInfo(Boolean)], pointer(76));
RegRegisterMethod(TAbstractWebContext,'FindPageInfo',TypeInfo(_T23),[TypeInfo(string),TypeInfo(TFindPageOptions),TypeInfo(TAbstractWebPageInfo),TypeInfo(Boolean)],  getVMTProcAddr('TAbstractWebContext','FindPageInfo',76));


//RegRegisterMethod(TAbstractWebContext,'FindVariableContainer',TypeInfo(_T25),[TypeInfo(string),TypeInfo(TComponent)], pointer(84));
RegRegisterMethod(TAbstractWebContext,'FindVariableContainer',TypeInfo(_T25),[TypeInfo(string),TypeInfo(TComponent)],  getVMTProcAddr('TAbstractWebContext','FindVariableContainer',84));


RegisterProc(TWebContext,'Create',mtConstructor,TypeInfo(_T26),[
TypeInfo(TAbstractWebModuleList),
TypeInfo(TWebRequest),
TypeInfo(TWebResponse),
TypeInfo(TAbstractWebSession)],Addr(TWebContext.Create),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TAbstractWebContext,'GetEndUser',TypeInfo(_T3),[TypeInfo(IWebEndUser)], pointer(0))}

{RegRegisterMethod(TAbstractWebContext,'GetAdapterRequest',TypeInfo(_T6),[TypeInfo(IUnknown)], pointer(12))}

{RegRegisterMethod(TAbstractWebContext,'GetAdapterResponse',TypeInfo(_T7),[TypeInfo(IUnknown)], pointer(16))}

{RegRegisterMethod(TAbstractWebContext,'SetAdapterRequest',TypeInfo(_T8),[
TypeInfo(IUnknown)], pointer(20))}

{RegRegisterMethod(TAbstractWebContext,'SetAdapterResponse',TypeInfo(_T9),[
TypeInfo(IUnknown)], pointer(24))}

{RegRegisterMethod(TAbstractWebContext,'GetPageInfo',TypeInfo(_T13),[
TypeInfo(Integer),TypeInfo(IWebPageInfo)], pointer(40))}

{RegRegisterMethod(TAbstractWebContext,'FindModuleClass',TypeInfo(_T20),[
TypeInfo(TComponentClass),TypeInfo(TComponent)], pointer(64))}

{RegRegisterMethod(TAbstractWebContext,'FindDefaultPageInfo',TypeInfo(_T24),[
TypeInfo(TComponentClass),
TypeInfo(TAbstractWebPageInfo),TypeInfo(Boolean)], pointer(80))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
