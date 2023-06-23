{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDHTTPHEADERINFO_D2006;
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
  Classes,
  SysUtils,
  IdAuthentication,
  IdGlobal,
  IdHeaderList,
  IdHTTPHeaderInfo;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = _T0;

_T2 = _T0;

_T3 = _T0;

_T4 = _T0;

_T5 = _T0;

_T6 = procedure (p0 : TIdHeaderList) of object;

function __DC__GetTIdEntityHeaderInfo__HasContentLength(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdEntityHeaderInfo(Instance).HasContentLength;
end;

function __DC__GetTIdEntityHeaderInfo__RawHeaders(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdEntityHeaderInfo(Instance).RawHeaders);
end;

function __DC__GetTIdProxyConnectionInfo__Authentication(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdProxyConnectionInfo(Instance).Authentication);
end;

procedure __DC__SetTIdProxyConnectionInfo__Authentication(Instance : TObject; Params : PVariantArgList);
begin
TIdProxyConnectionInfo(Instance).Authentication:=TIdAuthentication(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdRequestHeaderInfo__Authentication(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdRequestHeaderInfo(Instance).Authentication);
end;

procedure __DC__SetTIdRequestHeaderInfo__Authentication(Instance : TObject; Params : PVariantArgList);
begin
TIdRequestHeaderInfo(Instance).Authentication:=TIdAuthentication(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdEntityHeaderInfo,'HasContentLength',__DC__GetTIdEntityHeaderInfo__HasContentLength,nil);
RegisterProperty(TIdEntityHeaderInfo,'RawHeaders',__DC__GetTIdEntityHeaderInfo__RawHeaders,nil);
RegisterProperty(TIdProxyConnectionInfo,'Authentication',__DC__GetTIdProxyConnectionInfo__Authentication,__DC__SetTIdProxyConnectionInfo__Authentication);
RegisterProperty(TIdRequestHeaderInfo,'Authentication',__DC__GetTIdRequestHeaderInfo__Authentication,__DC__SetTIdRequestHeaderInfo__Authentication);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..3] of TClass = (
TIdEntityHeaderInfo,
TIdProxyConnectionInfo,
TIdRequestHeaderInfo,
TIdResponseHeaderInfo
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
//RegRegisterMethod(TIdEntityHeaderInfo,'ProcessHeaders',TypeInfo(_T0),NoParams, pointer(12));
RegRegisterMethod(TIdEntityHeaderInfo,'ProcessHeaders',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdEntityHeaderInfo','ProcessHeaders',12));


//RegRegisterMethod(TIdEntityHeaderInfo,'SetHeaders',TypeInfo(_T1),NoParams, pointer(16));
RegRegisterMethod(TIdEntityHeaderInfo,'SetHeaders',TypeInfo(_T1),NoParams,  getVMTProcAddr('TIdEntityHeaderInfo','SetHeaders',16));


//RegRegisterMethod(TIdEntityHeaderInfo,'Clear',TypeInfo(_T2),NoParams, pointer(20));
RegRegisterMethod(TIdEntityHeaderInfo,'Clear',TypeInfo(_T2),NoParams,  getVMTProcAddr('TIdEntityHeaderInfo','Clear',20));


RegisterProc(TIdEntityHeaderInfo,'Create',mtConstructor,TypeInfo(_T3),NoParams, pointer(24),cRegister);

RegisterProc(TIdProxyConnectionInfo,'Create',mtConstructor,TypeInfo(_T4),NoParams,Addr(TIdProxyConnectionInfo.Create),cRegister);

RegRegisterMethod(TIdProxyConnectionInfo,'Clear',TypeInfo(_T5),NoParams,Addr(TIdProxyConnectionInfo.Clear));

RegRegisterMethod(TIdProxyConnectionInfo,'SetHeaders',TypeInfo(_T6),[
TypeInfo(TIdHeaderList)],Addr(TIdProxyConnectionInfo.SetHeaders));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
