{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDUDPBASE_D2006;
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
  IdComponent,
  IdException,
  IdGlobal,
  IdSocketHandle,
  IdUDPBase;
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

_T2 = function : Boolean of object;

_T3 = function : TIdSocketHandle of object;

_T4 = procedure (const p0 : string;
const p1 : Integer) of object;

_T6 = function (const p0 : Integer): string of object;

_T7 = procedure (p0 : string;
const p1 : Integer;
const p2 : string) of object;

_T8 = procedure (p0 : string;
const p1 : Integer;
var p2 : Integer;
const p3 : Integer) of object;

function __TIdUDPBase__ReceiveString__Wrapper(__Instance : TIdUDPBase;
const p0 : Integer): string;
begin
result := TIdUDPBase(__Instance).ReceiveString(p0);
end;

function __DC__GetTIdUDPBase__Binding(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdUDPBase(Instance).Binding);
end;

function __DC__GetTIdUDPBase__ReceiveTimeout(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdUDPBase(Instance).ReceiveTimeout;
end;

procedure __DC__SetTIdUDPBase__ReceiveTimeout(Instance : TObject; Params : PVariantArgList);
begin
TIdUDPBase(Instance).ReceiveTimeout:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdUDPBase,'Binding',__DC__GetTIdUDPBase__Binding,nil);
RegisterProperty(TIdUDPBase,'ReceiveTimeout',__DC__GetTIdUDPBase__ReceiveTimeout,__DC__SetTIdUDPBase__ReceiveTimeout);
end;

const __ConstNames0 : array[0..0] of string = (
'ID_UDP_BUFFERSIZE'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ID_UDP_BUFFERSIZE));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..2] of TClass = (
EIdUDPException,
EIdUDPReceiveErrorZeroBytes,
TIdUDPBase
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
RegRegisterMethod(TIdUDPBase,'BroadcastEnabledChanged',TypeInfo(_T0),NoParams, pointer(MinVMTOffset - 16));

//RegRegisterMethod(TIdUDPBase,'CloseBinding',TypeInfo(_T1),NoParams, pointer(60));
RegRegisterMethod(TIdUDPBase,'CloseBinding',TypeInfo(_T1),NoParams,  getVMTProcAddr('TIdUDPBase','CloseBinding',60));


//RegRegisterMethod(TIdUDPBase,'GetActive',TypeInfo(_T2),[TypeInfo(Boolean)], pointer(64));
RegRegisterMethod(TIdUDPBase,'GetActive',TypeInfo(_T2),[TypeInfo(Boolean)],  getVMTProcAddr('TIdUDPBase','GetActive',64));


//RegRegisterMethod(TIdUDPBase,'GetBinding',TypeInfo(_T3),[TypeInfo(TIdSocketHandle)], pointer(68));
RegRegisterMethod(TIdUDPBase,'GetBinding',TypeInfo(_T3),[TypeInfo(TIdSocketHandle)],  getVMTProcAddr('TIdUDPBase','GetBinding',68));


RegRegisterMethod(TIdUDPBase,'Broadcast',TypeInfo(_T4),[
TypeInfo(string),
TypeInfo(Integer)],Addr(TIdUDPBase.Broadcast));

RegRegisterMethod(TIdUDPBase,'ReceiveString',TypeInfo(_T6),[
TypeInfo(Integer),TypeInfo(string)],Addr(__TIdUDPBase__ReceiveString__Wrapper));

RegRegisterMethod(TIdUDPBase,'Send',TypeInfo(_T7),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(string)],Addr(TIdUDPBase.Send));

RegRegisterMethod(TIdUDPBase,'SendBuffer',TypeInfo(_T8),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TIdUDPBase.SendBuffer));

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