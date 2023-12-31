{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit GAUGES_D2006;
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
  Windows,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  Gauges;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : Longint) of object;

function __DC__GetTGauge__PercentDone(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TGauge(Instance).PercentDone;
end;

procedure __RegisterProps;
begin
RegisterProperty(TGauge,'PercentDone',__DC__GetTGauge__PercentDone,nil);
end;

const __ConstNames0 : array[0..4] of string = (
'gkText'
,'gkHorizontalBar'
,'gkVerticalBar'
,'gkPie'
,'gkNeedle'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,gkText));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,gkHorizontalBar));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,gkVerticalBar));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,gkPie));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,gkNeedle));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TGauge
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
RegRegisterMethod(TGauge,'AddProgress',TypeInfo(_T0),[
TypeInfo(Longint)],Addr(TGauge.AddProgress));

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
