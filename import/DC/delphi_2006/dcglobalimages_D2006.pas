{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcglobalimages_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  Windows,
  Graphics,
  CommCtrl,
  ImgList,
  Consts,
  RTLConsts,
  DCCommon,
  DCdreamLib,
  DCConsts,
  DCGlobalImages;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : String;
p1 : TColor;
var p2 : Integer;
var p3 : Integer) of object;

_T1 = procedure (p0 : Integer) of object;

_T2 = procedure (const p0 : TCustomImageList) of object;

_T3 = function : TCustomImageList of object;

_T4 = function (p0 : TCustomImageList;
p1 : THandle;
const p2 : String;
p3 : TColor): Boolean of object;

_T5 = function (const p0 : String): THandle of object;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..0] of string = (
'cDCTrasparentColor'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,cDCTrasparentColor));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..5] of string = (
'DCAddGlobalImages'
,'DCRemoveGlobalImages'
,'DCSetGlobalImageList'
,'DCGlobalImageList'
,'DCAddResourceToImageList'
,'DCGetImageInstance'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(String),
TypeInfo(TColor),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(DCAddGlobalImages),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(Integer)],Addr(DCRemoveGlobalImages),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(TCustomImageList)],Addr(DCSetGlobalImageList),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[TypeInfo(TCustomImageList)],Addr(DCGlobalImageList),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(TCustomImageList),
TypeInfo(THandle),
TypeInfo(String),
TypeInfo(TColor),TypeInfo(Boolean)],Addr(DCAddResourceToImageList),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(String),TypeInfo(THandle)],Addr(DCGetImageInstance),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.