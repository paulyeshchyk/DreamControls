{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MXDCONST_D2006;
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
  dcdreamlib,
  MXDCONST;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..10] of string = (
'sComponentTabName'
,'sQueryVerb0'
,'sQueryVerb1'
,'sCubeVerb0'
,'sCubeVerb1'
,'sGridVerb0'
,'sSourceVerb0'
,'sSourceVerb1'
,'sGridDimOptions'
,'sGridDimSettings'
,'sCubeProperties'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sComponentTabName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sQueryVerb0));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sQueryVerb1));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sCubeVerb0));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sCubeVerb1));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,sGridVerb0));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,sSourceVerb0));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,sSourceVerb1));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,sGridDimOptions));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,sGridDimSettings));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,sCubeProperties));
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

procedure _mreg_0;
begin
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
