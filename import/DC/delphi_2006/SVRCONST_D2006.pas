{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SVRCONST_D2006;
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
  SvrConst;
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

const __ConstNames0 : array[0..37] of string = (
'sWebAppDebugger'
,'sStopServer'
,'sStartServer'
,'sCouldNotOpenRegKey'
,'sUnauthorizedString'
,'sForbiddenString'
,'sNoDirBrowseString'
,'sBadRequest'
,'sNotFound'
,'sInternalServerError'
,'sErrorEvent'
,'sResponseEvent'
,'sEvent'
,'sDate'
,'sElapsed'
,'sPath'
,'sCode'
,'sContentLength'
,'sContentType'
,'sNoDefaultURL'
,'sLogTab'
,'sSend'
,'sReceive'
,'sLogStrTemplate'
,'UnauthorizedString'
,'ForbiddenString'
,'NoDirBrowseString'
,'BadRequest'
,'NotFound'
,'DateFormat'
,'sBuild'
,'sDirHeader'
,'sDirParent'
,'sDirRoot'
,'sDirEntry'
,'sFileEntry'
,'sListStart'
,'sDirFooter'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sWebAppDebugger));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sStopServer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sStartServer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sCouldNotOpenRegKey));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sUnauthorizedString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,sForbiddenString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,sNoDirBrowseString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,sBadRequest));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,sNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,sInternalServerError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,sErrorEvent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,sResponseEvent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,sEvent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,sDate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,sElapsed));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,sPath));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,sCode));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,sContentLength));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,sContentType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,sNoDefaultURL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,sLogTab));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,sSend));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,sReceive));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,sLogStrTemplate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,UnauthorizedString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,ForbiddenString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,NoDirBrowseString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,BadRequest));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,NotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,DateFormat));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,sBuild));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,sDirHeader));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,sDirParent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,sDirRoot));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,sDirEntry));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,sFileEntry));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,sListStart));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,sDirFooter));
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
