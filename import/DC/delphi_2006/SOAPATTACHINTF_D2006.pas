{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SOAPATTACHINTF_D2006;
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
  InvokeRegistry,
  SOAPAttachIntf;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : Pointer): Integer of object;

_T1 = procedure (p0 : TList;
p1 : TListAssignOp;
p2 : TList) of object;

{_T2 = procedure (p0 : Integer;
p1 : TClass) of object;}

{_T3 = function (p0 : TClass): Integer of object;}

procedure __TSoapDataList__Assign__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
1:
begin
TSoapDataList(__Instance).Assign(TList(VarToObject(OleVariant(pargs^[0]))));
end;
2:
begin
TSoapDataList(__Instance).Assign(TList(VarToObject(OleVariant(pargs^[1]))),OleVariant(pargs^[0]));
end;
3:
begin
TSoapDataList(__Instance).Assign(TList(VarToObject(OleVariant(pargs^[2]))),OleVariant(pargs^[1]),TList(VarToObject(OleVariant(pargs^[0]))));
end;
end
end;

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
TSoapDataList
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
RegRegisterMethod(TSoapDataList,'Add',TypeInfo(_T0),[
TypeInfoPointer,TypeInfo(Integer)],Addr(TSoapDataList.Add));

RegisterProc(TSoapDataList,'Assign',mtScriptMethod,TypeInfo(_T1),[
TypeInfo(TList),
TypeInfo(TListAssignOp),
TypeInfo(TList)],Addr(__TSoapDataList__Assign__Wrapper),cRegister);

end;
initialization
_mreg_0;
{RegRegisterMethod(TSoapDataList,'Insert',TypeInfo(_T2),[
TypeInfo(Integer),
TypeInfo(TClass)],Addr(TSoapDataList.Insert))}

{RegRegisterMethod(TSoapDataList,'Remove',TypeInfo(_T3),[
TypeInfo(TClass),TypeInfo(Integer)],Addr(TSoapDataList.Remove))}

RegisterEvent(TypeInfo(TOnGetAttachmentEvent),[
TypeInfo(TStream),
TypeInfo(TSOAPAttachment)]);

RegisterEvent(TypeInfo(TOnSendAttachmentEvent),[
TypeInfo(TStream),
TypeInfo(TSOAPAttachment)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
