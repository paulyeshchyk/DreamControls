{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSOCKETHANDLE_D2006;
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
  IdException,
  IdGlobal,
  IdStack,
  IdStackConsts,
  IdSocketHandle;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TIdStackSocketHandle): Boolean of object;

_T1 = procedure (const p0 : Integer;
const p1 : Integer) of object;

_T2 = procedure  of object;

_T3 = procedure (const p0 : Boolean) of object;

_T4 = function (const p0 : Integer): Integer of object;

{_T5 = procedure (p0 : Integer;
p1 : Integer;
p2 : PChar;
p3 : Integer) of object;}

_T6 = procedure (const p0 : Integer) of object;

_T7 = function (p0 : Integer): Boolean of object;

_T8 = function (var p0;
p1 : Integer;
p2 : Integer): Integer of object;

_T9 = function (var p0;
const p1 : Integer;
const p2 : Integer;
var p3 : string;
var p4 : Integer): Integer of object;

_T10 = _T3;

_T11 = _T8;

_T12 = procedure (const p0 : string;
const p1 : Integer;
var p2 : Integer;
const p3 : Integer) of object;

_T13 = procedure (const p0 : string;
p1 : Integer) of object;

{_T14 = procedure (p0 : Integer;
p1 : Integer;
p2 : PChar;
p3 : Integer) of object;}

_T15 = function (p0 : TIdStackSocketHandle;
p1 : Integer): Boolean of object;

_T16 = _T2;

_T17 = _T2;

_T18 = procedure (p0 : TComponent) of object;

_T19 = function : TIdSocketHandle of object;

_T20 = function (const p0 : TIdStackSocketHandle): TIdSocketHandle of object;

procedure __TIdSocketHandle__AllocateSocket__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
0:
begin
TIdSocketHandle(__Instance).AllocateSocket;
end;
1:
begin
TIdSocketHandle(__Instance).AllocateSocket(OleVariant(pargs^[0]));
end;
2:
begin
TIdSocketHandle(__Instance).AllocateSocket(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdSocketHandle__CloseSocket__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
0:
begin
TIdSocketHandle(__Instance).CloseSocket;
end;
1:
begin
TIdSocketHandle(__Instance).CloseSocket(OleVariant(pargs^[0]));
end;
end
end;

function __TIdSocketHandle__Connect__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
0:
begin
result := TIdSocketHandle(__Instance).Connect;
end;
1:
begin
result := TIdSocketHandle(__Instance).Connect(OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdSocketHandle__Listen__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
0:
begin
TIdSocketHandle(__Instance).Listen;
end;
1:
begin
TIdSocketHandle(__Instance).Listen(OleVariant(pargs^[0]));
end;
end
end;

function __TIdSocketHandle__Readable__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
0:
begin
result := TIdSocketHandle(__Instance).Readable;
end;
1:
begin
result := TIdSocketHandle(__Instance).Readable(OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdSocketHandle__Reset__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
0:
begin
TIdSocketHandle(__Instance).Reset;
end;
1:
begin
TIdSocketHandle(__Instance).Reset(OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTIdSocketHandle__HandleAllocated(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSocketHandle(Instance).HandleAllocated;
end;

function __DC__GetTIdSocketHandle__Handle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSocketHandle(Instance).Handle;
end;

function __DC__GetTIdSocketHandle__PeerIP(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSocketHandle(Instance).PeerIP;
end;

function __DC__GetTIdSocketHandle__PeerPort(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSocketHandle(Instance).PeerPort;
end;

function __DC__GetTIdSocketHandles__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdSocketHandles(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdSocketHandles__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdSocketHandles(Instance).Items[OleVariant(Params^[1])]:=TIdSocketHandle(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdSocketHandles__DefaultPort(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSocketHandles(Instance).DefaultPort;
end;

procedure __DC__SetTIdSocketHandles__DefaultPort(Instance : TObject; Params : PVariantArgList);
begin
TIdSocketHandles(Instance).DefaultPort:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdSocketHandle,'HandleAllocated',__DC__GetTIdSocketHandle__HandleAllocated,nil);
RegisterProperty(TIdSocketHandle,'Handle',__DC__GetTIdSocketHandle__Handle,nil);
RegisterProperty(TIdSocketHandle,'PeerIP',__DC__GetTIdSocketHandle__PeerIP,nil);
RegisterProperty(TIdSocketHandle,'PeerPort',__DC__GetTIdSocketHandle__PeerPort,nil);
RegisterIndexedProperty(TIdSocketHandles,'Items',1,True,__DC__GetTIdSocketHandles__Items,__DC__SetTIdSocketHandles__Items);
RegisterProperty(TIdSocketHandles,'DefaultPort',__DC__GetTIdSocketHandles__DefaultPort,__DC__SetTIdSocketHandles__DefaultPort);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..7] of TClass = (
EIdCanNotBindPortInRange,
EIdCouldNotBindSocket,
EIdInvalidPortRange,
EIdNotAllBytesSent,
EIdPackageSizeTooBig,
EIdSocketHandleError,
TIdSocketHandle,
TIdSocketHandles
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
RegRegisterMethod(TIdSocketHandle,'Accept',TypeInfo(_T0),[
TypeInfo(TIdStackSocketHandle),TypeInfo(Boolean)],Addr(TIdSocketHandle.Accept));

RegisterProc(TIdSocketHandle,'AllocateSocket',mtScriptMethod,TypeInfo(_T1),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(__TIdSocketHandle__AllocateSocket__Wrapper),cRegister);

RegRegisterMethod(TIdSocketHandle,'Bind',TypeInfo(_T2),NoParams,Addr(TIdSocketHandle.Bind));

RegisterProc(TIdSocketHandle,'CloseSocket',mtScriptMethod,TypeInfo(_T3),[
TypeInfo(Boolean)],Addr(__TIdSocketHandle__CloseSocket__Wrapper),cRegister);

RegisterProc(TIdSocketHandle,'Connect',mtScriptMethod,TypeInfo(_T4),[
TypeInfo(Integer),TypeInfo(Integer)],Addr(__TIdSocketHandle__Connect__Wrapper),cRegister);

RegisterProc(TIdSocketHandle,'Listen',mtScriptMethod,TypeInfo(_T6),[
TypeInfo(Integer)],Addr(__TIdSocketHandle__Listen__Wrapper),cRegister);

RegisterProc(TIdSocketHandle,'Readable',mtScriptMethod,TypeInfo(_T7),[
TypeInfo(Integer),TypeInfo(Boolean)],Addr(__TIdSocketHandle__Readable__Wrapper),cRegister);

RegRegisterMethod(TIdSocketHandle,'Recv',TypeInfo(_T8),[
TypeInfoUntyped,
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TIdSocketHandle.Recv));

//RegRegisterMethod(TIdSocketHandle,'RecvFrom',TypeInfo(_T9),[TypeInfoUntyped,TypeInfo(Integer),TypeInfo(Integer),TypeInfo(string),TypeInfo(Integer),TypeInfo(Integer)], pointer(40));
RegRegisterMethod(TIdSocketHandle,'RecvFrom',TypeInfo(_T9),[TypeInfoUntyped,TypeInfo(Integer),TypeInfo(Integer),TypeInfo(string),TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TIdSocketHandle','RecvFrom',40));


RegisterProc(TIdSocketHandle,'Reset',mtScriptMethod,TypeInfo(_T10),[
TypeInfo(Boolean)],Addr(__TIdSocketHandle__Reset__Wrapper),cRegister);

RegRegisterMethod(TIdSocketHandle,'Send',TypeInfo(_T11),[
TypeInfoUntyped,
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TIdSocketHandle.Send));

RegRegisterMethod(TIdSocketHandle,'SendTo',TypeInfo(_T12),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TIdSocketHandle.SendTo));

RegRegisterMethod(TIdSocketHandle,'SetPeer',TypeInfo(_T13),[
TypeInfo(string),
TypeInfo(Integer)],Addr(TIdSocketHandle.SetPeer));

RegRegisterMethod(TIdSocketHandle,'Select',TypeInfo(_T15),[
TypeInfo(TIdStackSocketHandle),
TypeInfo(Integer),TypeInfo(Boolean)],Addr(TIdSocketHandle.Select));

RegRegisterMethod(TIdSocketHandle,'UpdateBindingLocal',TypeInfo(_T16),NoParams,Addr(TIdSocketHandle.UpdateBindingLocal));

RegRegisterMethod(TIdSocketHandle,'UpdateBindingPeer',TypeInfo(_T17),NoParams,Addr(TIdSocketHandle.UpdateBindingPeer));

RegisterProc(TIdSocketHandles,'Create',mtConstructor,TypeInfo(_T18),[
TypeInfo(TComponent)],Addr(TIdSocketHandles.Create),cRegister);

RegRegisterMethod(TIdSocketHandles,'Add',TypeInfo(_T19),[TypeInfo(TIdSocketHandle)],Addr(TIdSocketHandles.Add));

RegRegisterMethod(TIdSocketHandles,'BindingByHandle',TypeInfo(_T20),[
TypeInfo(TIdStackSocketHandle),TypeInfo(TIdSocketHandle)],Addr(TIdSocketHandles.BindingByHandle));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegRegisterMethod(TIdSocketHandle,'GetSockOpt',TypeInfo(_T5),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfoPChar,
TypeInfo(Integer)],Addr(TIdSocketHandle.GetSockOpt))}

{RegRegisterMethod(TIdSocketHandle,'SetSockOpt',TypeInfo(_T14),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfoPChar,
TypeInfo(Integer)],Addr(TIdSocketHandle.SetSockOpt))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
