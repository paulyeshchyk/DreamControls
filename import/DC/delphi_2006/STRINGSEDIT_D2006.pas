{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit STRINGSEDIT_D2006;
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
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StrEdit,
  Menus,
  StdCtrls,
  ExtCtrls,
  ComCtrls,
  ActnPopup,
  StringsEdit;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TObject;
var p1 : Word;
p2 : TShiftState) of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

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
TStringsEditDlg
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
RegRegisterMethod(TStringsEditDlg,'Memo1KeyDown',TypeInfo(_T0),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TStringsEditDlg.Memo1KeyDown));

RegRegisterMethod(TStringsEditDlg,'UpdateStatus',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TStringsEditDlg.UpdateStatus));

RegRegisterMethod(TStringsEditDlg,'FormCreate',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TStringsEditDlg.FormCreate));

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
