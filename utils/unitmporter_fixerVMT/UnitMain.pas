unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus, cxMemo,
  cxClasses, cxShellBrowserDialog, StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, RegExpr, StrUtils, dxSkinXmas2008Blue, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint;

type
  TfmMain = class(TForm)
    PathEdit: TcxButtonEdit;
    cxLabel1: TcxLabel;
    btnGO: TcxButton;
    shell: TcxShellBrowserDialog;
    cxMemo1: TcxMemo;
    ProgressLabel: TcxLabel;
    procedure PathEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnGOClick(Sender: TObject);

  private
    sClassNames:TStringList;
    function checkPathCorrect(path:String):Boolean;
    procedure FixFiles(path:String);
    procedure fixFile(fileName:String);
    function getNewRegMethod(sMethod:String):String;
    procedure addClassDefs(var sc:String);
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure FindFiles(Path: string; Files: TStringList; ext: string = '');
var
  SearchRec: TSearchRec;
  mask: string;
begin
  if Path <> '' then
    if Path[length(Path)] <> '\' then
      Path := Path + '\';
  if ext <> EmptyStr then
    mask := Path + ext
  else
    mask := Path + '*.*';
  if FindFirst(mask, faAnyFile, SearchRec) = 0 then
    repeat
      if (SearchRec.name = '.') or (SearchRec.name = '..') then
        continue;
      if (SearchRec.Attr and faDirectory) <> 0 then
        FindFiles(Path + SearchRec.name, Files)
      else
        Files.Add(Path + SearchRec.name);
    until FindNext(SearchRec) <> 0;
  FindClose(SearchRec);
end;


procedure TfmMain.btnGOClick(Sender: TObject);
begin
  if checkPathCorrect(PathEdit.Text) then
  FixFiles(PathEdit.Text);
end;

function TfmMain.checkPathCorrect(path:String):Boolean;
begin
  result:=false;
  if trim(Path) = EmptyStr then
  begin
    ShowMessage('Empty Path');
    exit;
  end;

  if not(DirectoryExists(path)) then
  begin
    ShowMessage('incorrect path');
    exit;
  end;
  result:=true;
end;

procedure TfmMain.FixFiles(path:String);
var filesList:TStringList;
i:Integer;
begin
  filesList:=TStringList.Create;
  sClassNames:=TStringList.Create;
  try
    sclassNames.Duplicates:=dupIgnore;
    sclassNames.Sorted:=true;

    FindFiles(Path, filesList,'*d2006.pas');
    FindFiles(Path, filesList,'*imp.pas');
    progressLabel.Visible:=true;
    for I := 0 to filesList.Count - 1 do
    begin
      ProgressLabel.Caption:=filesList.Strings[i];
      ProgressLabel.Refresh;
      fixFile(filesList.Strings[i]);
    end;

  finally
    filesList.free;
    ProgressLabel.Visible:=false;
    sClassNames.free;
  end;
end;

function getVWMTInitListText:String;
begin
  result:=' vmtMethodList:=TStringList.Create;'+#13#10+
  'vmtMethodList.sorted:=true;'+#13#10+
  'vmtMethodList.duplicates:=dupIgnore;'+#13#10+
  'fillVMTProcs;'+#13#10;
end;

function getprocsText:String;
begin
result:=' function __getFullMethodName(sclassName, smethodName:String):String; '+#13#10+
' begin '+#13#10+
'   result := format(''%s.%s'',[sClassName, sMethodName]) '+#13#10+
' end; '+#13#10+

'procedure fillVMTProcs();'+#13#10+
'var'+#13#10+
'  ctx : TRttiContext;'+#13#10+
'  t:TRttiType;'+#13#10+
'  m:TRttiMethod;'+#13#10+
'  i:Integer;'+#13#10+
'begin'+#13#10+
'  ctx := TRttiContext.Create;'+#13#10+
'  try'+#13#10+
'    for i := 0 to length(classList) - 1 do'+#13#10+
'    begin'+#13#10+
'      t:=ctx.GetType(classList[i].ClassInfo);'+#13#10+
'      for m in t.GetMethods  do'+#13#10+
'      begin'+#13#10+
'        if m.DispatchKind = dkVtable then'+#13#10+
'        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));'+#13#10+
'      end;'+#13#10+
'      t.free;'+#13#10+
'    end;'+#13#10+
'  finally'+#13#10+
'    ctx.free;'+#13#10+
'  end;'+#13#10+
'end;'+#13#10+

'function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;'+#13#10+
'var i:Integer;'+#13#10+
'begin'+#13#10+
'  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));'+#13#10+
'  if i>-1 then '+#13#10+
'    result:=pointer(vmtMethodList.Objects[i])'+#13#10+
'  else '+#13#10+
'  result:=pointer(oldAddr);'+#13#10+
'end;  '+#13#10
end;
procedure TfmMain.addClassDefs(var sc:String);

var i,j:Integer;
s:String;
list:TStringList;
begin
  s:='';
  I:=pos('uses', sc);
  if i>0 then
  insert(' rtti, ',sc,i+4);

  I:=pos('implementation', sc);
  if i>0 then
  insert('  var vmtMethodList:TStringList; '+#13#10 ,sc,i+length('implementation')+2);

  i:=pos('const ClassList', sc);
  if i<=0 then
  exit;

  j:=PosEx(');',sc,i);
  insert(getprocsText, sc, j+4);

  I:=pos('initialization', sc);
{ vmtMethodList:=TStringList.Create;
  vmtMethodList.sorted:=true;
  vmtMethodList.duplicates:=dupIgnore;
  fillVMTProcs;
}
  insert(getVWMTInitListText ,sc , i+2+length('initialization'));
  I:=pos('finalization', sc);
  if i>0 then
  insert('vmtMethodList.free'+#13#10, sc,i-2) else
  begin
    i:=length(sc);
    insert('vmtMethodList.free'+#13#10,sc, i-2);
  end;

end;

function TfmMain.getNewRegMethod(sMethod:String):String;

function getSPointer(s:String):String;
var i:Integer;
begin
  result:=AnsiReplaceText(s,'pointer(','');
  result:=AnsiReplaceText(result,')','');
  result:=AnsiReplaceText(result,';','');
  result:=trim(Result);
  if not(TryStrToInt(result,i)) then
  result:='';
end;

function getPointerIndex(list:TStringList):Integer;
var i:Integer;
s:String;
begin
  result:=-1;
  for I := 0 to list.Count-1  do
  if StartsText('pointer(',trim(list.Strings[i])) then
  begin
    result:=i;
    exit;
  end;
end;

var List:TStringList;
s,pp:String;
sMethodName:String;
sClassName:String;
i, pi:Integer;
begin
  sMethod:=ansireplaceText(sMethod,#13#10,'');
  result:='';
  List:=TStringList.Create;
  try
    list.Text:=AnsiReplaceText(sMethod,',',#13#10);
    if list.Count <= 1 then
    exit;
    pi:=getPointerIndex(list);
    if pi = -1 then
    exit;

    s:=list.Strings[pi];

    if not(AnsiContainsText(s,'pointer(')) then
    exit;
    pp:=getSPointer(s);

    if pp= '' then
    begin
      result:='';
      exit;
    end;

    sMethodName:=list.Strings[1];
    sMethodName:=AnsiDequotedStr(sMethodName, '''');
    sClassName:=list.Strings[0];
    i:=pos('(',sClassName);
    if i = 0 then
    exit;
    sClassName:=copy(sClassName, i+1, length(sClassName)-i);
    if sameText(sClassName,'nil') then
    exit;

    sClassNames.add(sClassName);

   //getVMTProcAddr('TCustomClientDataSet','FindKey',768)
    list.Strings[pi]:=AnsiReplaceText(list.Strings[pi], 'pointer('+pp+')', format(' getVMTProcAddr(%s,%s,%s)',[quotedStr(sClassName),quotedStr(sMethodName), pp]));
    result:=AnsiReplaceText(list.Text,#13#10,',');

    if result[length(result)]=',' then
    result:=copy(result,0,length(result)-1);
    
    if Result<>EmptyStr then
    begin
      list.Text:='//'+sMethod+#13#10+result;
      result:=list.Text;
    end;
  finally
    list.Free;
  end;
end;


procedure TfmMain.fixFile(fileName:String);
var
  Re: TRegExpr;
  list:TStringList;
  scriptText:String;
  s:String;
  sOld,sNew:String;
  i:Integer;
  ch:AnsiChar;
  sc:String;
  needAddFunctions:Boolean;
begin
  List:=TStringList.Create;
  re:=TRegExpr.Create;
  sClassNames.Clear;
  try
    list.LoadFromFile(fileName);
    scriptText:=List.Text;
    sc:=List.Text;
    RE.ModifierI := True;
    RE.ModifierS := True;
    RE.ModifierG := False;
    i:=pos('getVMTProcAddr',scriptText);

    if i>0 then //fixed already
    exit;

{
replace
RegRegisterMethod(TCustomClientDataSet,'FindKey',TypeInfo(_T62),[
TypeInfoArrayOfConst,TypeInfo(Boolean)], pointer(768));

with
RegRegisterMethod(TCustomClientDataSet,'FindKey',TypeInfo(_T62),[
TypeInfoArrayOfConst,TypeInfo(Boolean)], //pointer(768)

getVMTProcAddr('TCustomClientDataSet','FindKey',768));

}
    sc:=ScriptText;
    needAddFunctions:=false;
    re.Expression := 'RegRegisterMethod(.*?);'; // : ({1,});';
    if re.Exec(scriptText) then
      repeat
        s := re.Match[1];
        i := re.MatchPos[0];
        ch := ansiChar(scriptText[i - 1]);
        if (ch <> ' ') and (ch <> ',') and (ch <> #13) and (ch <> #10) then
          continue;

        sOld:=trim(re.Match[0]);
        if (not(ansiContainsText(sOld,'pointer('))) then
        continue;

        sNew:=getNewRegMethod(sOld);
        if sNew<>EmptyStr then
        begin
          sc:=AnsiReplaceText(sc,sOld, sNew);
          needAddFunctions:=true;
        end;

//        if AnsiContainsText(re.Match[2], '=') then
//          continue;
//        result := Trim(re.match[2]);
      until not (re.ExecNext);

    re.Expression := 'RegisterProc(.*?);'; // : ({1,});';
    if re.Exec(sc) then
      repeat
        s := re.Match[1];
        i := re.MatchPos[0];
        ch := ansiChar(sc[i - 1]);

        if (ch <> ' ') and (ch <> ',') and (ch <> #13) and (ch <> #10) then
        begin
          continue;
        end;

        sOld:=trim(re.Match[0]);
        if (not(ansiContainsText(sOld,'pointer('))) then
        continue;

        sNew:=getNewRegMethod(sOld);
        if sNew<>EmptyStr then
        begin
          sc:=AnsiReplaceText(sc,sOld, sNew);
          needAddFunctions:=true;
        end;

//        if AnsiContainsText(re.Match[2], '=') then
//          continue;
//        result := Trim(re.match[2]);
      until not (re.ExecNext);


    if needAddFunctions then
    addClassDefs(sc);

    list.Text:=sc;
  //  List.SaveToFile('d:\1.txt');
    List.SaveToFile(fileName);
  finally
    list.free;
    re.Free;
  end;
end;

procedure TfmMain.PathEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if shell.Execute then
    PathEdit.Text:=shell.Path;
end;

end.
