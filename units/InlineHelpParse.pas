unit InlineHelpParse;

interface
uses classes, RegExpr, sysUtils, StrUtils,inlineHelp,kbmMemTable;

type
  TInlineHelpParser = class

  private
    lScript: TStringList;
    yPos: Integer;
    currentMethodNamePos:Integer;

    currentMethodName: string;

    methodsList: TStringList;
    methodsListV: TStringList;
    globalVarList: TStringList;
    globalVarListv: TStringList;
    localVarList: TStringList;
    localVarListV: TStringList;
    inlineHelp:TInline;
    cds:TkbmMemTable;
    procedure FillCurrentMethodName;
    function getMethodNameByText(mText: string;var aName:String): string;
    procedure FillMethodsList(lText:String;ignoreClassMethods:Boolean=false);
    procedure FillLocalVarList;
    procedure FillGlobalVarList;
    procedure processUses;
  public
    constructor Create(Source: string; yPos: Integer;inlineHelp:TInline);
    destructor Destroy; override;
    procedure Parse(aCaptions,aValues:TStringList;isSelf:Boolean=false);overload;
    procedure Parse(cds:TkbmMemTable;isSelf:Boolean=false);overload;
  end;

implementation
uses dbClient,db{,oppConfiguration},variants;

constructor TInlineHelpParser.Create(Source: string; yPos: Integer;inlineHelp:TInline);
begin
  inherited create;
  lScript := TStringList.Create;
  lScript.Text := Source;
  self.yPos := yPos;
  self.inlineHelp:=inlineHelp;

  methodsList := TStringList.Create;
  methodsListV := TStringList.Create;
  globalVarList := TStringList.Create;
  globalVarListv := TStringList.Create;
  localVarList := TStringList.Create;
  localVarListV := TStringList.Create;

  globalVarList.Sorted:=true;
  globalVarListV.Sorted:=true;
end;

destructor TinlineHelpParser.Destroy;
begin
  lScript.Free;

  methodsList.free;
  methodsListV.Free;
  globalVarList.Free;
  globalVarListv.Free;
  localVarList.Free;
  localVarListV.Free;
end;

procedure TInlineHelpParser.Parse(cds: TkbmMemTable;isSelf:Boolean=false);
begin
  self.cds:=cds;
  FillCurrentMethodName;
  if not(isSelf) then
  FillLocalVarList;
  FillGlobalVarList;
  FillMethodsList(lScript.Text);
  processUses;

//  aCaptions.AddStrings(localVarList);
//  aValues.AddStrings(localVarListV);


//  acaptions.AddStrings(globalVarList);
//  aValues.AddStrings(globalVarListv);

//  aCaptions.Sort;
//  aValues.Sort;

//  aCaptions.AddStrings(methodsList);
//  aValues.AddStrings(methodsListV);
end;

procedure TInlineHelpParser.Parse(aCaptions,aValues:TStringList;isSelf:Boolean=false);
begin
  FillCurrentMethodName;
  FillMethodsList(lScript.Text);
  FillLocalVarList;
  FillGlobalVarList;
  processUses;
  

  aCaptions.AddStrings(localVarList);
  aValues.AddStrings(localVarListV);


  acaptions.AddStrings(globalVarList);
  aValues.AddStrings(globalVarListv);

//  aCaptions.Sort;
//  aValues.Sort;

  aCaptions.AddStrings(methodsList);
  aValues.AddStrings(methodsListV);
end;

procedure TInlineHelpParser.FillLocalVarList;
var list,l2:TStringList;
vs,s,typeName:String;
i,j:Integer;
//re:TRegExpr;
begin
  list:=TstringList.Create;
  l2:=TStringList.Create;
  try
    if currentMethodNamePos=0 then
    exit;
    for I := currentMethodNamePos+1 to lScript.Count-1 do
    begin
      if ContainsText(lScript.Strings[i],'begin') then
      break;
      list.Add(lScript.Strings[i]);
    end;
    vs:=ReplaceText(list.Text,#13#10,'');
    list.Text:=ReplaceText(vs,';',';'+#13#10);

    if list.Count>0 then
    list.Strings[0]:=ReplaceText(list.Strings[0],'var ','');
    for I := 0 to List.Count - 1 do
    begin
      s:=list.Strings[i];
      j:=pos(':',s);
      if j>0 then
      begin
        vs:=trim(copy(s,1,j-1));
        typeName:=copy(s,j+1,length(s)-j);
        typeName:=ReplaceText(typeName,';','');
        l2.Text:=trim(ReplaceText(vs,',',#13#10));
        for j := 0 to l2.Count - 1 do
        begin
          cds.Append;
          cds.FieldByName('Caption').AsString:=inlineHelp.formatStr('var',1)+'~'+trim(l2.Strings[j])+'~'+':'+typeName+';';//inlineHelp.formatStr('procedure',1)+'~'+s;
          cds.FieldByName('Value').AsString:=trim(l2.Strings[j]);//aName;
          cds.FieldByName('RecNo').AsInteger:=0;
          cds.Post;

//          localVarList.Add(inlineHelp.formatStr('var',1)+'~'+trim(l2.Strings[j])+'~'+':'+typeName+';');
//          localVarListV.Add(trim(l2.Strings[j]));
        end;
      end;
    end;
    localVarList.Sort;
    localVarListV.Sort;
  finally
    list.Free;
    l2.Free;
  end;
end;

procedure TInlineHelpParser.FillGlobalVarList;
var re:TRegExpr;
 list,l2:TStringList;
vs,s,typeName:String;
i,j:Integer;
begin
  re:=TRegExpr.Create;
  List:=TStringList.Create;
  l2:=TStringList.Create;
  try
    RE.ModifierI := True;
    RE.ModifierS := True;
    RE.ModifierG := False;
    re.Expression:='=(.*?)class(.*?)end;';
    if re.Exec(lScript.Text) then
    begin
      s:=re.Match[0];
      List.Text:=s;
      if list.Count=0 then
      exit;
      if not(ContainsText(list.Strings[0],'class')) then
      exit;
      list.Delete(0);
      for I := 0 to List.Count - 1 do
      begin
        s:=trim(list.Strings[i]);
        if ContainsText(s,'procedure') then
        continue;
        if ContainsText(s,'function') then
        continue;
        j:=pos(':',s);
        if j<=0 then
        continue;
        vs:=copy(s,1,j-1);
        typeName:=Trim(copy(s,j+1,length(s)-j));
        typeName:=ReplaceText(typeName,';','');
        l2.Text:=ReplaceText(vs,',',#13#10);
        for j:=0 to L2.Count - 1 do
        begin
          cds.Append;
          cds.FieldByName('caption').AsString:=inlineHelp.formatStr('var',1)+'~'+trim(l2.Strings[j])+'~:'+typeName+';';
          cds.FieldByName('value').AsString:=trim(l2.Strings[j]);
          cds.FieldByName('RecNo').AsInteger:=0;
          cds.Post;
//          globalVarList.Add(inlineHelp.formatStr('var',1)+'~'+trim(l2.Strings[j])+'~:'+typeName+';');
//          globalVarListv.Add(trim(l2.Strings[j]));
        end;
      end;
    end;
    
    re.Expression:='end;(.*?)implementation';
    if re.Exec(lScript.Text) then
    begin
      s:=re.Match[0];
      s:=ReplaceText(s,#13#10,' ');
      re.Expression:='var (.*?)implementation';
      if re.Exec(s) then
      begin
        s:=re.Match[0];
        s:=ReplaceText(s,'var ','');
        s:=ReplaceText(s,'implementation','');
        s:=ReplaceText(s,#13#10,'');
        list.Text:=ReplaceText(s,';',#13#10);
        for I := 0 to List.Count - 1 do
        begin
          s:=trim(list.Strings[i]);
          j:=pos(':',s);
          if j<=0 then
          continue;               
          vs:=copy(s,1,j-1);
          typeName:=trim(copy(s,j+1,length(s)-j));
          typeName:=ReplaceText(typeName,';','');
          l2.Text:=ReplaceText(vs,',',#13#10);
          for j:=0 to L2.Count - 1 do
          begin
            cds.Append;
            cds.FieldByName('caption').AsString:=inlineHelp.formatStr('var',1)+'~'+trim(l2.Strings[j])+'~:'+typeName+';';
            cds.FieldByName('value').AsString:= trim(l2.Strings[j]);
            cds.FieldByName('RecNo').AsInteger:=0;
            cds.Post;
//            globalVarList.Add(inlineHelp.formatStr('var',1)+'~'+trim(l2.Strings[j])+'~:'+typeName+';');
//            globalVarListv.Add(trim(l2.Strings[j]));
          end;
        end;
      end;
    end;
    globalVarList.Sort;
    globalVarListv.Sort;
  finally
    re.Free;
    List.Free;
    l2.Free;
  end;
end;

procedure TInlineHelpParser.processUses;
var
  re: TRegExpr;
  s: string;

  i: Integer;
  l2:TStringList;
  sql:Widestring;
  cds:TClientDataSet;
  Data:Variant;
  Stream:TMemoryStream;
begin
  re:=TRegExpr.Create;
  l2:=TStringList.Create;
  cds:=TClientDataSet.Create(Nil);
  try
    RE.ModifierI := True;
    RE.ModifierS := True;
    RE.ModifierG := False;
    re.Expression:='uses(.*?);';
    if re.Exec(lScript.Text) then
    repeat
      l2.Text:=l2.Text + ReplaceText(re.Match[1],',',#13#10);
    until not(re.ExecNext);
//    re.Expression:='uses'#$D#$A'(.*?);';
//    if re.Exec(lScript.Text) then
//    repeat
//      l2.Text:=l2.Text + ReplaceText(re.Match[1],',',#13#10);
//    until not(re.ExecNext);
    s:='';
    for I := 0 to L2.Count - 1 do
    if trim(l2.Strings[i])<>EmptyStr then
    s:=s+','+quotedStr(Trim(l2.Strings[i])+'.pas');

    if length(s)=0 then
    exit;
    delete(s,1,1);
    sql:=' select Name,File_contents from opp_Tasks '+
         ' where id_Tasks_Type=5 and '+
         ' Name in ('+s+')';
//    data:=Config.dmRunSQLFast(sql,null,null,0);
//    if varisNull(data) or (varISempty(Data)) then
    exit;
    cds.Data:=Data;
    cds.First;
    while not(cds.Eof) do
    begin
      Stream:=TMemoryStream(cds.CreateBlobStream(cds.FieldByName('File_Contents'),bmRead));
      try
        Stream.Position:=0;
        l2.LoadFromStream(Stream);
        FillMethodsList(l2.Text,true);
      finally
        Stream.Free;
      end;
      cds.Next;
    end;
  finally
    re.Free;
    l2.Free;
    cds.Free;
  end;
end;



procedure TInlineHelpParser.FillMethodsList(lText:String;ignoreClassMethods:Boolean=false);
var
  re,re2,re3: TRegExpr;
  s,sText: string;
  aName: string;
  l2:TStringList;
begin
  methodsList.Clear;
  methodsListV.Clear;
  re:=TRegExpr.Create;
  re2:=TRegExpr.Create;
  re3:=TRegExpr.Create;

  l2:=TStringList.Create;
  try
    RE.ModifierI := True;
    RE.ModifierS := True;
    RE.ModifierG := False;

    RE2.ModifierI := True;
    RE2.ModifierS := True;
    RE2.ModifierG := False;

    RE3.ModifierI := True;
    RE3.ModifierS := True;
    RE3.ModifierG := False;



    re.Expression := 'implementation(.*?)end[.]';
    if not(re.Exec(lText)) then
    exit;
    sText:=re.Match[0];
    re.Expression:='procedure (.*?)begin';
    l2.Text:=sText;
    re2.Expression:='procedure (.*?)[)]';
    re3.Expression:='procedure (.*?);';
    if re.Exec(sText) then
    repeat
      s:=re.Match[0];
      if re2.exec(s) then
        s:=re2.Match[0]+';' else
      if re3.exec(s) then
        s:=re3.Match[0];

      if (ignoreClassMethods)and (AnsiContainsText(s,'.')) then
      Continue;

      s:=getMethodNameByText(s,aName);
      if not(SameText(s,currentMethodName)) then
      begin
        s:=trim(ReplaceText(s,'procedure',''));

        cds.Append;
        cds.FieldByName('Caption').AsString:=inlineHelp.formatStr('procedure',1)+'~'+s;
        cds.FieldByName('Value').AsString:=aName;
        cds.FieldByName('RecNo').AsInteger:=1;
        cds.Post;

//        methodsList.Add(inlineHelp.formatStr('procedure',1)+'~'+s);
//        methodsListV.Add(aName);
      end;
    until not(re.ExecNext);

    re.Expression:= 'function (.*?)begin';
    re2.Expression:='function (.*?)[)]';
    re3.Expression:='function (.*?);';
    if re.Exec(sText) then
    repeat
      s:=re.Match[0];
      if re2.exec(s) then
        s:=re2.Match[0]+';' else
      if re3.exec(s) then
        s:=re3.Match[0];

      if (ignoreClassMethods)and (AnsiContainsText(s,'.')) then
      Continue;
      
      s:=getMethodNameByText(s,aName);
      if not(SameText(s,currentMethodName)) then
      begin
        s:=trim(ReplaceText(s,'function',''));

        cds.Append;
        cds.FieldByName('Caption').AsString:=inlineHelp.formatStr('function',2) + '~'+s;
        cds.FieldByName('Value').AsString:=aName;
        cds.FieldByName('RecNo').AsInteger:=1;
        cds.Post;
//        methodsList.Add(inlineHelp.formatStr('function',2) + '~'+s);
//        methodsListV.Add(aName);
      end;
    until not(re.ExecNext);

    methodsList.Sort;
    methodsListV.Sort;

  finally
    re.Free;
    re2.Free;
    re3.Free;
    l2.Free;
  end;
end;


function TInlineHelpParser.getMethodNameByText(mText: string;var aName:String): string;
var
  s: string;
  prefix: string;
  i: Integer;
begin
  s := mText;
  if ContainsText(mText, 'procedure') then
  begin
    s := ReplaceText(s, 'procedure', '');
    prefix := inlinehelp.formatStr('procedure',-1);
  end
  else
  begin
    s := ReplaceText(s, 'function', '');
    prefix := inlinehelp.formatStr('function',0);
  end;
  i := pos('.', s);
  if i > 0 then
    s := copy(s, i + 1, length(s) - i);
  i:=pos('(',s);
  if i>0 then
  begin
    aName:=trim(copy(s,1,i-1))+'();';
    s:=trim(replaceTExt(s,'(','~('));
  end
  else
  begin
    aName:=trim(s);
    s:=replaceText(trim(s),';','~;');
  end;
  result:=trim(prefix)+trim(s);
end;

procedure TInlineHelpParser.FillCurrentMethodName;
var
  i: Integer;
  s: string;
  aName:String;
begin
  currentMethodNamePos:=0;
  currentMethodName := '';
  s := lScript.Strings[yPos];
  if AnsiContainsText(s, 'procedure') or
    AnsiContainsText(s, 'function') then
    exit;

  for I := yPos - 1 downto 0 do
  begin
    s := lScript.Strings[i];
    if AnsiContainsText(s, 'procedure') or
      AnsiContainsText(s, 'function') then
    begin
      currentMethodName:=getMethodNameByText(s,aName);
      currentMethodNamePos:=i;
      exit;
    end;
  end;
end;

end.

