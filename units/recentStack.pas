unit recentStack;

interface
uses SysUtils,classes;

Type TRecentStack = class
private
  recentList:TStringList;
public
  constructor Create;
  Destructor Destroy;override;
  procedure Push(unitName:String);
  function Pop:String;
  function isEmpty:Boolean;
  procedure clear;
end;

implementation

constructor TRecentStack.Create;
begin
  recentList := TStringList.Create;
end;

destructor TRecentStack.Destroy;
begin
  recentList.Free;
end;

procedure TRecentStack.clear;
begin
  recentList.Free;
end;

function TRecentStack.isEmpty:Boolean;
begin
  result:=recentList.Count = 0;
end;

function TRecentStack.Pop:String;
begin
  if not(isEmpty) then
  begin
    result:=recentList.Strings[recentList.Count-1];
    recentList.Delete(recentList.Count-1);
  end;
end;

procedure TRecentStack.Push(unitName: string);
begin
  recentList.Add(unitName);
end;

end.
