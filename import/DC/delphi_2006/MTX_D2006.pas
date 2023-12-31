{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MTX_D2006;
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
  Mtx;
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

const __ConstNames0 : array[0..13] of string = (
'mtsErrCtxAborted'
,'mtsErrCtxAborting'
,'mtsErrCtxNoContext'
,'mtsErrCtxNotRegistered'
,'mtsErrCtxActivityTimeout'
,'mtsErrCtxOldReference'
,'mtsErrCtxRoleNotFound'
,'mtsErrCtxNoSecurity'
,'mtsErrCtxWrongThread'
,'mtsErrCtxTMNotAvailable'
,'LockSetGet'
,'LockMethod'
,'Standard'
,'Process'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,mtsErrCtxAborted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,mtsErrCtxAborting));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,mtsErrCtxNoContext));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,mtsErrCtxNotRegistered));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,mtsErrCtxActivityTimeout));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,mtsErrCtxOldReference));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,mtsErrCtxRoleNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,mtsErrCtxNoSecurity));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,mtsErrCtxWrongThread));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,mtsErrCtxTMNotAvailable));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,LockSetGet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,LockMethod));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,Standard));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,Process));
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
{RegisterProc(nil,'GetObjectContext',mtProc,TypeInfo(_T0),[TypeInfo(IObjectContext)],Addr(GetObjectContext),cRegister)}

{RegisterProc(nil,'CreateTransactionContext',mtProc,TypeInfo(_T2),[TypeInfo(ITransactionContext)],Addr(CreateTransactionContext),cRegister)}

{RegisterProc(nil,'CreateTransactionContextEx',mtProc,TypeInfo(_T3),[TypeInfo(ITransactionContextEx)],Addr(CreateTransactionContextEx),cRegister)}

{RegisterProc(nil,'CreateSharedPropertyGroupManager',mtProc,TypeInfo(_T4),[TypeInfo(ISharedPropertyGroupManager)],Addr(CreateSharedPropertyGroupManager),cRegister)}

{RegisterProc(nil,'CreateSharedPropertyGroup',mtProc,TypeInfo(_T5),[
TypeInfo(WideString),TypeInfo(ISharedPropertyGroup)],Addr(CreateSharedPropertyGroup),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
