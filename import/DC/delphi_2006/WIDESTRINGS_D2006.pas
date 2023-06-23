{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit WIDESTRINGS_D2006;
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
  WideStrings;
function ConvertTWideStringItemToVariant(var R : TWideStringItem) : OleVariant;
function ConvertVariantToTWideStringItem(const V : OleVariant) : TWideStringItem;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TWideStringItem__Wrapper = class(TDCRecordWrapper)
private
fR : TWideStringItem;
public
function GetRecordPtr : pointer; override;
published
procedure setFString(const val : WideString);
function getFString : WideString;
property FString : WideString read getFString write setFString;
procedure setFObject(const val : TObject);
function getFObject : TObject;
property FObject : TObject read getFObject write setFObject;
end;
type
_T0 = procedure  of object;

_T1 = _T0;

_T2 = procedure (p0 : Integer;
const p1 : WideString;
p2 : TObject) of object;

_T3 = function (const p0 : WideString;
var p1 : Integer): Boolean of object;

_T4 = _T0;

{_T5 = procedure (p0 : TWideStringListSortCompare) of object;}

_T6 = function (p0 : Integer): WideString of object;

_T7 = function : Integer of object;

_T8 = _T7;

_T9 = function (p0 : Integer): TObject of object;

_T10 = function : WideString of object;

_T11 = procedure (p0 : Integer;
const p1 : WideString) of object;

_T12 = procedure (p0 : Integer;
p1 : TObject) of object;

_T13 = procedure (p0 : Integer) of object;

_T14 = procedure (const p0 : WideString) of object;

_T15 = procedure (p0 : Boolean) of object;

_T16 = function (const p0 : WideString;
const p1 : WideString): Integer of object;

_T17 = function (const p0 : WideString): Integer of object;

_T18 = function (const p0 : WideString;
p1 : TObject): Integer of object;

_T19 = _T14;

_T20 = procedure (p0 : TStrings) of object;

_T21 = _T0;

_T22 = _T0;

_T23 = _T13;

_T24 = _T0;

_T25 = function (p0 : TWideStrings): Boolean of object;

_T26 = procedure (p0 : Integer;
p1 : Integer) of object;

_T27 = function : TWideStringsEnumerator of object;

_T28 = function : PWideChar of object;

_T29 = _T17;

_T30 = _T17;

_T31 = function (p0 : TObject): Integer of object;

_T32 = _T11;

_T33 = _T2;

_T34 = _T14;

_T35 = procedure (p0 : TStream) of object;

_T36 = _T26;

_T37 = _T14;

_T38 = _T35;

{_T39 = procedure (p0 : PWideChar) of object;}

_T40 = procedure (p0 : TWideStrings) of object;

_T41 = _T10;

_T42 = function : Boolean of object;

function __TWideStringItem__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TWideStringItem__Wrapper.setFString(const val : WideString);
begin
TWideStringItem(GetRecordPtr^).FString := val;
end;
function __TWideStringItem__Wrapper.getFString : WideString;
begin
result := TWideStringItem(GetRecordPtr^).FString;
end;
procedure __TWideStringItem__Wrapper.setFObject(const val : TObject);
begin
TWideStringItem(GetRecordPtr^).FObject := val;
end;
function __TWideStringItem__Wrapper.getFObject : TObject;
begin
result := TWideStringItem(GetRecordPtr^).FObject;
end;
function _TWideStringItem_ : IDispatch;
begin
  result := __TWideStringItem__Wrapper.Create;
end;

type __TWideStringItem__Wrapper__ = class(__TWideStringItem__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TWideStringItem__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTWideStringItemToVariant(var R : TWideStringItem) : OleVariant;
var
__rw : __TWideStringItem__Wrapper__;
begin
__rw := __TWideStringItem__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTWideStringItem(const V : OleVariant) : TWideStringItem;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TWideStringItem((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTWideStringList__Duplicates(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStringList(Instance).Duplicates;
end;

procedure __DC__SetTWideStringList__Duplicates(Instance : TObject; Params : PVariantArgList);
begin
TWideStringList(Instance).Duplicates:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStringList__Sorted(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStringList(Instance).Sorted;
end;

procedure __DC__SetTWideStringList__Sorted(Instance : TObject; Params : PVariantArgList);
begin
TWideStringList(Instance).Sorted:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStringList__CaseSensitive(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStringList(Instance).CaseSensitive;
end;

procedure __DC__SetTWideStringList__CaseSensitive(Instance : TObject; Params : PVariantArgList);
begin
TWideStringList(Instance).CaseSensitive:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__Capacity(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Capacity;
end;

procedure __DC__SetTWideStrings__Capacity(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).Capacity:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__CommaText(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).CommaText;
end;

procedure __DC__SetTWideStrings__CommaText(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).CommaText:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Count;
end;

function __DC__GetTWideStrings__Delimiter(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Delimiter;
end;

procedure __DC__SetTWideStrings__Delimiter(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).Delimiter:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__DelimitedText(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).DelimitedText;
end;

procedure __DC__SetTWideStrings__DelimitedText(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).DelimitedText:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__LineBreak(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).LineBreak;
end;

procedure __DC__SetTWideStrings__LineBreak(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).LineBreak:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__Names(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Names[OleVariant(Params^[0])];
end;

function __DC__GetTWideStrings__Objects(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TWideStrings(Instance).Objects[OleVariant(Params^[0])]);
end;

procedure __DC__SetTWideStrings__Objects(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).Objects[OleVariant(Params^[1])]:=TObject(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTWideStrings__QuoteChar(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).QuoteChar;
end;

procedure __DC__SetTWideStrings__QuoteChar(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).QuoteChar:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__Values(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Values[OleVariant(Params^[0])];
end;

procedure __DC__SetTWideStrings__Values(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).Values[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__ValueFromIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).ValueFromIndex[OleVariant(Params^[0])];
end;

procedure __DC__SetTWideStrings__ValueFromIndex(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).ValueFromIndex[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__NameValueSeparator(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).NameValueSeparator;
end;

procedure __DC__SetTWideStrings__NameValueSeparator(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).NameValueSeparator:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__StrictDelimiter(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).StrictDelimiter;
end;

procedure __DC__SetTWideStrings__StrictDelimiter(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).StrictDelimiter:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__Strings(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Strings[OleVariant(Params^[0])];
end;

procedure __DC__SetTWideStrings__Strings(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).Strings[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStrings__Text(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStrings(Instance).Text;
end;

procedure __DC__SetTWideStrings__Text(Instance : TObject; Params : PVariantArgList);
begin
TWideStrings(Instance).Text:=OleVariant(Params^[0]);
end;

function __DC__GetTWideStringsEnumerator__Current(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWideStringsEnumerator(Instance).Current;
end;

procedure __RegisterProps;
begin
RegisterProperty(TWideStringList,'Duplicates',__DC__GetTWideStringList__Duplicates,__DC__SetTWideStringList__Duplicates);
RegisterProperty(TWideStringList,'Sorted',__DC__GetTWideStringList__Sorted,__DC__SetTWideStringList__Sorted);
RegisterProperty(TWideStringList,'CaseSensitive',__DC__GetTWideStringList__CaseSensitive,__DC__SetTWideStringList__CaseSensitive);
RegisterProperty(TWideStrings,'Capacity',__DC__GetTWideStrings__Capacity,__DC__SetTWideStrings__Capacity);
RegisterProperty(TWideStrings,'CommaText',__DC__GetTWideStrings__CommaText,__DC__SetTWideStrings__CommaText);
RegisterProperty(TWideStrings,'Count',__DC__GetTWideStrings__Count,nil);
RegisterProperty(TWideStrings,'Delimiter',__DC__GetTWideStrings__Delimiter,__DC__SetTWideStrings__Delimiter);
RegisterProperty(TWideStrings,'DelimitedText',__DC__GetTWideStrings__DelimitedText,__DC__SetTWideStrings__DelimitedText);
RegisterProperty(TWideStrings,'LineBreak',__DC__GetTWideStrings__LineBreak,__DC__SetTWideStrings__LineBreak);
RegisterIndexedProperty(TWideStrings,'Names',1,False,__DC__GetTWideStrings__Names,nil);
RegisterIndexedProperty(TWideStrings,'Objects',1,False,__DC__GetTWideStrings__Objects,__DC__SetTWideStrings__Objects);
RegisterProperty(TWideStrings,'QuoteChar',__DC__GetTWideStrings__QuoteChar,__DC__SetTWideStrings__QuoteChar);
RegisterIndexedProperty(TWideStrings,'Values',1,False,__DC__GetTWideStrings__Values,__DC__SetTWideStrings__Values);
RegisterIndexedProperty(TWideStrings,'ValueFromIndex',1,False,__DC__GetTWideStrings__ValueFromIndex,__DC__SetTWideStrings__ValueFromIndex);
RegisterProperty(TWideStrings,'NameValueSeparator',__DC__GetTWideStrings__NameValueSeparator,__DC__SetTWideStrings__NameValueSeparator);
RegisterProperty(TWideStrings,'StrictDelimiter',__DC__GetTWideStrings__StrictDelimiter,__DC__SetTWideStrings__StrictDelimiter);
RegisterIndexedProperty(TWideStrings,'Strings',1,True,__DC__GetTWideStrings__Strings,__DC__SetTWideStrings__Strings);
RegisterProperty(TWideStrings,'Text',__DC__GetTWideStrings__Text,__DC__SetTWideStrings__Text);
RegisterProperty(TWideStringsEnumerator,'Current',__DC__GetTWideStringsEnumerator__Current,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
TWideStringList,
TWideStrings,
TWideStringsEnumerator
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
const MethodNames : array[0..0] of string = (
'TWideStringItem'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TWideStringItem_)));
//RegRegisterMethod(TWideStringList,'Changed',TypeInfo(_T0),NoParams, pointer(132));
RegRegisterMethod(TWideStringList,'Changed',TypeInfo(_T0),NoParams,  getVMTProcAddr('TWideStringList','Changed',132));


//RegRegisterMethod(TWideStringList,'Changing',TypeInfo(_T1),NoParams, pointer(136));
RegRegisterMethod(TWideStringList,'Changing',TypeInfo(_T1),NoParams,  getVMTProcAddr('TWideStringList','Changing',136));


//RegRegisterMethod(TWideStringList,'InsertItem',TypeInfo(_T2),[TypeInfo(Integer),TypeInfo(WideString),TypeInfo(TObject)], pointer(140));
RegRegisterMethod(TWideStringList,'InsertItem',TypeInfo(_T2),[TypeInfo(Integer),TypeInfo(WideString),TypeInfo(TObject)],  getVMTProcAddr('TWideStringList','InsertItem',140));


//RegRegisterMethod(TWideStringList,'Find',TypeInfo(_T3),[TypeInfo(WideString),TypeInfo(Integer),TypeInfo(Boolean)], pointer(144));
RegRegisterMethod(TWideStringList,'Find',TypeInfo(_T3),[TypeInfo(WideString),TypeInfo(Integer),TypeInfo(Boolean)],  getVMTProcAddr('TWideStringList','Find',144));


//RegRegisterMethod(TWideStringList,'Sort',TypeInfo(_T4),NoParams, pointer(148));
RegRegisterMethod(TWideStringList,'Sort',TypeInfo(_T4),NoParams,  getVMTProcAddr('TWideStringList','Sort',148));


//RegRegisterMethod(TWideStrings,'Get',TypeInfo(_T6),[TypeInfo(Integer),TypeInfo(WideString)], pointer(12));
RegRegisterMethod(TWideStrings,'Get',TypeInfo(_T6),[TypeInfo(Integer),TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','Get',12));


//RegRegisterMethod(TWideStrings,'GetCapacity',TypeInfo(_T7),[TypeInfo(Integer)], pointer(16));
RegRegisterMethod(TWideStrings,'GetCapacity',TypeInfo(_T7),[TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','GetCapacity',16));


//RegRegisterMethod(TWideStrings,'GetCount',TypeInfo(_T8),[TypeInfo(Integer)], pointer(20));
RegRegisterMethod(TWideStrings,'GetCount',TypeInfo(_T8),[TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','GetCount',20));


//RegRegisterMethod(TWideStrings,'GetObject',TypeInfo(_T9),[TypeInfo(Integer),TypeInfo(TObject)], pointer(24));
RegRegisterMethod(TWideStrings,'GetObject',TypeInfo(_T9),[TypeInfo(Integer),TypeInfo(TObject)],  getVMTProcAddr('TWideStrings','GetObject',24));


//RegRegisterMethod(TWideStrings,'GetTextStr',TypeInfo(_T10),[TypeInfo(WideString)], pointer(28));
RegRegisterMethod(TWideStrings,'GetTextStr',TypeInfo(_T10),[TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','GetTextStr',28));


//RegRegisterMethod(TWideStrings,'Put',TypeInfo(_T11),[TypeInfo(Integer),TypeInfo(WideString)], pointer(32));
RegRegisterMethod(TWideStrings,'Put',TypeInfo(_T11),[TypeInfo(Integer),TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','Put',32));


//RegRegisterMethod(TWideStrings,'PutObject',TypeInfo(_T12),[TypeInfo(Integer),TypeInfo(TObject)], pointer(36));
RegRegisterMethod(TWideStrings,'PutObject',TypeInfo(_T12),[TypeInfo(Integer),TypeInfo(TObject)],  getVMTProcAddr('TWideStrings','PutObject',36));


//RegRegisterMethod(TWideStrings,'SetCapacity',TypeInfo(_T13),[TypeInfo(Integer)], pointer(40));
RegRegisterMethod(TWideStrings,'SetCapacity',TypeInfo(_T13),[TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','SetCapacity',40));


//RegRegisterMethod(TWideStrings,'SetTextStr',TypeInfo(_T14),[TypeInfo(WideString)], pointer(44));
RegRegisterMethod(TWideStrings,'SetTextStr',TypeInfo(_T14),[TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','SetTextStr',44));


//RegRegisterMethod(TWideStrings,'SetUpdateState',TypeInfo(_T15),[TypeInfo(Boolean)], pointer(48));
RegRegisterMethod(TWideStrings,'SetUpdateState',TypeInfo(_T15),[TypeInfo(Boolean)],  getVMTProcAddr('TWideStrings','SetUpdateState',48));


//RegRegisterMethod(TWideStrings,'CompareStrings',TypeInfo(_T16),[TypeInfo(WideString),TypeInfo(WideString),TypeInfo(Integer)], pointer(52));
RegRegisterMethod(TWideStrings,'CompareStrings',TypeInfo(_T16),[TypeInfo(WideString),TypeInfo(WideString),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','CompareStrings',52));


//RegRegisterMethod(TWideStrings,'Add',TypeInfo(_T17),[TypeInfo(WideString),TypeInfo(Integer)], pointer(56));
RegRegisterMethod(TWideStrings,'Add',TypeInfo(_T17),[TypeInfo(WideString),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','Add',56));


//RegRegisterMethod(TWideStrings,'AddObject',TypeInfo(_T18),[TypeInfo(WideString),TypeInfo(TObject),TypeInfo(Integer)], pointer(60));
RegRegisterMethod(TWideStrings,'AddObject',TypeInfo(_T18),[TypeInfo(WideString),TypeInfo(TObject),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','AddObject',60));


RegRegisterMethod(TWideStrings,'Append',TypeInfo(_T19),[
TypeInfo(WideString)],Addr(TWideStrings.Append));

//RegRegisterMethod(TWideStrings,'AddStrings',TypeInfo(_T20),[TypeInfo(TStrings)], pointer(64));
RegRegisterMethod(TWideStrings,'AddStrings',TypeInfo(_T20),[TypeInfo(TStrings)],  getVMTProcAddr('TWideStrings','AddStrings',64));


RegRegisterMethod(TWideStrings,'BeginUpdate',TypeInfo(_T21),NoParams,Addr(TWideStrings.BeginUpdate));

//RegRegisterMethod(TWideStrings,'Clear',TypeInfo(_T22),NoParams, pointer(72));
RegRegisterMethod(TWideStrings,'Clear',TypeInfo(_T22),NoParams,  getVMTProcAddr('TWideStrings','Clear',72));


//RegRegisterMethod(TWideStrings,'Delete',TypeInfo(_T23),[TypeInfo(Integer)], pointer(76));
RegRegisterMethod(TWideStrings,'Delete',TypeInfo(_T23),[TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','Delete',76));


RegRegisterMethod(TWideStrings,'EndUpdate',TypeInfo(_T24),NoParams,Addr(TWideStrings.EndUpdate));

RegRegisterMethod(TWideStrings,'Equals',TypeInfo(_T25),[
TypeInfo(TWideStrings),TypeInfo(Boolean)],Addr(TWideStrings.Equals));

//RegRegisterMethod(TWideStrings,'Exchange',TypeInfo(_T26),[TypeInfo(Integer),TypeInfo(Integer)], pointer(80));
RegRegisterMethod(TWideStrings,'Exchange',TypeInfo(_T26),[TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','Exchange',80));


RegRegisterMethod(TWideStrings,'GetEnumerator',TypeInfo(_T27),[TypeInfo(TWideStringsEnumerator)],Addr(TWideStrings.GetEnumerator));

//RegRegisterMethod(TWideStrings,'GetText',TypeInfo(_T28),[TypeInfoPWideChar], pointer(84));
RegRegisterMethod(TWideStrings,'GetText',TypeInfo(_T28),[TypeInfoPWideChar],  getVMTProcAddr('TWideStrings','GetText',84));


//RegRegisterMethod(TWideStrings,'IndexOf',TypeInfo(_T29),[TypeInfo(WideString),TypeInfo(Integer)], pointer(88));
RegRegisterMethod(TWideStrings,'IndexOf',TypeInfo(_T29),[TypeInfo(WideString),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','IndexOf',88));


//RegRegisterMethod(TWideStrings,'IndexOfName',TypeInfo(_T30),[TypeInfo(WideString),TypeInfo(Integer)], pointer(92));
RegRegisterMethod(TWideStrings,'IndexOfName',TypeInfo(_T30),[TypeInfo(WideString),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','IndexOfName',92));


//RegRegisterMethod(TWideStrings,'IndexOfObject',TypeInfo(_T31),[TypeInfo(TObject),TypeInfo(Integer)], pointer(96));
RegRegisterMethod(TWideStrings,'IndexOfObject',TypeInfo(_T31),[TypeInfo(TObject),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','IndexOfObject',96));


//RegRegisterMethod(TWideStrings,'Insert',TypeInfo(_T32),[TypeInfo(Integer),TypeInfo(WideString)], pointer(100));
RegRegisterMethod(TWideStrings,'Insert',TypeInfo(_T32),[TypeInfo(Integer),TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','Insert',100));


//RegRegisterMethod(TWideStrings,'InsertObject',TypeInfo(_T33),[TypeInfo(Integer),TypeInfo(WideString),TypeInfo(TObject)], pointer(104));
RegRegisterMethod(TWideStrings,'InsertObject',TypeInfo(_T33),[TypeInfo(Integer),TypeInfo(WideString),TypeInfo(TObject)],  getVMTProcAddr('TWideStrings','InsertObject',104));


//RegRegisterMethod(TWideStrings,'LoadFromFile',TypeInfo(_T34),[TypeInfo(WideString)], pointer(108));
RegRegisterMethod(TWideStrings,'LoadFromFile',TypeInfo(_T34),[TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','LoadFromFile',108));


//RegRegisterMethod(TWideStrings,'LoadFromStream',TypeInfo(_T35),[TypeInfo(TStream)], pointer(112));
RegRegisterMethod(TWideStrings,'LoadFromStream',TypeInfo(_T35),[TypeInfo(TStream)],  getVMTProcAddr('TWideStrings','LoadFromStream',112));


//RegRegisterMethod(TWideStrings,'Move',TypeInfo(_T36),[TypeInfo(Integer),TypeInfo(Integer)], pointer(116));
RegRegisterMethod(TWideStrings,'Move',TypeInfo(_T36),[TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TWideStrings','Move',116));


//RegRegisterMethod(TWideStrings,'SaveToFile',TypeInfo(_T37),[TypeInfo(WideString)], pointer(120));
RegRegisterMethod(TWideStrings,'SaveToFile',TypeInfo(_T37),[TypeInfo(WideString)],  getVMTProcAddr('TWideStrings','SaveToFile',120));


//RegRegisterMethod(TWideStrings,'SaveToStream',TypeInfo(_T38),[TypeInfo(TStream)], pointer(124));
RegRegisterMethod(TWideStrings,'SaveToStream',TypeInfo(_T38),[TypeInfo(TStream)],  getVMTProcAddr('TWideStrings','SaveToStream',124));


RegisterProc(TWideStringsEnumerator,'Create',mtConstructor,TypeInfo(_T40),[
TypeInfo(TWideStrings)],Addr(TWideStringsEnumerator.Create),cRegister);

RegRegisterMethod(TWideStringsEnumerator,'GetCurrent',TypeInfo(_T41),[TypeInfo(WideString)],Addr(TWideStringsEnumerator.GetCurrent));

RegRegisterMethod(TWideStringsEnumerator,'MoveNext',TypeInfo(_T42),[TypeInfo(Boolean)],Addr(TWideStringsEnumerator.MoveNext));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TWideStringList,'CustomSort',TypeInfo(_T5),[
TypeInfo(TWideStringListSortCompare)], pointer(152))}

{RegRegisterMethod(TWideStrings,'SetText',TypeInfo(_T39),[
TypeInfoPWideChar], pointer(128))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
