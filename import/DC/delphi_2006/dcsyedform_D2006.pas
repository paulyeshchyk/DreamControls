{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcsyedform_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  Types,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  Messages,
  Graphics,
  dcSyntax,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  DCColorCombo,
  ExtCtrls,
  CheckLst,
  ComCtrls,
  Controls,
  Classes,
  dcSyEdForm;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TRect__Wrapper = class(TDCRecordWrapper)
private
fR : TRect;
public
function GetRecordPtr : pointer; override;
published
procedure setLeft(const val : Longint);
function getLeft : Longint;
property Left : Longint read getLeft write setLeft;
procedure setTop(const val : Longint);
function getTop : Longint;
property Top : Longint read getTop write setTop;
procedure setRight(const val : Longint);
function getRight : Longint;
property Right : Longint read getRight write setRight;
procedure setBottom(const val : Longint);
function getBottom : Longint;
property Bottom : Longint read getBottom write setBottom;
end;
type
_T0 = function (p0 : TSyntaxScheme): Boolean of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = _T1;

_T4 = _T1;

_T5 = _T1;

_T6 = _T1;

_T7 = _T1;

_T8 = _T1;

_T9 = _T1;

_T10 = _T1;

_T11 = _T1;

_T12 = _T1;

_T13 = _T1;

_T14 = _T1;

_T15 = _T1;

_T16 = _T1;

_T17 = _T1;

_T18 = _T1;

_T19 = _T1;

_T20 = _T1;

_T21 = _T1;

_T22 = _T1;

_T23 = procedure (p0 : TObject;
var p1 : Word;
p2 : TShiftState) of object;

_T24 = _T23;

_T25 = _T23;

_T26 = _T23;

_T27 = _T1;

_T28 = _T23;

_T29 = _T23;

_T30 = _T1;

_T31 = _T1;

_T32 = _T1;

_T33 = _T1;

_T34 = _T1;

_T35 = _T1;

_T36 = _T1;

_T37 = _T1;

_T38 = _T1;

_T39 = _T1;

_T40 = _T1;

_T41 = _T1;

_T42 = _T1;

_T43 = _T1;

_T44 = _T1;

_T45 = _T1;

_T46 = _T1;

_T47 = _T1;

_T48 = _T1;

_T49 = _T1;

_T50 = _T1;

_T51 = _T1;

_T52 = _T1;

_T53 = _T1;

_T54 = _T1;

_T55 = _T1;

_T56 = _T1;

_T57 = _T1;

_T58 = _T1;

_T59 = _T1;

_T60 = procedure (p0 : TWinControl;
p1 : Integer;
var p2 : Integer) of object;

_T61 = procedure (p0 : TWinControl;
p1 : Integer;
const p2 : IDispatch;
p3 : TOwnerDrawState) of object;

_T62 = _T1;

_T63 = _T1;

_T64 = _T23;

_T65 = _T1;

_T66 = _T1;

_T67 = _T1;

_T68 = _T1;

_T69 = _T1;

_T70 = _T1;

_T71 = _T1;

_T72 = _T1;

_T73 = _T1;

_T74 = _T1;

_T75 = _T1;

_T76 = _T1;

_T77 = _T1;

_T78 = _T1;

_T79 = _T1;

_T80 = _T1;

_T81 = _T1;

_T82 = _T1;

_T83 = _T1;

_T84 = _T23;

_T85 = _T1;

_T86 = _T1;

_T87 = _T1;

_T88 = _T1;

_T89 = _T1;

_T90 = _T1;

_T91 = procedure (p0 : TObject;
p1 : TObject;
p2 : Integer;
p3 : Integer;
p4 : TDragState;
var p5 : Boolean) of object;

_T92 = procedure (p0 : TObject;
p1 : TObject;
p2 : Integer;
p3 : Integer) of object;

_T93 = _T1;

_T94 = _T1;

_T95 = _T1;

_T96 = _T23;

_T97 = _T1;

_T98 = _T1;

_T99 = _T1;

_T100 = _T1;

_T101 = _T1;

_T102 = _T1;

_T103 = _T1;

_T104 = _T23;

_T105 = _T1;

_T106 = _T1;

_T107 = _T1;

_T108 = _T1;

_T109 = _T1;

_T110 = _T1;

_T111 = _T1;

_T112 = _T1;

_T113 = _T1;

_T114 = _T1;

_T115 = _T1;

_T116 = _T1;

_T117 = _T1;

_T118 = _T1;

_T119 = _T1;

_T120 = _T1;

_T121 = _T1;

_T122 = _T1;

_T123 = procedure (p0 : TObject;
p1 : TTreeNode) of object;

_T124 = _T23;

_T125 = _T1;

_T126 = _T92;

_T127 = _T91;

_T128 = _T1;

_T129 = _T1;

_T130 = _T1;

_T131 = _T23;

_T132 = _T1;

_T133 = _T1;

_T134 = _T1;

function __TRect__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TRect__Wrapper.setLeft(const val : Longint);
begin
TRect(GetRecordPtr^).Left := val;
end;
function __TRect__Wrapper.getLeft : Longint;
begin
result := TRect(GetRecordPtr^).Left;
end;
procedure __TRect__Wrapper.setTop(const val : Longint);
begin
TRect(GetRecordPtr^).Top := val;
end;
function __TRect__Wrapper.getTop : Longint;
begin
result := TRect(GetRecordPtr^).Top;
end;
procedure __TRect__Wrapper.setRight(const val : Longint);
begin
TRect(GetRecordPtr^).Right := val;
end;
function __TRect__Wrapper.getRight : Longint;
begin
result := TRect(GetRecordPtr^).Right;
end;
procedure __TRect__Wrapper.setBottom(const val : Longint);
begin
TRect(GetRecordPtr^).Bottom := val;
end;
function __TRect__Wrapper.getBottom : Longint;
begin
result := TRect(GetRecordPtr^).Bottom;
end;
procedure __TSyntaxEdForm__lbxDrawItem__Wrapper(__Instance : TSyntaxEdForm;
p0 : TWinControl;
p1 : Integer;
const p2 : IDispatch;
p3 : TOwnerDrawState);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TSyntaxEdForm(__Instance).lbxDrawItem(p0,p1,__p2^,p3);
end;


type __TRect__Wrapper__ = class(__TRect__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TRect__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
var
__rw : __TRect__Wrapper__;
begin
__rw := __TRect__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TRect((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTSyntaxEdForm__EditedScheme(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TSyntaxEdForm(Instance).EditedScheme);
end;

procedure __DC__SetTSyntaxEdForm__EditedScheme(Instance : TObject; Params : PVariantArgList);
begin
TSyntaxEdForm(Instance).EditedScheme:=TSyntaxScheme(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TSyntaxEdForm,'EditedScheme',__DC__GetTSyntaxEdForm__EditedScheme,__DC__SetTSyntaxEdForm__EditedScheme);
end;

function __DC__GetdcSyEdForm__SyntaxEdForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(dcSyEdForm.SyntaxEdForm);
end;

procedure __DC__SetdcSyEdForm__SyntaxEdForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(dcSyEdForm.SyntaxEdForm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('SyntaxEdForm',__DC__GetdcSyEdForm__SyntaxEdForm,__DC__SetdcSyEdForm__SyntaxEdForm));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TSyntaxEdForm
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
'EditSyntaxScheme'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TSyntaxScheme),TypeInfo(Boolean)],Addr(EditSyntaxScheme),cRegister);

RegRegisterMethod(TSyntaxEdForm,'chxUseMetaClick',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseMetaClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddBlockClick',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddBlockClick));

RegRegisterMethod(TSyntaxEdForm,'btnClearClick',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnClearClick));

RegRegisterMethod(TSyntaxEdForm,'FormCreate',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.FormCreate));

RegRegisterMethod(TSyntaxEdForm,'btnRmvBlockClick',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvBlockClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseDirectivesClick',TypeInfo(_T6),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDirectivesClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseIdentifiersClick',TypeInfo(_T7),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseIdentifiersClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseSymbolsClick',TypeInfo(_T8),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseSymbolsClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseCommentsClick',TypeInfo(_T9),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseCommentsClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseCommentsSLClick',TypeInfo(_T10),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseCommentsSLClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseCommentsMLClick',TypeInfo(_T11),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseCommentsMLClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrSCClick',TypeInfo(_T12),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrSCClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrSCClick',TypeInfo(_T13),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrSCClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseStringsClick',TypeInfo(_T14),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseStringsClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseNumbersClick',TypeInfo(_T15),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseNumbersClick));

RegRegisterMethod(TSyntaxEdForm,'chxPSNumbersClick',TypeInfo(_T16),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxPSNumbersClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseKeywordsClick',TypeInfo(_T17),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseKeywordsClick));

RegRegisterMethod(TSyntaxEdForm,'edtSchemeNameExit',TypeInfo(_T18),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.edtSchemeNameExit));

RegRegisterMethod(TSyntaxEdForm,'chxCaseSensClick',TypeInfo(_T19),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxCaseSensClick));

RegRegisterMethod(TSyntaxEdForm,'edtMetaSymbolExit',TypeInfo(_T20),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.edtMetaSymbolExit));

RegRegisterMethod(TSyntaxEdForm,'edtDrctvPrefixExit',TypeInfo(_T21),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.edtDrctvPrefixExit));

RegRegisterMethod(TSyntaxEdForm,'btnSaveClick',TypeInfo(_T22),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnSaveClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSCKeyDown',TypeInfo(_T23),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsSCKeyDown));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMCKeyDown',TypeInfo(_T24),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsMCKeyDown));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSSKeyDown',TypeInfo(_T25),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsSSKeyDown));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSNumKeyDown',TypeInfo(_T26),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsPSNumKeyDown));

RegRegisterMethod(TSyntaxEdForm,'lbxKWSetsClick',TypeInfo(_T27),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxKWSetsClick));

RegRegisterMethod(TSyntaxEdForm,'lbxKWSetsKeyDown',TypeInfo(_T28),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxKWSetsKeyDown));

RegRegisterMethod(TSyntaxEdForm,'lbxKeywordsKeyDown',TypeInfo(_T29),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxKeywordsKeyDown));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrMCClick',TypeInfo(_T30),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrMCClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrMCClick',TypeInfo(_T31),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrMCClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrSSClick',TypeInfo(_T32),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrSSClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrSSClick',TypeInfo(_T33),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrSSClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrPSNumClick',TypeInfo(_T34),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrPSNumClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrPSNumClick',TypeInfo(_T35),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrPSNumClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvKWSetClick',TypeInfo(_T36),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvKWSetClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddKWSetClick',TypeInfo(_T37),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddKWSetClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvKWClick',TypeInfo(_T38),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvKWClick));

RegRegisterMethod(TSyntaxEdForm,'btnAddKWClick',TypeInfo(_T39),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddKWClick));

RegRegisterMethod(TSyntaxEdForm,'btnSaveKWClick',TypeInfo(_T40),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnSaveKWClick));

RegRegisterMethod(TSyntaxEdForm,'btnLoadKWClick',TypeInfo(_T41),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnLoadKWClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleTextClick',TypeInfo(_T42),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleTextClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleIdentClick',TypeInfo(_T43),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleIdentClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleSymbolsClick',TypeInfo(_T44),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleSymbolsClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleDrctvClick',TypeInfo(_T45),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleDrctvClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleIntNumClick',TypeInfo(_T46),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleIntNumClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleFloatNumClick',TypeInfo(_T47),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleFloatNumClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrSCClick',TypeInfo(_T48),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrSCClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrMCClick',TypeInfo(_T49),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrMCClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrSSClick',TypeInfo(_T50),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrSSClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrPSNumClick',TypeInfo(_T51),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrPSNumClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSCClick',TypeInfo(_T52),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsSCClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSNumClick',TypeInfo(_T53),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsPSNumClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMCClick',TypeInfo(_T54),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsMCClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSSClick',TypeInfo(_T55),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsSSClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditKWClick',TypeInfo(_T56),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditKWClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditKWSetClick',TypeInfo(_T57),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditKWSetClick));

RegRegisterMethod(TSyntaxEdForm,'lbxKeywordsClick',TypeInfo(_T58),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxKeywordsClick));

RegRegisterMethod(TSyntaxEdForm,'btnLoadClick',TypeInfo(_T59),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnLoadClick));

RegRegisterMethod(TSyntaxEdForm,'lbxMeasureItem',TypeInfo(_T60),[
TypeInfo(TWinControl),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TSyntaxEdForm.lbxMeasureItem));

RegRegisterMethod(TSyntaxEdForm,'lbxDrawItem',TypeInfo(_T61),[
TypeInfo(TWinControl),
TypeInfo(Integer),
TypeInfo(IDispatch),
TypeInfo(TOwnerDrawState)],Addr(__TSyntaxEdForm__lbxDrawItem__Wrapper));

RegRegisterMethod(TSyntaxEdForm,'FormDestroy',TypeInfo(_T62),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.FormDestroy));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMSClick',TypeInfo(_T63),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsMSClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMSKeyDown',TypeInfo(_T64),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsMSKeyDown));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrMSClick',TypeInfo(_T65),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrMSClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrMSClick',TypeInfo(_T66),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrMSClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrMSClick',TypeInfo(_T67),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrMSClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseStringsSLClick',TypeInfo(_T68),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseStringsSLClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseStringsMLClick',TypeInfo(_T69),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseStringsMLClick));

RegRegisterMethod(TSyntaxEdForm,'btnApplyClick',TypeInfo(_T70),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnApplyClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseDefFont1Click',TypeInfo(_T71),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDefFont1Click));

RegRegisterMethod(TSyntaxEdForm,'chxUseDefFont2Click',TypeInfo(_T72),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDefFont2Click));

RegRegisterMethod(TSyntaxEdForm,'chxUseDefFont3Click',TypeInfo(_T73),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDefFont3Click));

RegRegisterMethod(TSyntaxEdForm,'rgpPSNumbersClick',TypeInfo(_T74),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.rgpPSNumbersClick));

RegRegisterMethod(TSyntaxEdForm,'lbxKWSetsDblClick',TypeInfo(_T75),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxKWSetsDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxKeywordsDblClick',TypeInfo(_T76),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxKeywordsDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSNumDblClick',TypeInfo(_T77),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsPSNumDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSSDblClick',TypeInfo(_T78),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsSSDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMSDblClick',TypeInfo(_T79),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsMSDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSCDblClick',TypeInfo(_T80),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsSCDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMCDblClick',TypeInfo(_T81),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsMCDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxBlkDlmtrsClick',TypeInfo(_T82),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxBlkDlmtrsClick));

RegRegisterMethod(TSyntaxEdForm,'lbxBlkDlmtrsDblClick',TypeInfo(_T83),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxBlkDlmtrsDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxBlkDlmtrsKeyDown',TypeInfo(_T84),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxBlkDlmtrsKeyDown));

RegRegisterMethod(TSyntaxEdForm,'btnAddBlkDlmtrClick',TypeInfo(_T85),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddBlkDlmtrClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvBlkDlmtrClick',TypeInfo(_T86),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvBlkDlmtrClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditBlkDlmtrClick',TypeInfo(_T87),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditBlkDlmtrClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditBlockClick',TypeInfo(_T88),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditBlockClick));

RegRegisterMethod(TSyntaxEdForm,'chxPSNumOptionClick',TypeInfo(_T89),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxPSNumOptionClick));

RegRegisterMethod(TSyntaxEdForm,'btnCopyBlockClick',TypeInfo(_T90),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnCopyBlockClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDragOver',TypeInfo(_T91),[
TypeInfo(TObject),
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(TDragState),
TypeInfo(Boolean)],Addr(TSyntaxEdForm.lbxDragOver));

RegRegisterMethod(TSyntaxEdForm,'lbxDragDrop',TypeInfo(_T92),[
TypeInfo(TObject),
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TSyntaxEdForm.lbxDragDrop));

RegRegisterMethod(TSyntaxEdForm,'chxUseCommentsFLClick',TypeInfo(_T93),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseCommentsFLClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsFCClick',TypeInfo(_T94),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsFCClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsFCDblClick',TypeInfo(_T95),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsFCDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsFCKeyDown',TypeInfo(_T96),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsFCKeyDown));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrFCClick',TypeInfo(_T97),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrFCClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrFCClick',TypeInfo(_T98),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrFCClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrFCClick',TypeInfo(_T99),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrFCClick));

RegRegisterMethod(TSyntaxEdForm,'rgpPSIdentsClick',TypeInfo(_T100),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.rgpPSIdentsClick));

RegRegisterMethod(TSyntaxEdForm,'chxPSIdentsClick',TypeInfo(_T101),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxPSIdentsClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSIdentClick',TypeInfo(_T102),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsPSIdentClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSIdentDblClick',TypeInfo(_T103),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsPSIdentDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSIdentKeyDown',TypeInfo(_T104),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxDlmtrsPSIdentKeyDown));

RegRegisterMethod(TSyntaxEdForm,'btnAddDlmtrPSIdentClick',TypeInfo(_T105),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnAddDlmtrPSIdentClick));

RegRegisterMethod(TSyntaxEdForm,'btnRmvDlmtrPSIdentClick',TypeInfo(_T106),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnRmvDlmtrPSIdentClick));

RegRegisterMethod(TSyntaxEdForm,'btnEditDlmtrPSIdentClick',TypeInfo(_T107),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnEditDlmtrPSIdentClick));

RegRegisterMethod(TSyntaxEdForm,'btnStyleHexNumClick',TypeInfo(_T108),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnStyleHexNumClick));

RegRegisterMethod(TSyntaxEdForm,'chxMetaEscapeClick',TypeInfo(_T109),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxMetaEscapeClick));

RegRegisterMethod(TSyntaxEdForm,'chxMetaWrapLinesClick',TypeInfo(_T110),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxMetaWrapLinesClick));

RegRegisterMethod(TSyntaxEdForm,'chxUseDefBack1Click',TypeInfo(_T111),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDefBack1Click));

RegRegisterMethod(TSyntaxEdForm,'chxUseDefBack2Click',TypeInfo(_T112),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDefBack2Click));

RegRegisterMethod(TSyntaxEdForm,'chxUseDefBack3Click',TypeInfo(_T113),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.chxUseDefBack3Click));

RegRegisterMethod(TSyntaxEdForm,'lbxBlkDlmtrsClickCheck',TypeInfo(_T114),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxBlkDlmtrsClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSCClickCheck',TypeInfo(_T115),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsSCClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMCClickCheck',TypeInfo(_T116),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsMCClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsFCClickCheck',TypeInfo(_T117),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsFCClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsSSClickCheck',TypeInfo(_T118),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsSSClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsMSClickCheck',TypeInfo(_T119),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsMSClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSNumClickCheck',TypeInfo(_T120),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsPSNumClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxDlmtrsPSIdentClickCheck',TypeInfo(_T121),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxDlmtrsPSIdentClickCheck));

RegRegisterMethod(TSyntaxEdForm,'lbxKWSetsClickCheck',TypeInfo(_T122),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxKWSetsClickCheck));

RegRegisterMethod(TSyntaxEdForm,'trvBlocksChange',TypeInfo(_T123),[
TypeInfo(TObject),
TypeInfo(TTreeNode)],Addr(TSyntaxEdForm.trvBlocksChange));

RegRegisterMethod(TSyntaxEdForm,'trvBlocksKeyDown',TypeInfo(_T124),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.trvBlocksKeyDown));

RegRegisterMethod(TSyntaxEdForm,'trvBlocksDblClick',TypeInfo(_T125),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.trvBlocksDblClick));

RegRegisterMethod(TSyntaxEdForm,'trvBlocksDragDrop',TypeInfo(_T126),[
TypeInfo(TObject),
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TSyntaxEdForm.trvBlocksDragDrop));

RegRegisterMethod(TSyntaxEdForm,'trvBlocksDragOver',TypeInfo(_T127),[
TypeInfo(TObject),
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(TDragState),
TypeInfo(Boolean)],Addr(TSyntaxEdForm.trvBlocksDragOver));

RegRegisterMethod(TSyntaxEdForm,'pgcSchemeElemsChange',TypeInfo(_T128),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.pgcSchemeElemsChange));

RegRegisterMethod(TSyntaxEdForm,'lbxExtsClick',TypeInfo(_T129),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxExtsClick));

RegRegisterMethod(TSyntaxEdForm,'lbxExtsDblClick',TypeInfo(_T130),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.lbxExtsDblClick));

RegRegisterMethod(TSyntaxEdForm,'lbxExtsKeyDown',TypeInfo(_T131),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TSyntaxEdForm.lbxExtsKeyDown));

RegRegisterMethod(TSyntaxEdForm,'btnSaveAsClick',TypeInfo(_T132),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnSaveAsClick));

RegRegisterMethod(TSyntaxEdForm,'bbnCustomColorClick',TypeInfo(_T133),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.bbnCustomColorClick));

RegRegisterMethod(TSyntaxEdForm,'btnCharSetClick',TypeInfo(_T134),[
TypeInfo(TObject)],Addr(TSyntaxEdForm.btnCharSetClick));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.
