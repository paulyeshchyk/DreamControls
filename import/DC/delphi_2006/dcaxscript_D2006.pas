{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcaxscript_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  Types,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  ActiveX,
  Windows,
  dcAxScript;
function ConvertTDebugPropertyInfoToVariant(var R : TDebugPropertyInfo) : OleVariant;
function ConvertVariantToTDebugPropertyInfo(const V : OleVariant) : TDebugPropertyInfo;
function ConvertTDebugStackFrameDescriptorToVariant(var R : TDebugStackFrameDescriptor) : OleVariant;
function ConvertVariantToTDebugStackFrameDescriptor(const V : OleVariant) : TDebugStackFrameDescriptor;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TDebugPropertyInfo__Wrapper = class(TDCRecordWrapper)
private
fR : TDebugPropertyInfo;
public
function GetRecordPtr : pointer; override;
published
procedure setm_dwValidFields(const val : TDbgPropInfoFlags);
function getm_dwValidFields : TDbgPropInfoFlags;
property m_dwValidFields : TDbgPropInfoFlags read getm_dwValidFields write setm_dwValidFields;
procedure setm_dwAttrib(const val : TDbgPropAttribFlags);
function getm_dwAttrib : TDbgPropAttribFlags;
property m_dwAttrib : TDbgPropAttribFlags read getm_dwAttrib write setm_dwAttrib;
end;
type __TDebugStackFrameDescriptor__Wrapper = class(TDCRecordWrapper)
private
fR : TDebugStackFrameDescriptor;
public
function GetRecordPtr : pointer; override;
published
procedure setdwMin(const val : DWORD);
function getdwMin : DWORD;
property dwMin : DWORD read getdwMin write setdwMin;
procedure setdwLim(const val : DWORD);
function getdwLim : DWORD;
property dwLim : DWORD read getdwLim write setdwLim;
procedure setfFinal(const val : BOOL);
function getfFinal : BOOL;
property fFinal : BOOL read getfFinal write setfFinal;
end;
function __TDebugPropertyInfo__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TDebugPropertyInfo__Wrapper.setm_dwValidFields(const val : TDbgPropInfoFlags);
begin
TDebugPropertyInfo(GetRecordPtr^).m_dwValidFields := val;
end;
function __TDebugPropertyInfo__Wrapper.getm_dwValidFields : TDbgPropInfoFlags;
begin
result := TDebugPropertyInfo(GetRecordPtr^).m_dwValidFields;
end;
procedure __TDebugPropertyInfo__Wrapper.setm_dwAttrib(const val : TDbgPropAttribFlags);
begin
TDebugPropertyInfo(GetRecordPtr^).m_dwAttrib := val;
end;
function __TDebugPropertyInfo__Wrapper.getm_dwAttrib : TDbgPropAttribFlags;
begin
result := TDebugPropertyInfo(GetRecordPtr^).m_dwAttrib;
end;
function __TDebugStackFrameDescriptor__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TDebugStackFrameDescriptor__Wrapper.setdwMin(const val : DWORD);
begin
TDebugStackFrameDescriptor(GetRecordPtr^).dwMin := val;
end;
function __TDebugStackFrameDescriptor__Wrapper.getdwMin : DWORD;
begin
result := TDebugStackFrameDescriptor(GetRecordPtr^).dwMin;
end;
procedure __TDebugStackFrameDescriptor__Wrapper.setdwLim(const val : DWORD);
begin
TDebugStackFrameDescriptor(GetRecordPtr^).dwLim := val;
end;
function __TDebugStackFrameDescriptor__Wrapper.getdwLim : DWORD;
begin
result := TDebugStackFrameDescriptor(GetRecordPtr^).dwLim;
end;
procedure __TDebugStackFrameDescriptor__Wrapper.setfFinal(const val : BOOL);
begin
TDebugStackFrameDescriptor(GetRecordPtr^).fFinal := val;
end;
function __TDebugStackFrameDescriptor__Wrapper.getfFinal : BOOL;
begin
result := TDebugStackFrameDescriptor(GetRecordPtr^).fFinal;
end;
function _TDebugPropertyInfo_ : IDispatch;
begin
  result := __TDebugPropertyInfo__Wrapper.Create;
end;
function _TDebugStackFrameDescriptor_ : IDispatch;
begin
  result := __TDebugStackFrameDescriptor__Wrapper.Create;
end;

type __TDebugPropertyInfo__Wrapper__ = class(__TDebugPropertyInfo__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TDebugPropertyInfo__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTDebugPropertyInfoToVariant(var R : TDebugPropertyInfo) : OleVariant;
var
__rw : __TDebugPropertyInfo__Wrapper__;
begin
__rw := __TDebugPropertyInfo__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTDebugPropertyInfo(const V : OleVariant) : TDebugPropertyInfo;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TDebugPropertyInfo((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TDebugStackFrameDescriptor__Wrapper__ = class(__TDebugStackFrameDescriptor__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TDebugStackFrameDescriptor__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTDebugStackFrameDescriptorToVariant(var R : TDebugStackFrameDescriptor) : OleVariant;
var
__rw : __TDebugStackFrameDescriptor__Wrapper__;
begin
__rw := __TDebugStackFrameDescriptor__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTDebugStackFrameDescriptor(const V : OleVariant) : TDebugStackFrameDescriptor;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TDebugStackFrameDescriptor((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..100] of string = (
'SCRIPTITEM_ISVISIBLE'
,'SCRIPTITEM_ISSOURCE'
,'SCRIPTITEM_GLOBALMEMBERS'
,'SCRIPTITEM_ISPERSISTENT'
,'SCRIPTITEM_CODEONLY'
,'SCRIPTITEM_NOCODE'
,'SCRIPTITEM_ALL_FLAGS'
,'SCRIPTTYPELIB_ISCONTROL'
,'SCRIPTTYPELIB_ISPERSISTENT'
,'SCRIPTTYPELIB_ALL_FLAGS'
,'SCRIPTTEXT_NULL'
,'SCRIPTTEXT_ISVISIBLE'
,'SCRIPTTEXT_ISEXPRESSION'
,'SCRIPTTEXT_ISPERSISTENT'
,'SCRIPTTEXT_ALL_FLAGS'
,'SCRIPTINFO_IUNKNOWN'
,'SCRIPTINFO_ITYPEINFO'
,'SCRIPTINFO_ALL_FLAGS'
,'SCRIPTINTERRUPT_DEBUG'
,'SCRIPTINTERRUPT_RAISEEXCEPTION'
,'SCRIPTINTERRUPT_ALL_FLAGS'
,'SCRIPTSTATE_UNINITIALIZED'
,'SCRIPTSTATE_INITIALIZED'
,'SCRIPTSTATE_STARTED'
,'SCRIPTSTATE_CONNECTED'
,'SCRIPTSTATE_DISCONNECTED'
,'SCRIPTSTATE_CLOSED'
,'SCRIPTTHREADSTATE_NOTINSCRIPT'
,'SCRIPTTHREADSTATE_RUNNING'
,'DEBUG_TEXT_ISEXPRESSION'
,'DEBUG_TEXT_RETURNVALUE'
,'DEBUG_TEXT_NOSIDEEFFECTS'
,'DEBUG_TEXT_ALLOWBREAKPOINTS'
,'DEBUG_TEXT_ALLOWERRORREPORT'
,'SCRIPTTHREADID_CURRENT'
,'SCRIPTTHREADID_BASE'
,'SCRIPTTHREADID_ALL'
,'DBGPROP_INFO_NAME'
,'DBGPROP_INFO_TYPE'
,'DBGPROP_INFO_VALUE'
,'DBGPROP_INFO_FULLNAME'
,'DBGPROP_INFO_ATTRIBUTES'
,'DBGPROP_INFO_DEBUGPROP'
,'DBGPROP_INFO_AUTOEXPAND'
,'DBGPROP_INFO_STANDARD'
,'DBGPROP_INFO_ALL'
,'TEXT_DOC_ATTR_READONLY'
,'APPBREAKFLAG_DEBUGGER_BLOCK'
,'APPBREAKFLAG_DEBUGGER_HALT'
,'APPBREAKFLAG_STEP'
,'APPBREAKFLAG_NESTED'
,'APPBREAKFLAG_STEPTYPE_SOURCE'
,'APPBREAKFLAG_STEPTYPE_BYTECODE'
,'APPBREAKFLAG_STEPTYPE_MACHINE'
,'APPBREAKFLAG_STEPTYPE_MASK'
,'APPBREAKFLAG_IN_BREAKPOINT'
,'DBGPROP_ATTRIB_NO_ATTRIB'
,'DBGPROP_ATTRIB_VALUE_IS_INVALID'
,'DBGPROP_ATTRIB_VALUE_IS_EXPANDABLE'
,'DBGPROP_ATTRIB_VALUE_READONLY'
,'DBGPROP_ATTRIB_ACCESS_PUBLIC'
,'DBGPROP_ATTRIB_ACCESS_PRIVATE'
,'DBGPROP_ATTRIB_ACCESS_PROTECTED'
,'DBGPROP_ATTRIB_ACCESS_FINAL'
,'DBGPROP_ATTRIB_STORAGE_GLOBAL'
,'DBGPROP_ATTRIB_STORAGE_STATIC'
,'DBGPROP_ATTRIB_STORAGE_FIELD'
,'DBGPROP_ATTRIB_STORAGE_VIRTUAL'
,'DBGPROP_ATTRIB_TYPE_IS_CONSTANT'
,'DBGPROP_ATTRIB_TYPE_IS_SYNCHRONIZED'
,'DBGPROP_ATTRIB_TYPE_IS_VOLATILE'
,'DBGPROP_ATTRIB_HAS_EXTENDED_ATTRIBS'
,'THREAD_STATE_RUNNING'
,'THREAD_STATE_SUSPENDED'
,'THREAD_BLOCKED'
,'THREAD_OUT_OF_CONTEXT'
,'Class_IActiveScriptSite'
,'Class_IActiveScriptSiteWindow'
,'DOCUMENTNAMETYPE_APPNODE'
,'DOCUMENTNAMETYPE_TITLE'
,'DOCUMENTNAMETYPE_FILE_TAIL'
,'DOCUMENTNAMETYPE_URL'
,'BREAKPOINT_DELETED'
,'BREAKPOINT_DISABLED'
,'BREAKPOINT_ENABLED'
,'braAbort'
,'braContinue'
,'braStepInto'
,'braStepOver'
,'braStepOut'
,'braIgnore'
,'eraReexecute'
,'eraAbortAndReturnError'
,'eraSkipError'
,'BREAKREASON_STEP'
,'BREAKREASON_BREAKPOINT'
,'BREAKREASON_DEBUGGER_BLOCK'
,'BREAKREASON_HOST_INITIATED'
,'BREAKREASON_LANGUAGE_INITIATED'
,'BREAKREASON_DEBUGGER_HALT'
,'BREAKREASON_ERROR'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,SCRIPTITEM_ISVISIBLE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,SCRIPTITEM_ISSOURCE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,SCRIPTITEM_GLOBALMEMBERS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,SCRIPTITEM_ISPERSISTENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,SCRIPTITEM_CODEONLY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,SCRIPTITEM_NOCODE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,SCRIPTITEM_ALL_FLAGS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,SCRIPTTYPELIB_ISCONTROL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,SCRIPTTYPELIB_ISPERSISTENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,SCRIPTTYPELIB_ALL_FLAGS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,SCRIPTTEXT_NULL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,SCRIPTTEXT_ISVISIBLE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,SCRIPTTEXT_ISEXPRESSION));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,SCRIPTTEXT_ISPERSISTENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,SCRIPTTEXT_ALL_FLAGS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,SCRIPTINFO_IUNKNOWN));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,SCRIPTINFO_ITYPEINFO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,SCRIPTINFO_ALL_FLAGS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,SCRIPTINTERRUPT_DEBUG));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,SCRIPTINTERRUPT_RAISEEXCEPTION));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,SCRIPTINTERRUPT_ALL_FLAGS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,SCRIPTSTATE_UNINITIALIZED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,SCRIPTSTATE_INITIALIZED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,SCRIPTSTATE_STARTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,SCRIPTSTATE_CONNECTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,SCRIPTSTATE_DISCONNECTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,SCRIPTSTATE_CLOSED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,SCRIPTTHREADSTATE_NOTINSCRIPT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,SCRIPTTHREADSTATE_RUNNING));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,DEBUG_TEXT_ISEXPRESSION));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,DEBUG_TEXT_RETURNVALUE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,DEBUG_TEXT_NOSIDEEFFECTS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,DEBUG_TEXT_ALLOWBREAKPOINTS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,DEBUG_TEXT_ALLOWERRORREPORT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,SCRIPTTHREADID_CURRENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,SCRIPTTHREADID_BASE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,SCRIPTTHREADID_ALL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,DBGPROP_INFO_NAME));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,DBGPROP_INFO_TYPE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,DBGPROP_INFO_VALUE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,DBGPROP_INFO_FULLNAME));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,DBGPROP_INFO_ATTRIBUTES));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,DBGPROP_INFO_DEBUGPROP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,DBGPROP_INFO_AUTOEXPAND));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,DBGPROP_INFO_STANDARD));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,DBGPROP_INFO_ALL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,TEXT_DOC_ATTR_READONLY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,APPBREAKFLAG_DEBUGGER_BLOCK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,APPBREAKFLAG_DEBUGGER_HALT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,APPBREAKFLAG_STEP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,APPBREAKFLAG_NESTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,APPBREAKFLAG_STEPTYPE_SOURCE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,APPBREAKFLAG_STEPTYPE_BYTECODE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,APPBREAKFLAG_STEPTYPE_MACHINE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,APPBREAKFLAG_STEPTYPE_MASK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,APPBREAKFLAG_IN_BREAKPOINT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,DBGPROP_ATTRIB_NO_ATTRIB));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,DBGPROP_ATTRIB_VALUE_IS_INVALID));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,DBGPROP_ATTRIB_VALUE_IS_EXPANDABLE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[59] ,DBGPROP_ATTRIB_VALUE_READONLY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[60] ,DBGPROP_ATTRIB_ACCESS_PUBLIC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[61] ,DBGPROP_ATTRIB_ACCESS_PRIVATE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[62] ,DBGPROP_ATTRIB_ACCESS_PROTECTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[63] ,DBGPROP_ATTRIB_ACCESS_FINAL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[64] ,DBGPROP_ATTRIB_STORAGE_GLOBAL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[65] ,DBGPROP_ATTRIB_STORAGE_STATIC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[66] ,DBGPROP_ATTRIB_STORAGE_FIELD));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[67] ,DBGPROP_ATTRIB_STORAGE_VIRTUAL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[68] ,DBGPROP_ATTRIB_TYPE_IS_CONSTANT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[69] ,DBGPROP_ATTRIB_TYPE_IS_SYNCHRONIZED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[70] ,DBGPROP_ATTRIB_TYPE_IS_VOLATILE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[71] ,DBGPROP_ATTRIB_HAS_EXTENDED_ATTRIBS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[72] ,THREAD_STATE_RUNNING));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[73] ,THREAD_STATE_SUSPENDED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[74] ,THREAD_BLOCKED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[75] ,THREAD_OUT_OF_CONTEXT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[76] ,Class_IActiveScriptSite));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[77] ,Class_IActiveScriptSiteWindow));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[78] ,DOCUMENTNAMETYPE_APPNODE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[79] ,DOCUMENTNAMETYPE_TITLE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[80] ,DOCUMENTNAMETYPE_FILE_TAIL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[81] ,DOCUMENTNAMETYPE_URL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[82] ,BREAKPOINT_DELETED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[83] ,BREAKPOINT_DISABLED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[84] ,BREAKPOINT_ENABLED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[85] ,braAbort));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[86] ,braContinue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[87] ,braStepInto));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[88] ,braStepOver));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[89] ,braStepOut));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[90] ,braIgnore));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[91] ,eraReexecute));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[92] ,eraAbortAndReturnError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[93] ,eraSkipError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[94] ,BREAKREASON_STEP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[95] ,BREAKREASON_BREAKPOINT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[96] ,BREAKREASON_DEBUGGER_BLOCK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[97] ,BREAKREASON_HOST_INITIATED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[98] ,BREAKREASON_LANGUAGE_INITIATED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[99] ,BREAKREASON_DEBUGGER_HALT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[100] ,BREAKREASON_ERROR));
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

var __RegisteredMethods : TList;
const MethodNames : array[0..1] of string = (
'TDebugPropertyInfo'
,'TDebugStackFrameDescriptor'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TDebugPropertyInfo_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[1],Addr(_TDebugStackFrameDescriptor_)));
end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.