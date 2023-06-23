{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MXQEDCOM_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  BDE,
  ActiveX,
  ComObj,
  MXQEDCOM;
function ConvertDeletedObjToVariant(var R : DeletedObj) : OleVariant;
function ConvertVariantToDeletedObj(const V : OleVariant) : DeletedObj;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __DeletedObj__Wrapper = class(TDCRecordWrapper)
private
fR : DeletedObj;
public
function GetRecordPtr : pointer; override;
published
procedure setiNumProjector(const val : UINT16);
function getiNumProjector : UINT16;
property iNumProjector : UINT16 read getiNumProjector write setiNumProjector;
procedure setiNumWhere(const val : UINT16);
function getiNumWhere : UINT16;
property iNumWhere : UINT16 read getiNumWhere write setiNumWhere;
procedure setiNumJoin(const val : UINT16);
function getiNumJoin : UINT16;
property iNumJoin : UINT16 read getiNumJoin write setiNumJoin;
procedure setiNumGroupBy(const val : UINT16);
function getiNumGroupBy : UINT16;
property iNumGroupBy : UINT16 read getiNumGroupBy write setiNumGroupBy;
procedure setiNumHaving(const val : UINT16);
function getiNumHaving : UINT16;
property iNumHaving : UINT16 read getiNumHaving write setiNumHaving;
procedure setiNumOrderBy(const val : UINT16);
function getiNumOrderBy : UINT16;
property iNumOrderBy : UINT16 read getiNumOrderBy write setiNumOrderBy;
end;
type
_T0 = function (var p0 : QNodeType): DBIResult of object;

_T1 = function (var p0 : UINT16): DBIResult of object;

{_T2 = function (var p0 : PChar): DBIResult of object;}

_T3 = function (p0 : UINT16;
var p1 : IExpr): DBIResult of object;

{_T4 = function (p0 : PChar;
var p1 : IExpr;
p2 : IExpr): DBIResult of object;}

_T5 = function (p0 : QNodeType;
var p1 : IExpr;
p2 : IExpr): DBIResult of object;

_T6 = function (p0 : IField;
var p1 : IExpr;
p2 : pIExpr): DBIResult of object;

_T7 = function (p0 : QNodeType): DBIResult of object;

_T8 = function (p0 : IExpr): DBIResult of object;

_T9 = function (p0 : IExpr;
p1 : IExpr): DBIResult of object;

_T10 = function (p0 : IExpr;
var p1 : IExpr;
var p2 : IExpr): DBIResult of object;

_T11 = _T1;

{_T12 = function (p0 : UINT16;
var p1 : IExpr;
var p2 : PChar;
var p3 : PChar): DBIResult of object;}

_T13 = function (var p0 : IField): DBIResult of object;

{_T14 = function (var p0 : PChar): DBIResult of object;}

_T15 = function (var p0 : ITable): DBIResult of object;

_T16 = function (var p0 : UINT16;
var p1 : UINT16): DBIResult of object;

{_T17 = function (var p0 : PChar): DBIResult of object;}

_T18 = _T13;

_T19 = _T15;

_T20 = _T15;

_T21 = function (var p0 : JoinType): DBIResult of object;

_T22 = _T1;

{_T23 = function (var p0 : PChar): DBIResult of object;}

_T24 = _T3;

_T25 = function (p0 : IJoinExpr;
var p1 : UINT16): DBIResult of object;

_T26 = function (p0 : UINT16;
p1 : UINT16;
p2 : QNodeType;
var p3 : IExpr;
p4 : IExpr): DBIResult of object;

{_T27 = function (p0 : PChar;
p1 : PChar;
p2 : QNodeType;
var p3 : IExpr;
p4 : IExpr): DBIResult of object;}

_T28 = _T8;

_T29 = function (p0 : JoinType): DBIResult of object;

_T30 = _T13;

_T31 = _T13;

_T32 = _T1;

_T33 = function (var p0 : LongBool): DBIResult of object;

_T34 = function (p0 : LongBool): DBIResult of object;

_T35 = function (var p0 : IProjector): DBIResult of object;

{_T36 = function (var p0 : PChar): DBIResult of object;}

{_T37 = function (var p0 : PChar): DBIResult of object;}

_T38 = _T33;

{_T39 = function (var p0 : PChar): DBIResult of object;}

_T40 = function (var p0 : IExpr): DBIResult of object;

{_T41 = function (var p0 : PChar): DBIResult of object;}

{_T42 = function (var p0 : PChar): DBIResult of object;}

{_T43 = function (var p0 : PChar): DBIResult of object;}

{_T44 = function (var p0 : PChar): DBIResult of object;}

_T45 = function (p0 : UINT16;
var p1 : IField): DBIResult of object;

function __DeletedObj__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __DeletedObj__Wrapper.setiNumProjector(const val : UINT16);
begin
DeletedObj(GetRecordPtr^).iNumProjector := val;
end;
function __DeletedObj__Wrapper.getiNumProjector : UINT16;
begin
result := DeletedObj(GetRecordPtr^).iNumProjector;
end;
procedure __DeletedObj__Wrapper.setiNumWhere(const val : UINT16);
begin
DeletedObj(GetRecordPtr^).iNumWhere := val;
end;
function __DeletedObj__Wrapper.getiNumWhere : UINT16;
begin
result := DeletedObj(GetRecordPtr^).iNumWhere;
end;
procedure __DeletedObj__Wrapper.setiNumJoin(const val : UINT16);
begin
DeletedObj(GetRecordPtr^).iNumJoin := val;
end;
function __DeletedObj__Wrapper.getiNumJoin : UINT16;
begin
result := DeletedObj(GetRecordPtr^).iNumJoin;
end;
procedure __DeletedObj__Wrapper.setiNumGroupBy(const val : UINT16);
begin
DeletedObj(GetRecordPtr^).iNumGroupBy := val;
end;
function __DeletedObj__Wrapper.getiNumGroupBy : UINT16;
begin
result := DeletedObj(GetRecordPtr^).iNumGroupBy;
end;
procedure __DeletedObj__Wrapper.setiNumHaving(const val : UINT16);
begin
DeletedObj(GetRecordPtr^).iNumHaving := val;
end;
function __DeletedObj__Wrapper.getiNumHaving : UINT16;
begin
result := DeletedObj(GetRecordPtr^).iNumHaving;
end;
procedure __DeletedObj__Wrapper.setiNumOrderBy(const val : UINT16);
begin
DeletedObj(GetRecordPtr^).iNumOrderBy := val;
end;
function __DeletedObj__Wrapper.getiNumOrderBy : UINT16;
begin
result := DeletedObj(GetRecordPtr^).iNumOrderBy;
end;
function _DeletedObj_ : IDispatch;
begin
  result := __DeletedObj__Wrapper.Create;
end;

type __DeletedObj__Wrapper__ = class(__DeletedObj__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __DeletedObj__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertDeletedObjToVariant(var R : DeletedObj) : OleVariant;
var
__rw : __DeletedObj__Wrapper__;
begin
__rw := __DeletedObj__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToDeletedObj(const V : OleVariant) : DeletedObj;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := DeletedObj((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..62] of string = (
'sTypeSelect'
,'sTypeInsert'
,'sTypeDelete'
,'sTypeUpdate'
,'sTypeDDL'
,'joinNone'
,'joinInner'
,'joinLeft'
,'joinRight'
,'joinFull'
,'qnodeNA'
,'qnodeAdd'
,'qnodeAvg'
,'qnodeCount'
,'qnodeMax'
,'qnodeMin'
,'qnodeTotal'
,'qnodeAlias'
,'qnodeAnd'
,'qnodeConstant'
,'qnodeDivide'
,'qnodeEqual'
,'qnodeField'
,'qnodeGreaterEq'
,'qnodeGreater'
,'qnodeLessEq'
,'qnodeLike'
,'qnodeLess'
,'qnodeMultiply'
,'qnodeNotEqual'
,'qnodeNot'
,'qnodeOr'
,'qnodeSubtract'
,'qnodeColumn'
,'qnodeCast'
,'qnodeAssign'
,'qnodeIsNull'
,'qnodeExists'
,'qnodeVariable'
,'qnodeSelect'
,'qnodeNegate'
,'qnodeUdf'
,'qnodeIN'
,'qnodeANY'
,'qnodeALL'
,'qnodeTrim'
,'qnodeLower'
,'qnodeUpper'
,'qnodeSubstring'
,'qnodeList'
,'qnodeExtract'
,'qnodeCorrVar'
,'qnodeTrue'
,'qnodeNotAnd'
,'qnodeNotOr'
,'qnodeUnknown'
,'qnodeConcatenate'
,'qnodeGetDateTime'
,'exprCatWhere'
,'exprCatHaving'
,'DIALECT'
,'ANSI'
,'DIALECTANSI'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sTypeSelect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sTypeInsert));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sTypeDelete));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sTypeUpdate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sTypeDDL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,joinNone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,joinInner));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,joinLeft));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,joinRight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,joinFull));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,qnodeNA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,qnodeAdd));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,qnodeAvg));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,qnodeCount));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,qnodeMax));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,qnodeMin));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,qnodeTotal));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,qnodeAlias));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,qnodeAnd));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,qnodeConstant));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,qnodeDivide));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,qnodeEqual));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,qnodeField));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,qnodeGreaterEq));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,qnodeGreater));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,qnodeLessEq));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,qnodeLike));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,qnodeLess));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,qnodeMultiply));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,qnodeNotEqual));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,qnodeNot));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,qnodeOr));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,qnodeSubtract));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,qnodeColumn));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,qnodeCast));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,qnodeAssign));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,qnodeIsNull));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,qnodeExists));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,qnodeVariable));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,qnodeSelect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,qnodeNegate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,qnodeUdf));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,qnodeIN));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,qnodeANY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,qnodeALL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,qnodeTrim));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,qnodeLower));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,qnodeUpper));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,qnodeSubstring));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,qnodeList));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,qnodeExtract));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,qnodeCorrVar));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,qnodeTrue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,qnodeNotAnd));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,qnodeNotOr));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,qnodeUnknown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,qnodeConcatenate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,qnodeGetDateTime));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,exprCatWhere));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[59] ,exprCatHaving));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[60] ,DIALECT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[61] ,ANSI));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[62] ,DIALECTANSI));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..7] of TClass = (
IExpr,
IField,
IGroupBy,
IJoin,
IJoinExpr,
IOrderBy,
IProjector,
ITable
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
'DeletedObj'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_DeletedObj_)));
//RegisterProc(IExpr,'GetNodeType',mtMethod,TypeInfo(_T0),[TypeInfo(QNodeType),TypeInfo(DBIResult)], pointer(0),cStdCall);
RegisterProc(IExpr,'GetNodeType',mtMethod,TypeInfo(_T0),[TypeInfo(QNodeType),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','GetNodeType',0),cStdCall);


//RegisterProc(IExpr,'GetNumbSubExprs',mtMethod,TypeInfo(_T1),[TypeInfo(UINT16),TypeInfo(DBIResult)], pointer(4),cStdCall);
RegisterProc(IExpr,'GetNumbSubExprs',mtMethod,TypeInfo(_T1),[TypeInfo(UINT16),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','GetNumbSubExprs',4),cStdCall);


//RegisterProc(IExpr,'FetchSubExpr',mtMethod,TypeInfo(_T3),[TypeInfo(UINT16),TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(12),cStdCall);
RegisterProc(IExpr,'FetchSubExpr',mtMethod,TypeInfo(_T3),[TypeInfo(UINT16),TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','FetchSubExpr',12),cStdCall);


//RegisterProc(IExpr,'AddSubExpr_node',mtMethod,TypeInfo(_T5),[TypeInfo(QNodeType),TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(20),cStdCall);
RegisterProc(IExpr,'AddSubExpr_node',mtMethod,TypeInfo(_T5),[TypeInfo(QNodeType),TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','AddSubExpr_node',20),cStdCall);


//RegisterProc(IExpr,'AddSubExpr_field',mtMethod,TypeInfo(_T6),[TypeInfo(IField),TypeInfo(IExpr),TypeInfoPointer,TypeInfo(DBIResult)], pointer(24),cStdCall);
RegisterProc(IExpr,'AddSubExpr_field',mtMethod,TypeInfo(_T6),[TypeInfo(IField),TypeInfo(IExpr),TypeInfoPointer,TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','AddSubExpr_field',24),cStdCall);


//RegisterProc(IExpr,'ChangeNodeType',mtMethod,TypeInfo(_T7),[TypeInfo(QNodeType),TypeInfo(DBIResult)], pointer(28),cStdCall);
RegisterProc(IExpr,'ChangeNodeType',mtMethod,TypeInfo(_T7),[TypeInfo(QNodeType),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','ChangeNodeType',28),cStdCall);


//RegisterProc(IExpr,'DeleteSubExpr',mtMethod,TypeInfo(_T8),[TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(32),cStdCall);
RegisterProc(IExpr,'DeleteSubExpr',mtMethod,TypeInfo(_T8),[TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','DeleteSubExpr',32),cStdCall);


//RegisterProc(IExpr,'MoveSubExpr',mtMethod,TypeInfo(_T9),[TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(36),cStdCall);
RegisterProc(IExpr,'MoveSubExpr',mtMethod,TypeInfo(_T9),[TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','MoveSubExpr',36),cStdCall);


//RegisterProc(IExpr,'GetParentExpr',mtMethod,TypeInfo(_T10),[TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(40),cStdCall);
RegisterProc(IExpr,'GetParentExpr',mtMethod,TypeInfo(_T10),[TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','GetParentExpr',40),cStdCall);


//RegisterProc(IExpr,'GetNumCells',mtMethod,TypeInfo(_T11),[TypeInfo(UINT16),TypeInfo(DBIResult)], pointer(44),cStdCall);
RegisterProc(IExpr,'GetNumCells',mtMethod,TypeInfo(_T11),[TypeInfo(UINT16),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','GetNumCells',44),cStdCall);


//RegisterProc(IExpr,'FetchField',mtMethod,TypeInfo(_T13),[TypeInfo(IField),TypeInfo(DBIResult)], pointer(52),cStdCall);
RegisterProc(IExpr,'FetchField',mtMethod,TypeInfo(_T13),[TypeInfo(IField),TypeInfo(DBIResult)],  getVMTProcAddr('IExpr','FetchField',52),cStdCall);


//RegisterProc(IField,'FetchTable',mtMethod,TypeInfo(_T15),[TypeInfo(ITable),TypeInfo(DBIResult)], pointer(4),cStdCall);
RegisterProc(IField,'FetchTable',mtMethod,TypeInfo(_T15),[TypeInfo(ITable),TypeInfo(DBIResult)],  getVMTProcAddr('IField','FetchTable',4),cStdCall);


//RegisterProc(IField,'GetDataType',mtMethod,TypeInfo(_T16),[TypeInfo(UINT16),TypeInfo(UINT16),TypeInfo(DBIResult)], pointer(8),cStdCall);
RegisterProc(IField,'GetDataType',mtMethod,TypeInfo(_T16),[TypeInfo(UINT16),TypeInfo(UINT16),TypeInfo(DBIResult)],  getVMTProcAddr('IField','GetDataType',8),cStdCall);


//RegisterProc(IGroupBy,'FetchField',mtMethod,TypeInfo(_T18),[TypeInfo(IField),TypeInfo(DBIResult)], pointer(0),cStdCall);
RegisterProc(IGroupBy,'FetchField',mtMethod,TypeInfo(_T18),[TypeInfo(IField),TypeInfo(DBIResult)],  getVMTProcAddr('IGroupBy','FetchField',0),cStdCall);


//RegisterProc(IJoin,'FetchTableLeft',mtMethod,TypeInfo(_T19),[TypeInfo(ITable),TypeInfo(DBIResult)], pointer(0),cStdCall);
RegisterProc(IJoin,'FetchTableLeft',mtMethod,TypeInfo(_T19),[TypeInfo(ITable),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','FetchTableLeft',0),cStdCall);


//RegisterProc(IJoin,'FetchTableRight',mtMethod,TypeInfo(_T20),[TypeInfo(ITable),TypeInfo(DBIResult)], pointer(4),cStdCall);
RegisterProc(IJoin,'FetchTableRight',mtMethod,TypeInfo(_T20),[TypeInfo(ITable),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','FetchTableRight',4),cStdCall);


//RegisterProc(IJoin,'GetJoinType',mtMethod,TypeInfo(_T21),[TypeInfo(JoinType),TypeInfo(DBIResult)], pointer(8),cStdCall);
RegisterProc(IJoin,'GetJoinType',mtMethod,TypeInfo(_T21),[TypeInfo(JoinType),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','GetJoinType',8),cStdCall);


//RegisterProc(IJoin,'GetNumExprs',mtMethod,TypeInfo(_T22),[TypeInfo(UINT16),TypeInfo(DBIResult)], pointer(12),cStdCall);
RegisterProc(IJoin,'GetNumExprs',mtMethod,TypeInfo(_T22),[TypeInfo(UINT16),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','GetNumExprs',12),cStdCall);


//RegisterProc(IJoin,'FetchJoinExpr',mtMethod,TypeInfo(_T24),[TypeInfo(UINT16),TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(20),cStdCall);
RegisterProc(IJoin,'FetchJoinExpr',mtMethod,TypeInfo(_T24),[TypeInfo(UINT16),TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','FetchJoinExpr',20),cStdCall);


//RegisterProc(IJoin,'GetIndexForJoinExpr',mtMethod,TypeInfo(_T25),[TypeInfo(IJoinExpr),TypeInfo(UINT16),TypeInfo(DBIResult)], pointer(24),cStdCall);
RegisterProc(IJoin,'GetIndexForJoinExpr',mtMethod,TypeInfo(_T25),[TypeInfo(IJoinExpr),TypeInfo(UINT16),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','GetIndexForJoinExpr',24),cStdCall);


//RegisterProc(IJoin,'AddJoinExpr',mtMethod,TypeInfo(_T26),[TypeInfo(UINT16),TypeInfo(UINT16),TypeInfo(QNodeType),TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(28),cStdCall);
RegisterProc(IJoin,'AddJoinExpr',mtMethod,TypeInfo(_T26),[TypeInfo(UINT16),TypeInfo(UINT16),TypeInfo(QNodeType),TypeInfo(IExpr),TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','AddJoinExpr',28),cStdCall);


//RegisterProc(IJoin,'DeleteJoinExpr',mtMethod,TypeInfo(_T28),[TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(36),cStdCall);
RegisterProc(IJoin,'DeleteJoinExpr',mtMethod,TypeInfo(_T28),[TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','DeleteJoinExpr',36),cStdCall);


//RegisterProc(IJoin,'ChangeJoinType',mtMethod,TypeInfo(_T29),[TypeInfo(JoinType),TypeInfo(DBIResult)], pointer(40),cStdCall);
RegisterProc(IJoin,'ChangeJoinType',mtMethod,TypeInfo(_T29),[TypeInfo(JoinType),TypeInfo(DBIResult)],  getVMTProcAddr('IJoin','ChangeJoinType',40),cStdCall);


//RegisterProc(IJoinExpr,'FetchFieldLeft',mtMethod,TypeInfo(_T30),[TypeInfo(IField),TypeInfo(DBIResult)], pointer(56),cStdCall);
RegisterProc(IJoinExpr,'FetchFieldLeft',mtMethod,TypeInfo(_T30),[TypeInfo(IField),TypeInfo(DBIResult)],  getVMTProcAddr('IJoinExpr','FetchFieldLeft',56),cStdCall);


//RegisterProc(IJoinExpr,'FetchFieldRight',mtMethod,TypeInfo(_T31),[TypeInfo(IField),TypeInfo(DBIResult)], pointer(60),cStdCall);
RegisterProc(IJoinExpr,'FetchFieldRight',mtMethod,TypeInfo(_T31),[TypeInfo(IField),TypeInfo(DBIResult)],  getVMTProcAddr('IJoinExpr','FetchFieldRight',60),cStdCall);


//RegisterProc(IOrderBy,'GetPosition',mtMethod,TypeInfo(_T32),[TypeInfo(UINT16),TypeInfo(DBIResult)], pointer(0),cStdCall);
RegisterProc(IOrderBy,'GetPosition',mtMethod,TypeInfo(_T32),[TypeInfo(UINT16),TypeInfo(DBIResult)],  getVMTProcAddr('IOrderBy','GetPosition',0),cStdCall);


//RegisterProc(IOrderBy,'GetIsDescend',mtMethod,TypeInfo(_T33),[TypeInfo(LongBool),TypeInfo(DBIResult)], pointer(4),cStdCall);
RegisterProc(IOrderBy,'GetIsDescend',mtMethod,TypeInfo(_T33),[TypeInfo(LongBool),TypeInfo(DBIResult)],  getVMTProcAddr('IOrderBy','GetIsDescend',4),cStdCall);


//RegisterProc(IOrderBy,'ChangeDescend',mtMethod,TypeInfo(_T34),[TypeInfo(LongBool),TypeInfo(DBIResult)], pointer(8),cStdCall);
RegisterProc(IOrderBy,'ChangeDescend',mtMethod,TypeInfo(_T34),[TypeInfo(LongBool),TypeInfo(DBIResult)],  getVMTProcAddr('IOrderBy','ChangeDescend',8),cStdCall);


//RegisterProc(IOrderBy,'FetchProjector',mtMethod,TypeInfo(_T35),[TypeInfo(IProjector),TypeInfo(DBIResult)], pointer(12),cStdCall);
RegisterProc(IOrderBy,'FetchProjector',mtMethod,TypeInfo(_T35),[TypeInfo(IProjector),TypeInfo(DBIResult)],  getVMTProcAddr('IOrderBy','FetchProjector',12),cStdCall);


//RegisterProc(IProjector,'GetIsAliased',mtMethod,TypeInfo(_T38),[TypeInfo(LongBool),TypeInfo(DBIResult)], pointer(8),cStdCall);
RegisterProc(IProjector,'GetIsAliased',mtMethod,TypeInfo(_T38),[TypeInfo(LongBool),TypeInfo(DBIResult)],  getVMTProcAddr('IProjector','GetIsAliased',8),cStdCall);


//RegisterProc(IProjector,'FetchExpr',mtMethod,TypeInfo(_T40),[TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(16),cStdCall);
RegisterProc(IProjector,'FetchExpr',mtMethod,TypeInfo(_T40),[TypeInfo(IExpr),TypeInfo(DBIResult)],  getVMTProcAddr('IProjector','FetchExpr',16),cStdCall);


//RegisterProc(ITable,'FetchField',mtMethod,TypeInfo(_T45),[TypeInfo(UINT16),TypeInfo(IField),TypeInfo(DBIResult)], pointer(16),cStdCall);
RegisterProc(ITable,'FetchField',mtMethod,TypeInfo(_T45),[TypeInfo(UINT16),TypeInfo(IField),TypeInfo(DBIResult)],  getVMTProcAddr('ITable','FetchField',16),cStdCall);


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(IExpr,'GetSQLText',mtMethod,TypeInfo(_T2),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(8),cStdCall)}

{RegisterProc(IExpr,'AddSubExpr_Text',mtMethod,TypeInfo(_T4),[
TypeInfoPChar,
TypeInfo(IExpr),
TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(16),cStdCall)}

{RegisterProc(IExpr,'GetCell',mtMethod,TypeInfo(_T12),[
TypeInfo(UINT16),
TypeInfo(IExpr),
TypeInfoPChar,
TypeInfoPChar,TypeInfo(DBIResult)], pointer(48),cStdCall)}

{RegisterProc(IField,'GetName',mtMethod,TypeInfo(_T14),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(0),cStdCall)}

{RegisterProc(IField,'GetTable_Field',mtMethod,TypeInfo(_T17),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(12),cStdCall)}

{RegisterProc(IJoin,'GetSQLText',mtMethod,TypeInfo(_T23),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(16),cStdCall)}

{RegisterProc(IJoin,'AddJoinExpr_useFldName',mtMethod,TypeInfo(_T27),[
TypeInfoPChar,
TypeInfoPChar,
TypeInfo(QNodeType),
TypeInfo(IExpr),
TypeInfo(IExpr),TypeInfo(DBIResult)], pointer(32),cStdCall)}

{RegisterProc(IProjector,'GetQualifier',mtMethod,TypeInfo(_T36),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(0),cStdCall)}

{RegisterProc(IProjector,'GetName',mtMethod,TypeInfo(_T37),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(4),cStdCall)}

{RegisterProc(IProjector,'GetBaseName',mtMethod,TypeInfo(_T39),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(12),cStdCall)}

{RegisterProc(ITable,'GetName',mtMethod,TypeInfo(_T41),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(0),cStdCall)}

{RegisterProc(ITable,'GetDbName',mtMethod,TypeInfo(_T42),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(4),cStdCall)}

{RegisterProc(ITable,'GetDrvType',mtMethod,TypeInfo(_T43),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(8),cStdCall)}

{RegisterProc(ITable,'GetAlias',mtMethod,TypeInfo(_T44),[
TypeInfoPChar,TypeInfo(DBIResult)], pointer(12),cStdCall)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
