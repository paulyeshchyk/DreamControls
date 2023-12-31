{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit ASCRLIB_D2006;
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
  ActiveX,
  Classes,
  StdVCL,
  AscrLib;
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

const __ConstNames0 : array[0..17] of string = (
'ActiveScriptLibMajorVersion'
,'ActiveScriptLibMinorVersion'
,'SCRIPTSTATE_UNINITIALIZED'
,'SCRIPTSTATE_INITIALIZED'
,'SCRIPTSTATE_STARTED'
,'SCRIPTSTATE_CONNECTED'
,'SCRIPTSTATE_DISCONNECTED'
,'SCRIPTSTATE_CLOSED'
,'SCRIPTTHREADSTATE_NOTINSCRIPT'
,'SCRIPTTHREADSTATE_RUNNING'
,'SCRIPTINFO_IUNKNOWN'
,'SCRIPTINFO_ITYPEINFO'
,'SCRIPTITEM_ISVISIBLE'
,'SCRIPTITEM_ISSOURCE'
,'SCRIPTITEM_GLOBALMEMBERS'
,'SCRIPTITEM_ISPERSISTENT'
,'SCRIPTITEM_CODEONLY'
,'SCRIPTITEM_NOCODE'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ActiveScriptLibMajorVersion));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ActiveScriptLibMinorVersion));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,SCRIPTSTATE_UNINITIALIZED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,SCRIPTSTATE_INITIALIZED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,SCRIPTSTATE_STARTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,SCRIPTSTATE_CONNECTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,SCRIPTSTATE_DISCONNECTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,SCRIPTSTATE_CLOSED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,SCRIPTTHREADSTATE_NOTINSCRIPT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,SCRIPTTHREADSTATE_RUNNING));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,SCRIPTINFO_IUNKNOWN));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,SCRIPTINFO_ITYPEINFO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,SCRIPTITEM_ISVISIBLE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,SCRIPTITEM_ISSOURCE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,SCRIPTITEM_GLOBALMEMBERS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,SCRIPTITEM_ISPERSISTENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,SCRIPTITEM_CODEONLY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,SCRIPTITEM_NOCODE));
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
