{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcpackagesform_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  Messages,
  SysUtils,
  Classes,
  Dialogs,
  Buttons,
  StdCtrls,
  ExtCtrls,
  Controls,
  Forms,
  DCButtonPanel,
  DCPLoad,
  DCConsts,
  DCSystem,
  DCdreamLib,
  DCImageListBox,
  DCInstCompListForm,
  DCPackagesForm;
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

_T2 = _T0;

_T3 = procedure (p0 : TObject;
p1 : TDCCustomCheckListItem) of object;

_T4 = _T0;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..0] of string = (
'sDCPackageExt'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sDCPackageExt));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TDCPackagesEditor
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
RegRegisterMethod(TDCPackagesEditor,'AddBtnClick',TypeInfo(_T0),[
TypeInfo(TObject)],Addr(TDCPackagesEditor.AddBtnClick));

RegRegisterMethod(TDCPackagesEditor,'RemoveBtnClick',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TDCPackagesEditor.RemoveBtnClick));

RegRegisterMethod(TDCPackagesEditor,'ComponentsBtnClick',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TDCPackagesEditor.ComponentsBtnClick));

RegRegisterMethod(TDCPackagesEditor,'PackagesListCheckStateChanged',TypeInfo(_T3),[
TypeInfo(TObject),
TypeInfo(TDCCustomCheckListItem)],Addr(TDCPackagesEditor.PackagesListCheckStateChanged));

RegRegisterMethod(TDCPackagesEditor,'PackagesListSelectionChanged',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TDCPackagesEditor.PackagesListSelectionChanged));

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
