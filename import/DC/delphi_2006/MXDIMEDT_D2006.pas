{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MXDIMEDT_D2006;
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
  Classes,
  Controls,
  StdCtrls,
  Graphics,
  DB,
  Grids,
  Forms,
  ExtCtrls,
  Mxconsts,
  MXGRID,
  MXDB,
  Mxstore,
  MXDCONST,
  DesignWindows,
  MXDIMEDT;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = procedure (const p0 : IDesigner;
p1 : TComponent) of object;}

_T1 = procedure (p0 : TObject) of object;

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
TDimEditor
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
RegRegisterMethod(TDimEditor,'DimListBox1Click',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TDimEditor.DimListBox1Click));

end;
initialization
_mreg_0;
{RegisterProc(nil,'ShowDisplayDimEditor',mtProc,TypeInfo(_T0),[
TypeInfo(IDesigner),
TypeInfo(TComponent)],Addr(ShowDisplayDimEditor),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.