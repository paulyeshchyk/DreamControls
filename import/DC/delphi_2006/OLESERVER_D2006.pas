{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit OLESERVER_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  Messages,
  ActiveX,
  SysUtils,
  Classes,
  ComObj,
  OleServer;
function ConvertTServerDataToVariant(var R : TServerData) : OleVariant;
function ConvertVariantToTServerData(const V : OleVariant) : TServerData;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TServerData__Wrapper = class(TDCRecordWrapper)
private
fR : TServerData;
public
function GetRecordPtr : pointer; override;
published
procedure setVersion(const val : Integer);
function getVersion : Integer;
property Version : Integer read getVersion write setVersion;
procedure setInstanceCount(const val : Integer);
function getInstanceCount : Integer;
property InstanceCount : Integer read getInstanceCount write setInstanceCount;
end;
type
_T0 = procedure  of object;

{_T1 = function : IUnknown of object;}

_T2 = procedure (p0 : TDispID;
var p1 : TVariantArray) of object;

_T3 = _T0;

_T4 = _T0;

_T5 = procedure (p0 : TOleServer) of object;

function __TServerData__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TServerData__Wrapper.setVersion(const val : Integer);
begin
TServerData(GetRecordPtr^).Version := val;
end;
function __TServerData__Wrapper.getVersion : Integer;
begin
result := TServerData(GetRecordPtr^).Version;
end;
procedure __TServerData__Wrapper.setInstanceCount(const val : Integer);
begin
TServerData(GetRecordPtr^).InstanceCount := val;
end;
function __TServerData__Wrapper.getInstanceCount : Integer;
begin
result := TServerData(GetRecordPtr^).InstanceCount;
end;
function _TServerData_ : IDispatch;
begin
  result := __TServerData__Wrapper.Create;
end;

type __TServerData__Wrapper__ = class(__TServerData__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TServerData__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTServerDataToVariant(var R : TServerData) : OleVariant;
var
__rw : __TServerData__Wrapper__;
begin
__rw := __TServerData__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTServerData(const V : OleVariant) : TServerData;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TServerData((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..4] of string = (
'ckRunningOrNew'
,'ckNewInstance'
,'ckRunningInstance'
,'ckRemote'
,'ckAttachToInterface'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ckRunningOrNew));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ckNewInstance));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,ckRunningInstance));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,ckRemote));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,ckAttachToInterface));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TOleServer,
TServerEventDispatch
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
'TServerData'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TServerData_)));
//RegRegisterMethod(TOleServer,'InitServerData',TypeInfo(_T0),NoParams, pointer(48));
RegRegisterMethod(TOleServer,'InitServerData',TypeInfo(_T0),NoParams,  getVMTProcAddr('TOleServer','InitServerData',48));


//RegRegisterMethod(TOleServer,'InvokeEvent',TypeInfo(_T2),[TypeInfo(TDispID),DynArrayInfo(TypeInfo(TVariantArray))], pointer(56));
RegRegisterMethod(TOleServer,'InvokeEvent',TypeInfo(_T2),[TypeInfo(TDispID),DynArrayInfo(TypeInfo(TVariantArray))],  getVMTProcAddr('TOleServer','InvokeEvent',56));


//RegRegisterMethod(TOleServer,'Connect',TypeInfo(_T3),NoParams, pointer(60));
RegRegisterMethod(TOleServer,'Connect',TypeInfo(_T3),NoParams,  getVMTProcAddr('TOleServer','Connect',60));


//RegRegisterMethod(TOleServer,'Disconnect',TypeInfo(_T4),NoParams, pointer(64));
RegRegisterMethod(TOleServer,'Disconnect',TypeInfo(_T4),NoParams,  getVMTProcAddr('TOleServer','Disconnect',64));


RegisterProc(TServerEventDispatch,'Create',mtConstructor,TypeInfo(_T5),[
TypeInfo(TOleServer)],Addr(TServerEventDispatch.Create),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TOleServer,'GetServer',TypeInfo(_T1),[TypeInfo(IUnknown)], pointer(52))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
