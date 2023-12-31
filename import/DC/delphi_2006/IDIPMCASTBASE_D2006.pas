{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDIPMCASTBASE_D2006;
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
  IdStack,
  IdIPMCastBase;
function ConvertTMultiCastToVariant(var R : TMultiCast) : OleVariant;
function ConvertVariantToTMultiCast(const V : OleVariant) : TMultiCast;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TMultiCast__Wrapper = class(TDCRecordWrapper)
private
fR : TMultiCast;
public
function GetRecordPtr : pointer; override;
published
end;
type
_T0 = procedure  of object;

_T1 = function : Boolean of object;

_T2 = function : TIdSocketHandle of object;

_T3 = procedure (const p0 : Boolean) of object;

_T4 = procedure (const p0 : string) of object;

_T5 = procedure (const p0 : Integer) of object;

_T6 = function (p0 : string): Boolean of object;

function __TMultiCast__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
function _TMultiCast_ : IDispatch;
begin
  result := __TMultiCast__Wrapper.Create;
end;

type __TMultiCast__Wrapper__ = class(__TMultiCast__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMultiCast__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMultiCastToVariant(var R : TMultiCast) : OleVariant;
var
__rw : __TMultiCast__Wrapper__;
begin
__rw := __TMultiCast__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMultiCast(const V : OleVariant) : TMultiCast;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMultiCast((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..1] of string = (
'IPMCastLo'
,'IPMCastHi'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,IPMCastLo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,IPMCastHi));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..3] of TClass = (
EIdMCastException,
EIdMCastNoBindings,
EIdMCastNotValidAddress,
TIdIPMCastBase
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
'TMultiCast'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TMultiCast_)));
//RegRegisterMethod(TIdIPMCastBase,'CloseBinding',TypeInfo(_T0),NoParams, pointer(60));
RegRegisterMethod(TIdIPMCastBase,'CloseBinding',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdIPMCastBase','CloseBinding',60));


//RegRegisterMethod(TIdIPMCastBase,'GetActive',TypeInfo(_T1),[TypeInfo(Boolean)], pointer(64));
RegRegisterMethod(TIdIPMCastBase,'GetActive',TypeInfo(_T1),[TypeInfo(Boolean)],  getVMTProcAddr('TIdIPMCastBase','GetActive',64));


//RegRegisterMethod(TIdIPMCastBase,'GetBinding',TypeInfo(_T2),[TypeInfo(TIdSocketHandle)], pointer(68));
RegRegisterMethod(TIdIPMCastBase,'GetBinding',TypeInfo(_T2),[TypeInfo(TIdSocketHandle)],  getVMTProcAddr('TIdIPMCastBase','GetBinding',68));


//RegRegisterMethod(TIdIPMCastBase,'SetActive',TypeInfo(_T3),[TypeInfo(Boolean)], pointer(72));
RegRegisterMethod(TIdIPMCastBase,'SetActive',TypeInfo(_T3),[TypeInfo(Boolean)],  getVMTProcAddr('TIdIPMCastBase','SetActive',72));


//RegRegisterMethod(TIdIPMCastBase,'SetMulticastGroup',TypeInfo(_T4),[TypeInfo(string)], pointer(76));
RegRegisterMethod(TIdIPMCastBase,'SetMulticastGroup',TypeInfo(_T4),[TypeInfo(string)],  getVMTProcAddr('TIdIPMCastBase','SetMulticastGroup',76));


//RegRegisterMethod(TIdIPMCastBase,'SetPort',TypeInfo(_T5),[TypeInfo(Integer)], pointer(80));
RegRegisterMethod(TIdIPMCastBase,'SetPort',TypeInfo(_T5),[TypeInfo(Integer)],  getVMTProcAddr('TIdIPMCastBase','SetPort',80));


RegRegisterMethod(TIdIPMCastBase,'IsValidMulticastGroup',TypeInfo(_T6),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIPMCastBase.IsValidMulticastGroup));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
