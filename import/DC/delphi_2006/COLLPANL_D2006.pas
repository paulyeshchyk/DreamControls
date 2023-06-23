{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit COLLPANL_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  Messages,
  Controls,
  StdCtrls,
  ExtCtrls,
  Graphics,
  CollPanl;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : string of object;

_T1 = function : Integer of object;

_T2 = procedure (const p0 : &;
const p1) of object;

_T3 = procedure (const p0 : Integer) of object;

function __DC__GetTCollapsePanel__Expanded(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCollapsePanel(Instance).Expanded;
end;

procedure __RegisterProps;
begin
RegisterProperty(TCollapsePanel,'Expanded',__DC__GetTCollapsePanel__Expanded,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..1] of TClass = (
TCollapsePanel,
THeaderPanel
);
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
RegRegisterMethod(TCollapsePanel,'GetHeaderCaption',TypeInfo(_T0),[TypeInfo(string)],Addr(TCollapsePanel.GetHeaderCaption));

RegRegisterMethod(TCollapsePanel,'GetHeaderHeight',TypeInfo(_T1),[TypeInfo(Integer)],Addr(TCollapsePanel.GetHeaderHeight));

RegRegisterMethod(TCollapsePanel,'SetHeaderCaption',TypeInfo(_T2),[
TypeInfo(&),
TypeInfoUntyped],Addr(TCollapsePanel.SetHeaderCaption));

RegRegisterMethod(TCollapsePanel,'SetHeaderHeight',TypeInfo(_T3),[
TypeInfo(Integer)],Addr(TCollapsePanel.SetHeaderHeight));

end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.