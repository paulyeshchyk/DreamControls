{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBEVENTS_D2006;
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
  Windows,
  DB,
  IBHeader,
  IBExternals,
  IB,
  IBDatabase,
  IBIntf,
  IBEvents;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : TISC_DB_HANDLE of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = procedure (p0 : TIBDatabase) of object;

_T4 = procedure  of object;

_T5 = _T4;

_T6 = procedure (const p0 : Boolean) of object;

_T7 = function : Boolean of object;

function __DC__GetTIBEvents__NativeHandle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBEvents(Instance).NativeHandle);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIBEvents,'NativeHandle',__DC__GetTIBEvents__NativeHandle,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIBEvents
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
//RegRegisterMethod(TIBEvents,'GetNativeHandle',TypeInfo(_T0),[TypeInfoPointer], pointer(48));
RegRegisterMethod(TIBEvents,'GetNativeHandle',TypeInfo(_T0),[TypeInfoPointer],  getVMTProcAddr('TIBEvents','GetNativeHandle',48));


//RegRegisterMethod(TIBEvents,'EventChange',TypeInfo(_T1),[TypeInfo(TObject)], pointer(52));
RegRegisterMethod(TIBEvents,'EventChange',TypeInfo(_T1),[TypeInfo(TObject)],  getVMTProcAddr('TIBEvents','EventChange',52));


//RegRegisterMethod(TIBEvents,'ThreadEnded',TypeInfo(_T2),[TypeInfo(TObject)], pointer(56));
RegRegisterMethod(TIBEvents,'ThreadEnded',TypeInfo(_T2),[TypeInfo(TObject)],  getVMTProcAddr('TIBEvents','ThreadEnded',56));


//RegRegisterMethod(TIBEvents,'ValidateDatabase',TypeInfo(_T3),[TypeInfo(TIBDatabase)], pointer(60));
RegRegisterMethod(TIBEvents,'ValidateDatabase',TypeInfo(_T3),[TypeInfo(TIBDatabase)],  getVMTProcAddr('TIBEvents','ValidateDatabase',60));


//RegRegisterMethod(TIBEvents,'RegisterEvents',TypeInfo(_T4),NoParams, pointer(64));
RegRegisterMethod(TIBEvents,'RegisterEvents',TypeInfo(_T4),NoParams,  getVMTProcAddr('TIBEvents','RegisterEvents',64));


//RegRegisterMethod(TIBEvents,'UnRegisterEvents',TypeInfo(_T5),NoParams, pointer(68));
RegRegisterMethod(TIBEvents,'UnRegisterEvents',TypeInfo(_T5),NoParams,  getVMTProcAddr('TIBEvents','UnRegisterEvents',68));


RegRegisterMethod(TIBEvents,'SetAutoRegister',TypeInfo(_T6),[
TypeInfo(Boolean)],Addr(TIBEvents.SetAutoRegister));

RegRegisterMethod(TIBEvents,'GetAutoRegister',TypeInfo(_T7),[TypeInfo(Boolean)],Addr(TIBEvents.GetAutoRegister));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TErrorEvent),[
TypeInfo(TObject),
TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TEventAlert),[
TypeInfo(TObject),
TypeInfo(string),
TypeInfo(Longint),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
