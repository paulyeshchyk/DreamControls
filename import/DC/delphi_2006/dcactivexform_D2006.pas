{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcactivexform_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  ExtCtrls,
  DCButtonPanel,
  DCdreamLib,
  DCConsts,
  DCImageListBox,
  DCActiveXList,
  DCActiveXForm;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TObject) of object;

_T1 = _T0;

procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TDCActiveXEditor
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
RegRegisterMethod(TDCActiveXEditor,'ComponentsBtnClick',TypeInfo(_T0),[
TypeInfo(TObject)],Addr(TDCActiveXEditor.ComponentsBtnClick));

RegRegisterMethod(TDCActiveXEditor,'DCActiveXListBoxSelectionChanged',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TDCActiveXEditor.DCActiveXListBoxSelectionChanged));

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
