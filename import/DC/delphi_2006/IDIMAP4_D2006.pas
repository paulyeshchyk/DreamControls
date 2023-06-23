{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDIMAP4_D2006;
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
  IdMessage,
  Classes,
  SysUtils,
  IdAssignedNumbers,
  IdGlobal,
  IdMailBox,
  IdTCPStream,
  IdMessageClient,
  IdComponent,
  IdMessageCoder,
  IdHeaderList,
  IdCoderHeader,
  IdCoderMIME,
  IdCoderQuotedPrintable,
  IdMessageCollection,
  IdIMAP4;
function ConvertTIdIMAP4SearchRecToVariant(var R : TIdIMAP4SearchRec) : OleVariant;
function ConvertVariantToTIdIMAP4SearchRec(const V : OleVariant) : TIdIMAP4SearchRec;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TIdIMAP4SearchRec__Wrapper = class(TDCRecordWrapper)
private
fR : TIdIMAP4SearchRec;
public
function GetRecordPtr : pointer; override;
published
procedure setSize(const val : Integer);
function getSize : Integer;
property Size : Integer read getSize write setSize;
procedure setText(const val : AnsiString);
function getText : AnsiString;
property Text : AnsiString read getText write setText;
procedure setSearchKey(const val : TIdIMAP4SearchKey);
function getSearchKey : TIdIMAP4SearchKey;
property SearchKey : TIdIMAP4SearchKey read getSearchKey write setSearchKey;
end;
type
_T0 = function (p0 : TStrings): Boolean of object;

_T1 = procedure (const p0 : string) of object;

_T2 = function (const p0 : string;
p1 : TIdMessage;
const p2 : TIdMessageFlagsSet): Boolean of object;

_T3 = function : Boolean of object;

_T4 = function (const p0 : Integer): Boolean of object;

_T5 = _T3;

_T6 = function (const p0 : string): Boolean of object;

_T7 = _T6;

_T8 = function (const p0 : Array of Integer): Boolean of object;

_T9 = function (const p0 : string;
p1 : TIdMailBox): Boolean of object;

_T10 = _T3;

_T11 = procedure  of object;

_T12 = function (p0 : TStringList;
p1 : TStringList): Boolean of object;

_T13 = function (p0 : TStringList): Boolean of object;

_T14 = _T13;

_T15 = function (const p0 : string;
const p1 : string): Boolean of object;

_T16 = function (const p0 : IDispatch): Boolean of object;

_T17 = _T6;

_T18 = _T9;

_T19 = function (const p0 : Array of Integer;
const p1 : TIdIMAP4StoreDataItem;
const p2 : TIdMessageFlagsSet): Boolean of object;

_T20 = _T6;

_T21 = function (const p0 : Integer;
const p1 : string): Boolean of object;

_T22 = function (const p0 : Array of Integer;
const p1 : string): Boolean of object;

_T23 = function (const p0 : Integer;
p1 : TIdMessage): Boolean of object;

_T24 = function (p0 : TIdMessageCollection): Boolean of object;

_T25 = _T24;

_T26 = _T24;

_T27 = _T23;

_T28 = function (const p0 : Integer;
p1 : TStringList): Boolean of object;

_T29 = function (const p0 : Integer;
var p1 : TIdMessageFlagsSet): Boolean of object;

_T30 = function (const p0 : Integer;
p1 : TIdMessage;
p2 : TIdImapMessageParts): Boolean of object;

_T31 = _T23;

_T34 = function (const p0 : Integer;
const p1 : Integer;
p2 : Integer;
p3 : string;
p4 : string): Boolean of object;

_T35 = _T34;

_T36 = function (const p0 : Integer;
var p1 : string): Boolean of object;

_T37 = _T36;

_T38 = _T36;

_T39 = _T36;

_T40 = _T23;

_T41 = function : Integer of object;

_T42 = function (const p0 : Integer): Integer of object;

_T43 = _T23;

_T44 = _T36;

_T45 = _T15;

_T46 = function (const p0 : TStringList;
const p1 : string): Boolean of object;

_T47 = _T6;

_T48 = _T6;

_T49 = _T24;

_T50 = function (const p0 : string;
p1 : TIdMessage): Boolean of object;

_T51 = _T50;

_T52 = function (const p0 : string;
p1 : TStringList): Boolean of object;

_T53 = function (const p0 : string;
var p1 : TIdMessageFlagsSet): Boolean of object;

_T54 = function (const p0 : string;
p1 : TIdMessage;
p2 : TIdImapMessageParts): Boolean of object;

_T55 = _T50;

_T58 = function (const p0 : string;
const p1 : Integer;
p2 : Integer;
p3 : string;
p4 : string): Boolean of object;

_T59 = _T58;

_T60 = function (const p0 : string;
var p1 : string): Boolean of object;

_T61 = _T60;

_T62 = _T60;

_T63 = _T60;

_T64 = _T50;

_T65 = _T41;

_T66 = function (const p0 : string): Integer of object;

_T67 = _T50;

_T68 = _T16;

_T69 = function (const p0 : string;
const p1 : TIdIMAP4StoreDataItem;
const p2 : TIdMessageFlagsSet): Boolean of object;

_T70 = _T6;

_T71 = _T1;

_T72 = function (const p0 : string;
const p1 : Array of SmallInt): SmallInt of object;

_T73 = _T72;

_T74 = _T1;

_T75 = _T11;

_T76 = function (const p0 : string;
const p1 : string;
const p2 : SmallInt): SmallInt of object;

_T77 = function : string of object;

_T78 = procedure (p0 : string) of object;

_T79 = function : TIdImapMessagePart of object;

_T80 = _T11;

function __TIdIMAP4SearchRec__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TIdIMAP4SearchRec__Wrapper.setSize(const val : Integer);
begin
TIdIMAP4SearchRec(GetRecordPtr^).Size := val;
end;
function __TIdIMAP4SearchRec__Wrapper.getSize : Integer;
begin
result := TIdIMAP4SearchRec(GetRecordPtr^).Size;
end;
procedure __TIdIMAP4SearchRec__Wrapper.setText(const val : AnsiString);
begin
TIdIMAP4SearchRec(GetRecordPtr^).Text := val;
end;
function __TIdIMAP4SearchRec__Wrapper.getText : AnsiString;
begin
result := TIdIMAP4SearchRec(GetRecordPtr^).Text;
end;
procedure __TIdIMAP4SearchRec__Wrapper.setSearchKey(const val : TIdIMAP4SearchKey);
begin
TIdIMAP4SearchRec(GetRecordPtr^).SearchKey := val;
end;
function __TIdIMAP4SearchRec__Wrapper.getSearchKey : TIdIMAP4SearchKey;
begin
result := TIdIMAP4SearchRec(GetRecordPtr^).SearchKey;
end;
function _TIdIMAP4SearchRec_ : IDispatch;
begin
  result := __TIdIMAP4SearchRec__Wrapper.Create;
end;
function __TIdIMAP4__AppendMsg__Wrapper(__Instance : TIdIMAP4;
const p0 : string;
p1 : TIdMessage;
const p2 : TIdMessageFlagsSet): Boolean;
begin
result := TIdIMAP4(__Instance).AppendMsg(p0,p1,p2);
end;

function __TIdIMAP4__SearchMailBox__Wrapper(__Instance : TIdIMAP4;
const p0 : IDispatch): Boolean;
var
__p0 : ^TIdIMAP4SearchRec;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TIdIMAP4(__Instance).SearchMailBox(__p0^);
end;

function __TIdIMAP4__UIDSearchMailBox__Wrapper(__Instance : TIdIMAP4;
const p0 : IDispatch): Boolean;
var
__p0 : ^TIdIMAP4SearchRec;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TIdIMAP4(__Instance).UIDSearchMailBox(__p0^);
end;

function __TIdIMAP4__SendCmd__Wrapper(__Instance : TIdIMAP4;
const p0 : string;
const p1 : string;
const p2 : SmallInt): SmallInt;
begin
result := TIdIMAP4(__Instance).SendCmd(p0,p1,p2);
end;


type __TIdIMAP4SearchRec__Wrapper__ = class(__TIdIMAP4SearchRec__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TIdIMAP4SearchRec__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTIdIMAP4SearchRecToVariant(var R : TIdIMAP4SearchRec) : OleVariant;
var
__rw : __TIdIMAP4SearchRec__Wrapper__;
begin
__rw := __TIdIMAP4SearchRec__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTIdIMAP4SearchRec(const V : OleVariant) : TIdIMAP4SearchRec;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TIdIMAP4SearchRec((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTIdIMAP4__ConnectionState(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdIMAP4(Instance).ConnectionState;
end;

function __DC__GetTIdIMAP4__MailBox(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdIMAP4(Instance).MailBox);
end;

procedure __DC__SetTIdIMAP4__MailBox(Instance : TObject; Params : PVariantArgList);
begin
TIdIMAP4(Instance).MailBox:=TIdMailBox(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdImapMessagePart__BodyType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).BodyType;
end;

procedure __DC__SetTIdImapMessagePart__BodyType(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).BodyType:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__BodySubType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).BodySubType;
end;

procedure __DC__SetTIdImapMessagePart__BodySubType(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).BodySubType:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__FileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).FileName;
end;

procedure __DC__SetTIdImapMessagePart__FileName(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).FileName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__Description(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).Description;
end;

procedure __DC__SetTIdImapMessagePart__Description(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).Description:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__Encoding(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).Encoding;
end;

procedure __DC__SetTIdImapMessagePart__Encoding(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).Encoding:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__Size(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).Size;
end;

procedure __DC__SetTIdImapMessagePart__Size(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).Size:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__UnparsedEntry(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).UnparsedEntry;
end;

procedure __DC__SetTIdImapMessagePart__UnparsedEntry(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).UnparsedEntry:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__Boundary(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapMessagePart(Instance).Boundary;
end;

procedure __DC__SetTIdImapMessagePart__Boundary(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).Boundary:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapMessagePart__SubSection(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdImapMessagePart(Instance).SubSection);
end;

procedure __DC__SetTIdImapMessagePart__SubSection(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessagePart(Instance).SubSection:=TIdImapSubSection(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdImapMessageParts__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdImapMessageParts(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdImapMessageParts__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdImapMessageParts(Instance).Items[OleVariant(Params^[1])]:=TIdImapMessagePart(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdImapSubSection__BodyType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapSubSection(Instance).BodyType;
end;

procedure __DC__SetTIdImapSubSection__BodyType(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).BodyType:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapSubSection__BodySubType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapSubSection(Instance).BodySubType;
end;

procedure __DC__SetTIdImapSubSection__BodySubType(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).BodySubType:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapSubSection__FileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapSubSection(Instance).FileName;
end;

procedure __DC__SetTIdImapSubSection__FileName(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).FileName:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapSubSection__Description(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapSubSection(Instance).Description;
end;

procedure __DC__SetTIdImapSubSection__Description(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).Description:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapSubSection__Encoding(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapSubSection(Instance).Encoding;
end;

procedure __DC__SetTIdImapSubSection__Encoding(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).Encoding:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapSubSection__Size(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdImapSubSection(Instance).Size;
end;

procedure __DC__SetTIdImapSubSection__Size(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).Size:=OleVariant(Params^[0]);
end;

function __DC__GetTIdImapSubSection__SubSection(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdImapSubSection(Instance).SubSection);
end;

procedure __DC__SetTIdImapSubSection__SubSection(Instance : TObject; Params : PVariantArgList);
begin
TIdImapSubSection(Instance).SubSection:=TIdImapSubSection(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdIMAP4,'ConnectionState',__DC__GetTIdIMAP4__ConnectionState,nil);
RegisterProperty(TIdIMAP4,'MailBox',__DC__GetTIdIMAP4__MailBox,__DC__SetTIdIMAP4__MailBox);
RegisterProperty(TIdImapMessagePart,'BodyType',__DC__GetTIdImapMessagePart__BodyType,__DC__SetTIdImapMessagePart__BodyType);
RegisterProperty(TIdImapMessagePart,'BodySubType',__DC__GetTIdImapMessagePart__BodySubType,__DC__SetTIdImapMessagePart__BodySubType);
RegisterProperty(TIdImapMessagePart,'FileName',__DC__GetTIdImapMessagePart__FileName,__DC__SetTIdImapMessagePart__FileName);
RegisterProperty(TIdImapMessagePart,'Description',__DC__GetTIdImapMessagePart__Description,__DC__SetTIdImapMessagePart__Description);
RegisterProperty(TIdImapMessagePart,'Encoding',__DC__GetTIdImapMessagePart__Encoding,__DC__SetTIdImapMessagePart__Encoding);
RegisterProperty(TIdImapMessagePart,'Size',__DC__GetTIdImapMessagePart__Size,__DC__SetTIdImapMessagePart__Size);
RegisterProperty(TIdImapMessagePart,'UnparsedEntry',__DC__GetTIdImapMessagePart__UnparsedEntry,__DC__SetTIdImapMessagePart__UnparsedEntry);
RegisterProperty(TIdImapMessagePart,'Boundary',__DC__GetTIdImapMessagePart__Boundary,__DC__SetTIdImapMessagePart__Boundary);
RegisterProperty(TIdImapMessagePart,'SubSection',__DC__GetTIdImapMessagePart__SubSection,__DC__SetTIdImapMessagePart__SubSection);
RegisterIndexedProperty(TIdImapMessageParts,'Items',1,True,__DC__GetTIdImapMessageParts__Items,__DC__SetTIdImapMessageParts__Items);
RegisterProperty(TIdImapSubSection,'BodyType',__DC__GetTIdImapSubSection__BodyType,__DC__SetTIdImapSubSection__BodyType);
RegisterProperty(TIdImapSubSection,'BodySubType',__DC__GetTIdImapSubSection__BodySubType,__DC__SetTIdImapSubSection__BodySubType);
RegisterProperty(TIdImapSubSection,'FileName',__DC__GetTIdImapSubSection__FileName,__DC__SetTIdImapSubSection__FileName);
RegisterProperty(TIdImapSubSection,'Description',__DC__GetTIdImapSubSection__Description,__DC__SetTIdImapSubSection__Description);
RegisterProperty(TIdImapSubSection,'Encoding',__DC__GetTIdImapSubSection__Encoding,__DC__SetTIdImapSubSection__Encoding);
RegisterProperty(TIdImapSubSection,'Size',__DC__GetTIdImapSubSection__Size,__DC__SetTIdImapSubSection__Size);
RegisterProperty(TIdImapSubSection,'SubSection',__DC__GetTIdImapSubSection__SubSection,__DC__SetTIdImapSubSection__SubSection);
end;

const __ConstNames0 : array[0..84] of string = (
'wsOk'
,'wsNo'
,'wsBad'
,'wsPreAuth'
,'wsBye'
,'wsContinue'
,'cmdCAPABILITY'
,'cmdNOOP'
,'cmdLOGOUT'
,'cmdAUTHENTICATE'
,'cmdLOGIN'
,'cmdSELECT'
,'cmdEXAMINE'
,'cmdCREATE'
,'cmdDELETE'
,'cmdRENAME'
,'cmdSUBSCRIBE'
,'cmdUNSUBSCRIBE'
,'cmdLIST'
,'cmdLSUB'
,'cmdSTATUS'
,'cmdAPPEND'
,'cmdCHECK'
,'cmdCLOSE'
,'cmdEXPUNGE'
,'cmdSEARCH'
,'cmdFETCH'
,'cmdSTORE'
,'cmdCOPY'
,'cmdUID'
,'cmdXCmd'
,'csAny'
,'csNonAuthenticated'
,'csAuthenticated'
,'csSelected'
,'csUnexpectedlyDisconnected'
,'skAll'
,'skAnswered'
,'skBcc'
,'skBefore'
,'skBody'
,'skCc'
,'skDeleted'
,'skDraft'
,'skFlagged'
,'skFrom'
,'skHeader'
,'skKeyword'
,'skLarger'
,'skNew'
,'skNot'
,'skOld'
,'skOn'
,'skOr'
,'skRecent'
,'skSeen'
,'skSentBefore'
,'skSentOn'
,'skSentSince'
,'skSince'
,'skSmaller'
,'skSubject'
,'skText'
,'skTo'
,'skUID'
,'skUnanswered'
,'skUndeleted'
,'skUndraft'
,'skUnflagged'
,'skUnKeyWord'
,'skUnseen'
,'mdMessages'
,'mdRecent'
,'mdUIDNext'
,'mdUIDValidity'
,'mdUnseen'
,'sdReplace'
,'sdReplaceSilent'
,'sdAdd'
,'sdAddSilent'
,'sdRemove'
,'sdRemoveSilent'
,'rsDisabled'
,'rsHeaders'
,'rsMessages'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,wsOk));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,wsNo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,wsBad));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,wsPreAuth));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,wsBye));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,wsContinue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,cmdCAPABILITY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,cmdNOOP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,cmdLOGOUT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,cmdAUTHENTICATE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,cmdLOGIN));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,cmdSELECT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,cmdEXAMINE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,cmdCREATE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,cmdDELETE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,cmdRENAME));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,cmdSUBSCRIBE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,cmdUNSUBSCRIBE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,cmdLIST));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,cmdLSUB));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,cmdSTATUS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,cmdAPPEND));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,cmdCHECK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,cmdCLOSE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,cmdEXPUNGE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,cmdSEARCH));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,cmdFETCH));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,cmdSTORE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,cmdCOPY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,cmdUID));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,cmdXCmd));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,csAny));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,csNonAuthenticated));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,csAuthenticated));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,csSelected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,csUnexpectedlyDisconnected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,skAll));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,skAnswered));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,skBcc));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,skBefore));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,skBody));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,skCc));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,skDeleted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,skDraft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,skFlagged));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,skFrom));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,skHeader));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,skKeyword));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,skLarger));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,skNew));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,skNot));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,skOld));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,skOn));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,skOr));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,skRecent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,skSeen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,skSentBefore));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,skSentOn));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,skSentSince));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[59] ,skSince));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[60] ,skSmaller));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[61] ,skSubject));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[62] ,skText));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[63] ,skTo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[64] ,skUID));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[65] ,skUnanswered));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[66] ,skUndeleted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[67] ,skUndraft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[68] ,skUnflagged));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[69] ,skUnKeyWord));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[70] ,skUnseen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[71] ,mdMessages));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[72] ,mdRecent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[73] ,mdUIDNext));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[74] ,mdUIDValidity));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[75] ,mdUnseen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[76] ,sdReplace));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[77] ,sdReplaceSilent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[78] ,sdAdd));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[79] ,sdAddSilent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[80] ,sdRemove));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[81] ,sdRemoveSilent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[82] ,rsDisabled));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[83] ,rsHeaders));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[84] ,rsMessages));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..4] of TClass = (
EIdNumberInvalid,
TIdIMAP4,
TIdImapMessagePart,
TIdImapMessageParts,
TIdImapSubSection
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..0] of string = (
'TIdIMAP4SearchRec'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TIdIMAP4SearchRec_)));
RegRegisterMethod(TIdIMAP4,'Capability',TypeInfo(_T0),[
TypeInfo(TStrings),TypeInfo(Boolean)],Addr(TIdIMAP4.Capability));

RegRegisterMethod(TIdIMAP4,'DoAlert',TypeInfo(_T1),[
TypeInfo(string)],Addr(TIdIMAP4.DoAlert));

RegRegisterMethod(TIdIMAP4,'AppendMsg',TypeInfo(_T2),[
TypeInfo(string),
TypeInfo(TIdMessage),
TypeInfo(TIdMessageFlagsSet),TypeInfo(Boolean)],Addr(__TIdIMAP4__AppendMsg__Wrapper));

RegRegisterMethod(TIdIMAP4,'CheckMailBox',TypeInfo(_T3),[TypeInfo(Boolean)],Addr(TIdIMAP4.CheckMailBox));

RegRegisterMethod(TIdIMAP4,'CheckMsgSeen',TypeInfo(_T4),[
TypeInfo(Integer),TypeInfo(Boolean)],Addr(TIdIMAP4.CheckMsgSeen));

RegRegisterMethod(TIdIMAP4,'CloseMailBox',TypeInfo(_T5),[TypeInfo(Boolean)],Addr(TIdIMAP4.CloseMailBox));

RegRegisterMethod(TIdIMAP4,'CreateMailBox',TypeInfo(_T6),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.CreateMailBox));

RegRegisterMethod(TIdIMAP4,'DeleteMailBox',TypeInfo(_T7),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.DeleteMailBox));

RegRegisterMethod(TIdIMAP4,'DeleteMsgs',TypeInfo(_T8),[
ArrayInfo(TypeInfo(Integer)),TypeInfo(Boolean)],Addr(TIdIMAP4.DeleteMsgs));

RegRegisterMethod(TIdIMAP4,'ExamineMailBox',TypeInfo(_T9),[
TypeInfo(string),
TypeInfo(TIdMailBox),TypeInfo(Boolean)],Addr(TIdIMAP4.ExamineMailBox));

RegRegisterMethod(TIdIMAP4,'ExpungeMailBox',TypeInfo(_T10),[TypeInfo(Boolean)],Addr(TIdIMAP4.ExpungeMailBox));

RegRegisterMethod(TIdIMAP4,'KeepAlive',TypeInfo(_T11),NoParams,Addr(TIdIMAP4.KeepAlive));

RegRegisterMethod(TIdIMAP4,'ListInferiorMailBoxes',TypeInfo(_T12),[
TypeInfo(TStringList),
TypeInfo(TStringList),TypeInfo(Boolean)],Addr(TIdIMAP4.ListInferiorMailBoxes));

RegRegisterMethod(TIdIMAP4,'ListMailBoxes',TypeInfo(_T13),[
TypeInfo(TStringList),TypeInfo(Boolean)],Addr(TIdIMAP4.ListMailBoxes));

RegRegisterMethod(TIdIMAP4,'ListSubscribedMailBoxes',TypeInfo(_T14),[
TypeInfo(TStringList),TypeInfo(Boolean)],Addr(TIdIMAP4.ListSubscribedMailBoxes));

RegRegisterMethod(TIdIMAP4,'RenameMailBox',TypeInfo(_T15),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RenameMailBox));

RegRegisterMethod(TIdIMAP4,'SearchMailBox',TypeInfo(_T16),[
ArrayInfo(TypeInfo(IDispatch)),TypeInfo(Boolean)],Addr(__TIdIMAP4__SearchMailBox__Wrapper));

RegRegisterMethod(TIdIMAP4,'SelectMailBox',TypeInfo(_T17),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.SelectMailBox));

RegRegisterMethod(TIdIMAP4,'StatusMailBox',TypeInfo(_T18),[
TypeInfo(string),
TypeInfo(TIdMailBox),TypeInfo(Boolean)],Addr(TIdIMAP4.StatusMailBox));

RegRegisterMethod(TIdIMAP4,'StoreFlags',TypeInfo(_T19),[
ArrayInfo(TypeInfo(Integer)),
TypeInfo(TIdIMAP4StoreDataItem),
TypeInfo(TIdMessageFlagsSet),TypeInfo(Boolean)],Addr(TIdIMAP4.StoreFlags));

RegRegisterMethod(TIdIMAP4,'SubscribeMailBox',TypeInfo(_T20),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.SubscribeMailBox));

RegRegisterMethod(TIdIMAP4,'CopyMsg',TypeInfo(_T21),[
TypeInfo(Integer),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.CopyMsg));

RegRegisterMethod(TIdIMAP4,'CopyMsgs',TypeInfo(_T22),[
ArrayInfo(TypeInfo(Integer)),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.CopyMsgs));

RegRegisterMethod(TIdIMAP4,'Retrieve',TypeInfo(_T23),[
TypeInfo(Integer),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.Retrieve));

RegRegisterMethod(TIdIMAP4,'RetrieveAllEnvelopes',TypeInfo(_T24),[
TypeInfo(TIdMessageCollection),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveAllEnvelopes));

RegRegisterMethod(TIdIMAP4,'RetrieveAllHeaders',TypeInfo(_T25),[
TypeInfo(TIdMessageCollection),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveAllHeaders));

RegRegisterMethod(TIdIMAP4,'RetrieveAllMsgs',TypeInfo(_T26),[
TypeInfo(TIdMessageCollection),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveAllMsgs));

RegRegisterMethod(TIdIMAP4,'RetrieveEnvelope',TypeInfo(_T27),[
TypeInfo(Integer),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveEnvelope));

RegRegisterMethod(TIdIMAP4,'RetrieveEnvelopeRaw',TypeInfo(_T28),[
TypeInfo(Integer),
TypeInfo(TStringList),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveEnvelopeRaw));

RegRegisterMethod(TIdIMAP4,'RetrieveFlags',TypeInfo(_T29),[
TypeInfo(Integer),
TypeInfo(TIdMessageFlagsSet),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveFlags));

RegRegisterMethod(TIdIMAP4,'InternalRetrieveStructure',TypeInfo(_T30),[
TypeInfo(Integer),
TypeInfo(TIdMessage),
TypeInfo(TIdImapMessageParts),TypeInfo(Boolean)],Addr(TIdIMAP4.InternalRetrieveStructure));

RegRegisterMethod(TIdIMAP4,'RetrieveStructure',TypeInfo(_T31),[
TypeInfo(Integer),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveStructure));

RegRegisterMethod(TIdIMAP4,'RetrievePartToFile',TypeInfo(_T34),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrievePartToFile));

RegRegisterMethod(TIdIMAP4,'RetrievePartToFilePeek',TypeInfo(_T35),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrievePartToFilePeek));

RegRegisterMethod(TIdIMAP4,'RetrieveText',TypeInfo(_T36),[
TypeInfo(Integer),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveText));

RegRegisterMethod(TIdIMAP4,'RetrieveText2',TypeInfo(_T37),[
TypeInfo(Integer),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveText2));

RegRegisterMethod(TIdIMAP4,'RetrieveTextPeek',TypeInfo(_T38),[
TypeInfo(Integer),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveTextPeek));

RegRegisterMethod(TIdIMAP4,'RetrieveTextPeek2',TypeInfo(_T39),[
TypeInfo(Integer),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveTextPeek2));

RegRegisterMethod(TIdIMAP4,'RetrieveHeader',TypeInfo(_T40),[
TypeInfo(Integer),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrieveHeader));

RegRegisterMethod(TIdIMAP4,'RetrieveMailBoxSize',TypeInfo(_T41),[TypeInfo(Integer)],Addr(TIdIMAP4.RetrieveMailBoxSize));

RegRegisterMethod(TIdIMAP4,'RetrieveMsgSize',TypeInfo(_T42),[
TypeInfo(Integer),TypeInfo(Integer)],Addr(TIdIMAP4.RetrieveMsgSize));

RegRegisterMethod(TIdIMAP4,'RetrievePeek',TypeInfo(_T43),[
TypeInfo(Integer),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.RetrievePeek));

RegRegisterMethod(TIdIMAP4,'GetUID',TypeInfo(_T44),[
TypeInfo(Integer),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.GetUID));

RegRegisterMethod(TIdIMAP4,'UIDCopyMsg',TypeInfo(_T45),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDCopyMsg));

RegRegisterMethod(TIdIMAP4,'UIDCopyMsgs',TypeInfo(_T46),[
TypeInfo(TStringList),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDCopyMsgs));

RegRegisterMethod(TIdIMAP4,'UIDCheckMsgSeen',TypeInfo(_T47),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDCheckMsgSeen));

RegRegisterMethod(TIdIMAP4,'UIDDeleteMsg',TypeInfo(_T48),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDDeleteMsg));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveAllEnvelopes',TypeInfo(_T49),[
TypeInfo(TIdMessageCollection),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveAllEnvelopes));

RegRegisterMethod(TIdIMAP4,'UIDRetrieve',TypeInfo(_T50),[
TypeInfo(string),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieve));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveEnvelope',TypeInfo(_T51),[
TypeInfo(string),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveEnvelope));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveEnvelopeRaw',TypeInfo(_T52),[
TypeInfo(string),
TypeInfo(TStringList),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveEnvelopeRaw));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveFlags',TypeInfo(_T53),[
TypeInfo(string),
TypeInfo(TIdMessageFlagsSet),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveFlags));

RegRegisterMethod(TIdIMAP4,'UIDInternalRetrieveStructure',TypeInfo(_T54),[
TypeInfo(string),
TypeInfo(TIdMessage),
TypeInfo(TIdImapMessageParts),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDInternalRetrieveStructure));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveStructure',TypeInfo(_T55),[
TypeInfo(string),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveStructure));

RegRegisterMethod(TIdIMAP4,'UIDRetrievePartToFile',TypeInfo(_T58),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrievePartToFile));

RegRegisterMethod(TIdIMAP4,'UIDRetrievePartToFilePeek',TypeInfo(_T59),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrievePartToFilePeek));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveText',TypeInfo(_T60),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveText));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveText2',TypeInfo(_T61),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveText2));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveTextPeek',TypeInfo(_T62),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveTextPeek));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveTextPeek2',TypeInfo(_T63),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveTextPeek2));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveHeader',TypeInfo(_T64),[
TypeInfo(string),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrieveHeader));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveMailBoxSize',TypeInfo(_T65),[TypeInfo(Integer)],Addr(TIdIMAP4.UIDRetrieveMailBoxSize));

RegRegisterMethod(TIdIMAP4,'UIDRetrieveMsgSize',TypeInfo(_T66),[
TypeInfo(string),TypeInfo(Integer)],Addr(TIdIMAP4.UIDRetrieveMsgSize));

RegRegisterMethod(TIdIMAP4,'UIDRetrievePeek',TypeInfo(_T67),[
TypeInfo(string),
TypeInfo(TIdMessage),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDRetrievePeek));

RegRegisterMethod(TIdIMAP4,'UIDSearchMailBox',TypeInfo(_T68),[
ArrayInfo(TypeInfo(IDispatch)),TypeInfo(Boolean)],Addr(__TIdIMAP4__UIDSearchMailBox__Wrapper));

RegRegisterMethod(TIdIMAP4,'UIDStoreFlags',TypeInfo(_T69),[
TypeInfo(string),
TypeInfo(TIdIMAP4StoreDataItem),
TypeInfo(TIdMessageFlagsSet),TypeInfo(Boolean)],Addr(TIdIMAP4.UIDStoreFlags));

RegRegisterMethod(TIdIMAP4,'UnsubscribeMailBox',TypeInfo(_T70),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdIMAP4.UnsubscribeMailBox));

RegRegisterMethod(TIdIMAP4,'GetInternalResponse',TypeInfo(_T71),[
TypeInfo(string)],Addr(TIdIMAP4.GetInternalResponse));

RegRegisterMethod(TIdIMAP4,'GetResponse',TypeInfo(_T72),[
TypeInfo(string),
ArrayInfo(TypeInfo(SmallInt)),TypeInfo(SmallInt)],Addr(TIdIMAP4.GetResponse));

RegRegisterMethod(TIdIMAP4,'GetLineResponse',TypeInfo(_T73),[
TypeInfo(string),
ArrayInfo(TypeInfo(SmallInt)),TypeInfo(SmallInt)],Addr(TIdIMAP4.GetLineResponse));

RegRegisterMethod(TIdIMAP4,'GetInternalLineResponse',TypeInfo(_T74),[
TypeInfo(string)],Addr(TIdIMAP4.GetInternalLineResponse));

RegRegisterMethod(TIdIMAP4,'RemoveAnyAdditionalResponses',TypeInfo(_T75),NoParams,Addr(TIdIMAP4.RemoveAnyAdditionalResponses));

RegRegisterMethod(TIdIMAP4,'SendCmd',TypeInfo(_T76),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(SmallInt),TypeInfo(SmallInt)],Addr(__TIdIMAP4__SendCmd__Wrapper));

RegRegisterMethod(TIdIMAP4,'ReadLnWait',TypeInfo(_T77),[TypeInfo(string)],Addr(TIdIMAP4.ReadLnWait));

RegRegisterMethod(TIdIMAP4,'WriteLn',TypeInfo(_T78),[
TypeInfo(string)],Addr(TIdIMAP4.WriteLn));

RegRegisterMethod(TIdImapMessageParts,'Add',TypeInfo(_T79),[TypeInfo(TIdImapMessagePart)],Addr(TIdImapMessageParts.Add));

RegisterProc(TIdImapSubSection,'Create',mtConstructor,TypeInfo(_T80),NoParams,Addr(TIdImapSubSection.Create),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
RegisterEvent(TypeInfo(TIdAlertEvent),[
TypeInfo(TObject),
TypeInfo(string)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
