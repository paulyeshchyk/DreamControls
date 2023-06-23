{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDCOOKIEMANAGER_D2006;
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
  IdBaseComponent,
  IdCookie,
  IdGlobal,
  IdURI,
  IdCookieManager;
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

_T2 = function (p0 : TIdCookieRFC2109): Boolean of object;

_T3 = procedure (p0 : String;
p1 : String) of object;

_T4 = _T3;

_T5 = function (p0 : TIdURI;
p1 : Boolean): String of object;

_T6 = _T0;

function __TIdCookieManager__GenerateCookieList__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := TIdCookieManager(__Instance).GenerateCookieList(TIdURI(VarToObject(OleVariant(pargs^[0]))));
end;
2:
begin
result := TIdCookieManager(__Instance).GenerateCookieList(TIdURI(VarToObject(OleVariant(pargs^[1]))),OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTIdCookieManager__CookieCollection(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCookieManager(Instance).CookieCollection);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdCookieManager,'CookieCollection',__DC__GetTIdCookieManager__CookieCollection,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIdCookieManager
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
//RegRegisterMethod(TIdCookieManager,'DoOnCreate',TypeInfo(_T0),NoParams, pointer(48));
RegRegisterMethod(TIdCookieManager,'DoOnCreate',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdCookieManager','DoOnCreate',48));


//RegRegisterMethod(TIdCookieManager,'DoOnDestroy',TypeInfo(_T1),NoParams, pointer(52));
RegRegisterMethod(TIdCookieManager,'DoOnDestroy',TypeInfo(_T1),NoParams,  getVMTProcAddr('TIdCookieManager','DoOnDestroy',52));


//RegRegisterMethod(TIdCookieManager,'DoOnNewCookie',TypeInfo(_T2),[TypeInfo(TIdCookieRFC2109),TypeInfo(Boolean)], pointer(56));
RegRegisterMethod(TIdCookieManager,'DoOnNewCookie',TypeInfo(_T2),[TypeInfo(TIdCookieRFC2109),TypeInfo(Boolean)],  getVMTProcAddr('TIdCookieManager','DoOnNewCookie',56));


RegRegisterMethod(TIdCookieManager,'AddCookie',TypeInfo(_T3),[
TypeInfo(String),
TypeInfo(String)],Addr(TIdCookieManager.AddCookie));

RegRegisterMethod(TIdCookieManager,'AddCookie2',TypeInfo(_T4),[
TypeInfo(String),
TypeInfo(String)],Addr(TIdCookieManager.AddCookie2));

RegisterProc(TIdCookieManager,'GenerateCookieList',mtScriptMethod,TypeInfo(_T5),[
TypeInfo(TIdURI),
TypeInfo(Boolean),TypeInfo(String)],Addr(__TIdCookieManager__GenerateCookieList__Wrapper),cRegister);

RegRegisterMethod(TIdCookieManager,'DestroyCookieList',TypeInfo(_T6),NoParams,Addr(TIdCookieManager.DestroyCookieList));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TOnManagerEvent),[
TypeInfo(TObject),
TypeInfo(TIdCookies)]);

RegisterEvent(TypeInfo(TOnNewCookieEvent),[
TypeInfo(TObject),
TypeInfo(TIdCookieRFC2109),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.