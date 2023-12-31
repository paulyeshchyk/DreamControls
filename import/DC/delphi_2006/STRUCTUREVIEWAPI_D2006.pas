{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit STRUCTUREVIEWAPI_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  CommCtrl,
  SysUtils,
  Classes,
  Menus,
  Controls,
  ActiveX,
  ToolsAPI,
  StructureViewAPI;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TMenuItem;
p1 : Boolean) of object;

_T1 = procedure (p0 : TMenuItem) of object;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..19] of string = (
'SourceCodeStructureType'
,'ErrorsNodeType'
,'DesignerStructureType'
,'voLevelSelectConstraint'
,'voMultiSelect'
,'voRightClickSelect'
,'voSiblingSelectConstraint'
,'ckNodeAdded'
,'ckNodeRemoved'
,'ckChanged'
,'odsDragEnter'
,'odsDragLeave'
,'odsDragMove'
,'odmNowhere'
,'odmAbove'
,'odmOnNode'
,'odmBelow'
,'onpNone'
,'onpIntegrated'
,'onpExternal'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,SourceCodeStructureType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ErrorsNodeType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,DesignerStructureType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,voLevelSelectConstraint));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,voMultiSelect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,voRightClickSelect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,voSiblingSelectConstraint));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,ckNodeAdded));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,ckNodeRemoved));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,ckChanged));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,odsDragEnter));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,odsDragLeave));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,odsDragMove));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,odmNowhere));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,odmAbove));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,odmOnNode));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,odmBelow));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,onpNone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,onpIntegrated));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,onpExternal));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TStructureMenuItem,
TStructureNodeMenuItem
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
RegisterProc(TStructureMenuItem,'Clone',mtConstructor,TypeInfo(_T0),[
TypeInfo(TMenuItem),
TypeInfo(Boolean)],Addr(TStructureMenuItem.Clone),cRegister);

RegisterProc(TStructureNodeMenuItem,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(TMenuItem)],Addr(TStructureNodeMenuItem.Create),cRegister);

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
