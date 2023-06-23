{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IMOUSE_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  Types,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Controls,
  ExtCtrls,
  Graphics,
  Classes,
  Messages,
  Forms,
  Windows,
  IMouse;
function ConvertTPointToVariant(var R : TPoint) : OleVariant;
function ConvertVariantToTPoint(const V : OleVariant) : TPoint;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TPoint__Wrapper = class(TDCRecordWrapper)
private
fR : TPoint;
public
function GetRecordPtr : pointer; override;
published
procedure setX(const val : Longint);
function getX : Longint;
property X : Longint read getX write setX;
procedure setY(const val : Longint);
function getY : Longint;
property Y : Longint read getY write setY;
end;
type __TPanningWindow__ = class(TPanningWindow);
type
_T0 = function (p0 : THandle;
p1 : TControl): Boolean of object;

_T1 = procedure (const p0 : IDispatch;
var p1 : TPanDirections) of object;

_T2 = function : TPanOptions of object;

_T3 = procedure (p0 : TPanDirections) of object;

_T4 = procedure (const p0 : IDispatch) of object;

function __TPoint__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TPoint__Wrapper.setX(const val : Longint);
begin
TPoint(GetRecordPtr^).X := val;
end;
function __TPoint__Wrapper.getX : Longint;
begin
result := TPoint(GetRecordPtr^).X;
end;
procedure __TPoint__Wrapper.setY(const val : Longint);
begin
TPoint(GetRecordPtr^).Y := val;
end;
function __TPoint__Wrapper.getY : Longint;
begin
result := TPoint(GetRecordPtr^).Y;
end;
procedure __TPanningWindow__DoUpdate__Wrapper(__Instance : TPanningWindow;
const p0 : IDispatch;
var p1 : TPanDirections);
var
__p0 : ^TPoint;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
__TPanningWindow__(__Instance).DoUpdate(__p0^,p1);
end;

procedure __TPanningWindow__UpdateScroll__Wrapper(__Instance : TPanningWindow;
const p0 : IDispatch);
var
__p0 : ^TPoint;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
__TPanningWindow__(__Instance).UpdateScroll(__p0^);
end;


type __TPoint__Wrapper__ = class(__TPoint__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TPoint__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTPointToVariant(var R : TPoint) : OleVariant;
var
__rw : __TPoint__Wrapper__;
begin
__rw := __TPoint__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTPoint(const V : OleVariant) : TPoint;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TPoint((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTPanningWindow__IsPanning(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TPanningWindow(Instance).IsPanning;
end;

function __DC__GetTPanningWindow__PanControl(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TPanningWindow(Instance).PanControl);
end;

function __DC__GetTPanningWindow__PanInterval(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TPanningWindow(Instance).PanInterval;
end;

procedure __DC__SetTPanningWindow__PanInterval(Instance : TObject; Params : PVariantArgList);
begin
TPanningWindow(Instance).PanInterval:=OleVariant(Params^[0]);
end;

function __DC__GetTPanningWindow__PanOptions(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
  tmp : TPanOptions;
begin
tmp := TPanningWindow(Instance).PanOptions;
result := VarFromSet(tmp, sizeof(tmp));
end;

procedure __RegisterProps;
begin
RegisterProperty(TPanningWindow,'IsPanning',__DC__GetTPanningWindow__IsPanning,nil);
RegisterProperty(TPanningWindow,'PanControl',__DC__GetTPanningWindow__PanControl,nil);
RegisterProperty(TPanningWindow,'PanInterval',__DC__GetTPanningWindow__PanInterval,__DC__SetTPanningWindow__PanInterval);
RegisterProperty(TPanningWindow,'PanOptions',__DC__GetTPanningWindow__PanOptions,nil);
end;

const __ConstNames0 : array[0..16] of string = (
'crPanAll'
,'crPanDown'
,'crPanDownLeft'
,'crPanDownRight'
,'crPanLeft'
,'crPanLeftRight'
,'crPanRight'
,'crPanUp'
,'crPanUpDown'
,'crPanUpLeft'
,'crPanUpRight'
,'pdUp'
,'pdDown'
,'pdLeft'
,'pdRight'
,'poVertical'
,'poHorizontal'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,crPanAll));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,crPanDown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,crPanDownLeft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,crPanDownRight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,crPanLeft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,crPanLeftRight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,crPanRight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,crPanUp));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,crPanUpDown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,crPanUpLeft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,crPanUpRight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,pdUp));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,pdDown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,pdLeft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,pdRight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,poVertical));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,poHorizontal));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TPanningWindow
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
'StartPan'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(THandle),
TypeInfo(TControl),TypeInfo(Boolean)],Addr(StartPan),cRegister);

RegRegisterMethod(TPanningWindow,'DoUpdate',TypeInfo(_T1),[
TypeInfo(IDispatch),
TypeInfo(TPanDirections)], pointer(MinVMTOffset - 79));

//RegRegisterMethod(TPanningWindow,'GetPanOptions',TypeInfo(_T2),[TypeInfo(TPanOptions)], pointer(232));
RegRegisterMethod(TPanningWindow,'GetPanOptions',TypeInfo(_T2),[TypeInfo(TPanOptions)],  getVMTProcAddr('TPanningWindow','GetPanOptions',232));


//RegRegisterMethod(TPanningWindow,'SetPanCursor',TypeInfo(_T3),[TypeInfo(TPanDirections)], pointer(236));
RegRegisterMethod(TPanningWindow,'SetPanCursor',TypeInfo(_T3),[TypeInfo(TPanDirections)],  getVMTProcAddr('TPanningWindow','SetPanCursor',236));


//RegRegisterMethod(TPanningWindow,'UpdateScroll',TypeInfo(_T4),[TypeInfo(IDispatch)], pointer(240));
RegRegisterMethod(TPanningWindow,'UpdateScroll',TypeInfo(_T4),[TypeInfo(IDispatch)],  getVMTProcAddr('TPanningWindow','UpdateScroll',240));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterEvent(TypeInfo(TUpdateEvent),[
TypeInfo(TObject),
TypeInfo(IDispatch),
TypeInfo(TPanDirections)]);}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.