{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDAUTHENTICATIONDIGEST_D2006;
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
  Classes,
  SysUtils,
  IdException,
  IdGlobal,
  IdAuthentication,
  IdHashMessageDigest,
  IdHeaderList,
  IdAuthenticationDigest;
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

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..1] of TClass = (
EIdInvalidAlgorithm,
TIdDigestAuthentication
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
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
