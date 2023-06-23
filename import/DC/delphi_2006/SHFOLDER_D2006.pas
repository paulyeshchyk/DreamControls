{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SHFOLDER_D2006;
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
  Windows,
  SHFolder;
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

const __ConstNames0 : array[0..15] of string = (
'CSIDL_PERSONAL'
,'CSIDL_APPDATA'
,'CSIDL_LOCAL_APPDATA'
,'CSIDL_INTERNET_CACHE'
,'CSIDL_COOKIES'
,'CSIDL_HISTORY'
,'CSIDL_COMMON_APPDATA'
,'CSIDL_WINDOWS'
,'CSIDL_SYSTEM'
,'CSIDL_PROGRAM_FILES'
,'CSIDL_MYPICTURES'
,'CSIDL_PROGRAM_FILES_COMMON'
,'CSIDL_COMMON_DOCUMENTS'
,'CSIDL_FLAG_CREATE'
,'CSIDL_COMMON_ADMINTOOLS'
,'CSIDL_ADMINTOOLS'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,CSIDL_PERSONAL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,CSIDL_APPDATA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,CSIDL_LOCAL_APPDATA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,CSIDL_INTERNET_CACHE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,CSIDL_COOKIES));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,CSIDL_HISTORY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,CSIDL_COMMON_APPDATA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,CSIDL_WINDOWS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,CSIDL_SYSTEM));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,CSIDL_PROGRAM_FILES));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,CSIDL_MYPICTURES));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,CSIDL_PROGRAM_FILES_COMMON));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,CSIDL_COMMON_DOCUMENTS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,CSIDL_FLAG_CREATE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,CSIDL_COMMON_ADMINTOOLS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,CSIDL_ADMINTOOLS));
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
{RegisterProc(nil,'SHGetFolderPath',mtProc,TypeInfo(_T0),[
TypeInfo(hwnd),
TypeInfo(Integer),
TypeInfo(THandle),
TypeInfo(DWord),
TypeInfoPChar,TypeInfo(HRESULT)],Addr(SHGetFolderPath),cStdCall)}

{RegisterProc(nil,'SHGetFolderPathA',mtProc,TypeInfo(_T1),[
TypeInfo(hwnd),
TypeInfo(Integer),
TypeInfo(THandle),
TypeInfo(DWord),
TypeInfoPChar,TypeInfo(HRESULT)],Addr(SHGetFolderPathA),cStdCall)}

{RegisterProc(nil,'SHGetFolderPathW',mtProc,TypeInfo(_T2),[
TypeInfo(hwnd),
TypeInfo(Integer),
TypeInfo(THandle),
TypeInfo(DWord),
TypeInfoPChar,TypeInfo(HRESULT)],Addr(SHGetFolderPathW),cStdCall)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.