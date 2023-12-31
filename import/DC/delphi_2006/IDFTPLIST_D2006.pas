{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDFTPLIST_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Classes,
  SysUtils,
  IdException,
  IdGlobal,
  IdFTPList;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : string of object;

_T1 = function : TIdFTPListItem of object;

_T2 = function (p0 : string;
const p1 : Boolean): TIdFTPListFormat of object;

_T3 = procedure  of object;

_T4 = function (p0 : TIdFTPListItem): Integer of object;

_T5 = procedure (p0 : TStrings) of object;

_T6 = procedure (p0 : TIdFTPListFormat;
p1 : TIdFTPListItem) of object;

_T7 = procedure (p0 : TIdFTPListItem) of object;

_T8 = _T7;

function __TIdFTPListItems__CheckListFormat__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := TIdFTPListItems(__Instance).CheckListFormat(OleVariant(pargs^[0]));
end;
2:
begin
result := TIdFTPListItems(__Instance).CheckListFormat(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTIdFTPListItem__Data(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).Data;
end;

procedure __DC__SetTIdFTPListItem__Data(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).Data:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__OwnerPermissions(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).OwnerPermissions;
end;

procedure __DC__SetTIdFTPListItem__OwnerPermissions(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).OwnerPermissions:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__GroupPermissions(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).GroupPermissions;
end;

procedure __DC__SetTIdFTPListItem__GroupPermissions(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).GroupPermissions:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__UserPermissions(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).UserPermissions;
end;

procedure __DC__SetTIdFTPListItem__UserPermissions(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).UserPermissions:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__ItemCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).ItemCount;
end;

procedure __DC__SetTIdFTPListItem__ItemCount(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).ItemCount:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__OwnerName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).OwnerName;
end;

procedure __DC__SetTIdFTPListItem__OwnerName(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).OwnerName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__GroupName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).GroupName;
end;

procedure __DC__SetTIdFTPListItem__GroupName(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).GroupName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__ModifiedDate(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).ModifiedDate;
end;

procedure __DC__SetTIdFTPListItem__ModifiedDate(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).ModifiedDate:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__FileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).FileName;
end;

procedure __DC__SetTIdFTPListItem__FileName(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).FileName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__ItemType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).ItemType;
end;

procedure __DC__SetTIdFTPListItem__ItemType(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).ItemType:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItem__LinkedItemName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItem(Instance).LinkedItemName;
end;

procedure __DC__SetTIdFTPListItem__LinkedItemName(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItem(Instance).LinkedItemName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItems__DirectoryName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItems(Instance).DirectoryName;
end;

procedure __DC__SetTIdFTPListItems__DirectoryName(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItems(Instance).DirectoryName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdFTPListItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdFTPListItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdFTPListItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItems(Instance).Items[OleVariant(Params^[1])]:=TIdFTPListItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdFTPListItems__ListFormat(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdFTPListItems(Instance).ListFormat;
end;

procedure __DC__SetTIdFTPListItems__ListFormat(Instance : TObject; Params : PVariantArgList);
begin
TIdFTPListItems(Instance).ListFormat:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdFTPListItem,'Data',__DC__GetTIdFTPListItem__Data,__DC__SetTIdFTPListItem__Data);
RegisterProperty(TIdFTPListItem,'OwnerPermissions',__DC__GetTIdFTPListItem__OwnerPermissions,__DC__SetTIdFTPListItem__OwnerPermissions);
RegisterProperty(TIdFTPListItem,'GroupPermissions',__DC__GetTIdFTPListItem__GroupPermissions,__DC__SetTIdFTPListItem__GroupPermissions);
RegisterProperty(TIdFTPListItem,'UserPermissions',__DC__GetTIdFTPListItem__UserPermissions,__DC__SetTIdFTPListItem__UserPermissions);
RegisterProperty(TIdFTPListItem,'ItemCount',__DC__GetTIdFTPListItem__ItemCount,__DC__SetTIdFTPListItem__ItemCount);
RegisterProperty(TIdFTPListItem,'OwnerName',__DC__GetTIdFTPListItem__OwnerName,__DC__SetTIdFTPListItem__OwnerName);
RegisterProperty(TIdFTPListItem,'GroupName',__DC__GetTIdFTPListItem__GroupName,__DC__SetTIdFTPListItem__GroupName);
RegisterProperty(TIdFTPListItem,'ModifiedDate',__DC__GetTIdFTPListItem__ModifiedDate,__DC__SetTIdFTPListItem__ModifiedDate);
RegisterProperty(TIdFTPListItem,'FileName',__DC__GetTIdFTPListItem__FileName,__DC__SetTIdFTPListItem__FileName);
RegisterProperty(TIdFTPListItem,'ItemType',__DC__GetTIdFTPListItem__ItemType,__DC__SetTIdFTPListItem__ItemType);
RegisterProperty(TIdFTPListItem,'LinkedItemName',__DC__GetTIdFTPListItem__LinkedItemName,__DC__SetTIdFTPListItem__LinkedItemName);
RegisterProperty(TIdFTPListItems,'DirectoryName',__DC__GetTIdFTPListItems__DirectoryName,__DC__SetTIdFTPListItems__DirectoryName);
RegisterIndexedProperty(TIdFTPListItems,'Items',1,True,__DC__GetTIdFTPListItems__Items,__DC__SetTIdFTPListItems__Items);
RegisterProperty(TIdFTPListItems,'ListFormat',__DC__GetTIdFTPListItems__ListFormat,__DC__SetTIdFTPListItems__ListFormat);
end;

const __ConstNames0 : array[0..9] of string = (
'flfNone'
,'flfDos'
,'flfUnix'
,'flfVax'
,'flfNoDetails'
,'flfUnknown'
,'flfCustom'
,'ditDirectory'
,'ditFile'
,'ditSymbolicLink'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,flfNone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,flfDos));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,flfUnix));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,flfVax));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,flfNoDetails));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,flfUnknown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,flfCustom));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,ditDirectory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,ditFile));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,ditSymbolicLink));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..2] of TClass = (
EIdInvalidFTPListingFormat,
TIdFTPListItem,
TIdFTPListItems
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
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
RegRegisterMethod(TIdFTPListItem,'Text',TypeInfo(_T0),[TypeInfo(string)],Addr(TIdFTPListItem.Text));

RegRegisterMethod(TIdFTPListItems,'Add',TypeInfo(_T1),[TypeInfo(TIdFTPListItem)],Addr(TIdFTPListItems.Add));

RegisterProc(TIdFTPListItems,'CheckListFormat',mtScriptMethod,TypeInfo(_T2),[
TypeInfo(string),
TypeInfo(Boolean),TypeInfo(TIdFTPListFormat)],Addr(__TIdFTPListItems__CheckListFormat__Wrapper),cRegister);

RegisterProc(TIdFTPListItems,'Create',mtConstructor,TypeInfo(_T3),NoParams,Addr(TIdFTPListItems.Create),cRegister);

RegRegisterMethod(TIdFTPListItems,'IndexOf',TypeInfo(_T4),[
TypeInfo(TIdFTPListItem),TypeInfo(Integer)],Addr(TIdFTPListItems.IndexOf));

RegRegisterMethod(TIdFTPListItems,'LoadList',TypeInfo(_T5),[
TypeInfo(TStrings)],Addr(TIdFTPListItems.LoadList));

RegRegisterMethod(TIdFTPListItems,'Parse',TypeInfo(_T6),[
TypeInfo(TIdFTPListFormat),
TypeInfo(TIdFTPListItem)],Addr(TIdFTPListItems.Parse));

RegRegisterMethod(TIdFTPListItems,'ParseUnknown',TypeInfo(_T7),[
TypeInfo(TIdFTPListItem)],Addr(TIdFTPListItems.ParseUnknown));

//RegRegisterMethod(TIdFTPListItems,'ParseCustom',TypeInfo(_T8),[TypeInfo(TIdFTPListItem)], pointer(44));
RegRegisterMethod(TIdFTPListItems,'ParseCustom',TypeInfo(_T8),[TypeInfo(TIdFTPListItem)],  getVMTProcAddr('TIdFTPListItems','ParseCustom',44));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TIdOnGetCustomListFormat),[
TypeInfo(TIdFTPListItem),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdOnParseCustomListFormat),[
TypeInfo(TIdFTPListItem)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
