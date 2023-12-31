{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDGOPHER_D2006;
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
  IdAssignedNumbers,
  IdEMailAddress,
  IdHeaderList,
  IdTCPClient,
  IdGopher;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : String;
p1 : Boolean;
p2 : String): TIdGopherMenu of object;

_T1 = function (p0 : String;
p1 : String): TIdGopherMenu of object;

_T2 = procedure (p0 : String;
p1 : TStream;
p2 : Boolean;
p3 : String) of object;

_T3 = _T2;

_T4 = _T1;

_T5 = procedure  of object;

_T6 = function : TIdGopherMenuItem of object;

_T7 = _T5;

function __TIdGopher__GetMenu__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := VarFromObject(TIdGopher(__Instance).GetMenu(OleVariant(pargs^[0])));
end;
2:
begin
result := VarFromObject(TIdGopher(__Instance).GetMenu(OleVariant(pargs^[1]),OleVariant(pargs^[0])));
end;
3:
begin
result := VarFromObject(TIdGopher(__Instance).GetMenu(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0])));
end;
end
end;

procedure __TIdGopher__GetFile__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
2:
begin
TIdGopher(__Instance).GetFile(OleVariant(pargs^[1]),TStream(VarToObject(OleVariant(pargs^[0]))));
end;
3:
begin
TIdGopher(__Instance).GetFile(OleVariant(pargs^[2]),TStream(VarToObject(OleVariant(pargs^[1]))),OleVariant(pargs^[0]));
end;
4:
begin
TIdGopher(__Instance).GetFile(OleVariant(pargs^[3]),TStream(VarToObject(OleVariant(pargs^[2]))),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdGopher__GetTextFile__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
2:
begin
TIdGopher(__Instance).GetTextFile(OleVariant(pargs^[1]),TStream(VarToObject(OleVariant(pargs^[0]))));
end;
3:
begin
TIdGopher(__Instance).GetTextFile(OleVariant(pargs^[2]),TStream(VarToObject(OleVariant(pargs^[1]))),OleVariant(pargs^[0]));
end;
4:
begin
TIdGopher(__Instance).GetTextFile(OleVariant(pargs^[3]),TStream(VarToObject(OleVariant(pargs^[2]))),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __TIdGopher__GetExtendedMenu__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := VarFromObject(TIdGopher(__Instance).GetExtendedMenu(OleVariant(pargs^[0])));
end;
2:
begin
result := VarFromObject(TIdGopher(__Instance).GetExtendedMenu(OleVariant(pargs^[1]),OleVariant(pargs^[0])));
end;
end
end;

function __DC__GetTIdGopherMenu__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdGopherMenu(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdGopherMenu__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenu(Instance).Items[OleVariant(Params^[1])]:=TIdGopherMenuItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdGopherMenuItem__Title(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Title;
end;

procedure __DC__SetTIdGopherMenuItem__Title(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenuItem(Instance).Title:=OleVariant(Params^[0]);
end;

function __DC__GetTIdGopherMenuItem__ItemType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).ItemType;
end;

procedure __DC__SetTIdGopherMenuItem__ItemType(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenuItem(Instance).ItemType:=VarToChar(OleVariant(Params^[0]));
end;

function __DC__GetTIdGopherMenuItem__Selector(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Selector;
end;

procedure __DC__SetTIdGopherMenuItem__Selector(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenuItem(Instance).Selector:=OleVariant(Params^[0]);
end;

function __DC__GetTIdGopherMenuItem__Server(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Server;
end;

procedure __DC__SetTIdGopherMenuItem__Server(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenuItem(Instance).Server:=OleVariant(Params^[0]);
end;

function __DC__GetTIdGopherMenuItem__Port(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Port;
end;

procedure __DC__SetTIdGopherMenuItem__Port(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenuItem(Instance).Port:=OleVariant(Params^[0]);
end;

function __DC__GetTIdGopherMenuItem__GopherPlusItem(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).GopherPlusItem;
end;

procedure __DC__SetTIdGopherMenuItem__GopherPlusItem(Instance : TObject; Params : PVariantArgList);
begin
TIdGopherMenuItem(Instance).GopherPlusItem:=OleVariant(Params^[0]);
end;

function __DC__GetTIdGopherMenuItem__GopherBlock(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdGopherMenuItem(Instance).GopherBlock);
end;

function __DC__GetTIdGopherMenuItem__URL(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).URL;
end;

function __DC__GetTIdGopherMenuItem__Views(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdGopherMenuItem(Instance).Views);
end;

function __DC__GetTIdGopherMenuItem__AAbstract(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdGopherMenuItem(Instance).AAbstract);
end;

function __DC__GetTIdGopherMenuItem__LastModified(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).LastModified;
end;

function __DC__GetTIdGopherMenuItem__AdminEMail(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdGopherMenuItem(Instance).AdminEMail);
end;

function __DC__GetTIdGopherMenuItem__Organization(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Organization;
end;

function __DC__GetTIdGopherMenuItem__Location(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Location;
end;

function __DC__GetTIdGopherMenuItem__Geog(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdGopherMenuItem(Instance).Geog;
end;

function __DC__GetTIdGopherMenuItem__Ask(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdGopherMenuItem(Instance).Ask);
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(TIdGopherMenu,'Items',1,True,__DC__GetTIdGopherMenu__Items,__DC__SetTIdGopherMenu__Items);
RegisterProperty(TIdGopherMenuItem,'Title',__DC__GetTIdGopherMenuItem__Title,__DC__SetTIdGopherMenuItem__Title);
RegisterProperty(TIdGopherMenuItem,'ItemType',__DC__GetTIdGopherMenuItem__ItemType,__DC__SetTIdGopherMenuItem__ItemType);
RegisterProperty(TIdGopherMenuItem,'Selector',__DC__GetTIdGopherMenuItem__Selector,__DC__SetTIdGopherMenuItem__Selector);
RegisterProperty(TIdGopherMenuItem,'Server',__DC__GetTIdGopherMenuItem__Server,__DC__SetTIdGopherMenuItem__Server);
RegisterProperty(TIdGopherMenuItem,'Port',__DC__GetTIdGopherMenuItem__Port,__DC__SetTIdGopherMenuItem__Port);
RegisterProperty(TIdGopherMenuItem,'GopherPlusItem',__DC__GetTIdGopherMenuItem__GopherPlusItem,__DC__SetTIdGopherMenuItem__GopherPlusItem);
RegisterProperty(TIdGopherMenuItem,'GopherBlock',__DC__GetTIdGopherMenuItem__GopherBlock,nil);
RegisterProperty(TIdGopherMenuItem,'URL',__DC__GetTIdGopherMenuItem__URL,nil);
RegisterProperty(TIdGopherMenuItem,'Views',__DC__GetTIdGopherMenuItem__Views,nil);
RegisterProperty(TIdGopherMenuItem,'AAbstract',__DC__GetTIdGopherMenuItem__AAbstract,nil);
RegisterProperty(TIdGopherMenuItem,'LastModified',__DC__GetTIdGopherMenuItem__LastModified,nil);
RegisterProperty(TIdGopherMenuItem,'AdminEMail',__DC__GetTIdGopherMenuItem__AdminEMail,nil);
RegisterProperty(TIdGopherMenuItem,'Organization',__DC__GetTIdGopherMenuItem__Organization,nil);
RegisterProperty(TIdGopherMenuItem,'Location',__DC__GetTIdGopherMenuItem__Location,nil);
RegisterProperty(TIdGopherMenuItem,'Geog',__DC__GetTIdGopherMenuItem__Geog,nil);
RegisterProperty(TIdGopherMenuItem,'Ask',__DC__GetTIdGopherMenuItem__Ask,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
TIdGopher,
TIdGopherMenu,
TIdGopherMenuItem
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
RegisterProc(TIdGopher,'GetMenu',mtScriptMethod,TypeInfo(_T0),[
TypeInfo(String),
TypeInfo(Boolean),
TypeInfo(String),TypeInfo(TIdGopherMenu)],Addr(__TIdGopher__GetMenu__Wrapper),cRegister);

RegRegisterMethod(TIdGopher,'Search',TypeInfo(_T1),[
TypeInfo(String),
TypeInfo(String),TypeInfo(TIdGopherMenu)],Addr(TIdGopher.Search));

RegisterProc(TIdGopher,'GetFile',mtScriptMethod,TypeInfo(_T2),[
TypeInfo(String),
TypeInfo(TStream),
TypeInfo(Boolean),
TypeInfo(String)],Addr(__TIdGopher__GetFile__Wrapper),cRegister);

RegisterProc(TIdGopher,'GetTextFile',mtScriptMethod,TypeInfo(_T3),[
TypeInfo(String),
TypeInfo(TStream),
TypeInfo(Boolean),
TypeInfo(String)],Addr(__TIdGopher__GetTextFile__Wrapper),cRegister);

RegisterProc(TIdGopher,'GetExtendedMenu',mtScriptMethod,TypeInfo(_T4),[
TypeInfo(String),
TypeInfo(String),TypeInfo(TIdGopherMenu)],Addr(__TIdGopher__GetExtendedMenu__Wrapper),cRegister);

RegisterProc(TIdGopherMenu,'Create',mtConstructor,TypeInfo(_T5),NoParams,Addr(TIdGopherMenu.Create),cRegister);

RegRegisterMethod(TIdGopherMenu,'Add',TypeInfo(_T6),[TypeInfo(TIdGopherMenuItem)],Addr(TIdGopherMenu.Add));

//RegRegisterMethod(TIdGopherMenuItem,'DoneSettingInfoBlock',TypeInfo(_T7),NoParams, pointer(32));
RegRegisterMethod(TIdGopherMenuItem,'DoneSettingInfoBlock',TypeInfo(_T7),NoParams,  getVMTProcAddr('TIdGopherMenuItem','DoneSettingInfoBlock',32));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TIdGopherMenuEvent),[
TypeInfo(TObject),
TypeInfo(TIdGopherMenuItem)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
