unit VVApp;



interface

uses  classes, sysutils,dcdreamlib,dcsystem;

type
TVVFilerID=string;

TVVIDEObject=CLASS;

TVVSaveObjectClass=class of TVVSaveObject;

TIDEObjectParam=(opNoRecentFile,opNoSmartOpen{,opCanBeOnlyOne});
TIDEObjectParams=set of TIDEObjectParam;


TVVSaveObject = class
  private
    FIDEObject:TVVIDEObject;
  public
    constructor Create(IDEObject:TVVIDEObject);virtual;
    procedure SaveProc(const FileName:TFileName; const FilerID:TVVFilerID);virtual;abstract;
    property IDEObject:TVVIDEObject Read FIDEObject;
  end;

TVVOpenObject = class
  private
    FCompound:TVVIDEObject;
  public
    constructor Create(Compound:TVVIDEObject);virtual;
    function OpenFrom(const FileName:TFileName;
            const FilerID:TVVFilerID):TVVIDEObject;virtual;abstract;
    property Compound:TVVIDEObject Read FCompound;
  end;



TVVIDEObject = class(TComponent{_TIDEObject})
  private
    FFilerID:TVVFilerID;
    FFileName:TFileName;
    FOldFilename:TFileName;
    FOldFilerID:TVVFilerID;
    FWasSaved:boolean;
    FSaveClass:TVVSaveObjectClass;
    FRefCount:Integer;
    FClosed:boolean;
    FModifiedDuringOpen:boolean;
    procedure SetVisible(Value:boolean);
    procedure SetFocusedValue(Value:boolean);
    procedure SetClosed(Value:boolean);
  protected
    function GetModifiedDuringOpen:boolean;virtual;
    procedure SetFileName(const Value:TFileName);virtual;
    procedure SetFilerID(const Value:TVVFilerID);virtual;
    function GetVisible:boolean;virtual;
    function GetObjectParams:TIDEObjectParams;virtual; //!!!
    procedure SetModifiedFalse;virtual;
    procedure InternalCreate(const FileName:TFileName; const FilerID:TVVFilerID);virtual;
    function GetFileExt:String;virtual;
    function GetDisplayName:String;virtual;
    function GetDefaultSaveClass:TVVSaveObjectClass;virtual;
    function GetObjectName:String;virtual;
    function GetModified:boolean;virtual;
    function GetFocused:boolean;virtual;
//    procedure BeforeClose;virtual;
    procedure ObjectCreated; virtual;
  public
    function HasEqualFileName(IDEObject:TVVIDEObject):boolean;
    function OldNameIsSame:boolean;
    procedure FixupReferences;virtual;

    function GetObjectProps:String;virtual;
    procedure PropsChanged;

    function GetInstance:TComponent;virtual;
    procedure RemoveFrom(IDEObject:TVVIDEObject);virtual;
    procedure Hide;virtual;
    procedure Show;

    procedure CreateFromStream(Stream:TStream);virtual;
    procedure UseObjects(ObjectList:TList);virtual;
    function CanUseObject(IDEObject:TVVIDEObject):boolean;virtual;
    procedure GetUsedObjects(UsedObjects:TStrings);virtual;
    procedure GetReferencedObjects(RefObjects:TList);virtual;
    procedure AddTo(IDEObject:TVVIDEObject);virtual;
    procedure SetFocused;virtual;
    function ExportTo(const FileName:TFileName; const FilerID:TVVFilerID;SaveClass:TVVSaveObjectClass):boolean;virtual;
    function SaveTo(const FileName:TFileName; const FilerID:TVVFilerID;SaveClass:TVVSaveObjectClass):boolean;

    function ValidObjectName(const ObjName:String):boolean;virtual;
    constructor Create(AOwner:TComponent);override;
    constructor CreateFrom(const FileName:TFileName; const FilerID:TVVFilerID);virtual;
    constructor CreateNew(const FileName:TFileName; const FilerID:TVVFilerID;Dummy:Integer);virtual;
    function CanClose:boolean;virtual;
    destructor Destroy;override;
    procedure CutToClipboard;virtual;
    procedure PasteFromClipboard;virtual;
    procedure CopyToClipboard;virtual;
    procedure DeleteSelection;virtual;
    procedure SelectAll;virtual;
    procedure Undo;virtual;
    procedure Redo;virtual;
    procedure Print;virtual;
    function CanPrint:boolean;virtual;
    procedure BrowseProperties;virtual;

    property ModifiedDuringOpen:boolean Read GetModifiedDuringOpen Write FModifiedDuringOpen;
    property FilerID:TVVFIlerID Read FFilerID write SetFilerID;
    property FileName:TFileName Read FFileName write SetFileName;
    property DisplayName:String Read GetDisplayName;
    property ObjectName:String Read GetObjectName;
    property FileExt:String read GetFileExt;
    property WasSaved:boolean Read FWasSaved;
    property Modified:boolean Read GetModified;
    property Closed:boolean Read FClosed Write SetClosed;
    property Focused:boolean Read GetFocused Write SetFocusedValue;
    property RefCount:Integer Read FRefCount;
    property Visible:boolean Read GetVisible Write SetVisible;
  published
  end;

 TVVIDEObjectListItem=class(TDCNamedItem)
  private
    FFileName:TFileName;
    FFilerID:TVVFilerID;
    FClassName:String;
    function GetShortName:String;
  public
    function RelatedObject:TVVIDEObject;
    property ShortName:String Read GetShortName;
  published
    property FileName:TFileName Read FFileName Write FFileName;
    property FilerID:TVVFilerID Read FFilerID Write FFilerID;
    property ObjectClassName:String Read FClassname Write FClassName;
  end;

  TVVIDEObjectList=class(TDCNamedItems)
  private
    function GetItem(Index:Integer):TVVIDEObjectListItem;
  public
    function AddObject(IDEObject:TVVIDEObject):TVVIDEObjectListItem;virtual;
    function RemoveObject(IDEObject:TVVIDEObject):TVVIDEObjectListItem;virtual;
    procedure MakePathsRelative(const AFileName:String; const AFilerID:string);
    procedure MakePathsAbsolute(const AFileName:String; const AFilerID:string);
    function  IndexOfOldObject(IDEObject:TVVIDEObject):Integer;
    function  IndexOfFileName(const AFileName:TFileName;const AFilerID:TVVFilerID):Integer;
    function  IndexOfObject(IDEObject:TVVIDEObject;CheckOld:boolean):Integer;
    property  Items[Index:Integer]:TVVIDEObjectListItem Read GetItem;default;
  end;

    TVVIDEProjectItem = class(TVVIDEObjectListItem)
  private
    FOpened:boolean;
    FObjectProps:String;
  protected
  public
    function GetPropValue(const PropName:String):String;
    destructor Destroy;override;
  published
    property ObjectOpened:boolean Read FOpened Write FOpened;
    property ObjectProps:String Read FObjectProps Write FObjectProps;
  end;

  TVVIDEProjectItems = class(TVVIDEObjectList)
  public
    procedure Update(Item: TCollectionItem); override;
    procedure UpdateObjectProps;
    function AllObjectsOpened:boolean;
    function AddObject(IDEObject:TVVIDEObject):TVVIDEObjectListItem;override;
  end;

  TVVCustomIDEProject = class(TVVIDEObject)
  private
    FModified:boolean;
    FProjectItems:TVVIDEProjectItems;
    FStrictWithNames:boolean;
    procedure SetProjectItems(Value:TVVIDEProjectItems);
  protected
    procedure FillProjectItems(IDEObject:TVVIDEObject);
    procedure FillProjectIterator(Item:TObject;ItemIndex:Integer;Var Continue:boolean);
    procedure InternalCreate(const FileName:TFileName; const FilerID:TVVFilerID);override;
    function GetModified:boolean;override;
    procedure SetModifiedFalse;override;
    function GetDefaultSaveClass:TVVSaveObjectClass;override;
  public
    procedure CreateFromStream(Stream:TStream);override;
    function SaveProjectFiles:boolean;
    procedure SetModifiedTrue;
    procedure ObjectsToList(ObjList:TList;Compound:TVVIDEObject);
    function  ProjectItemByShortName(const ShortName:String):TVVIDEProjectItem;
    function OpenProjectItems(IDEObject:TVVIDEObject;
                AllObjects:boolean):boolean;
    function  ExportTo(const FileName:TFileName; const FilerID:TVVFilerID;SaveClass:TVVSaveObjectClass):boolean;override;
    destructor Destroy;override;
    procedure ClearProject;
    procedure AddToProject(IDEObject:TVVIDEObject);virtual;
    procedure RemoveFromProject(IDEObject:TVVIDEObject);
    property  ProjectItems:TVVIDEProjectItems Read FProjectItems Write SetProjectItems;
    property  StrictWithNames:boolean Read FStrictWithNames;
  published
  end;


  TVVIDEProject = class(TVVCustomIDEProject)
  protected
    procedure InternalCreate(const FileName:TFileName; const FilerID:TVVFilerID);override;
  public
    RunHandle : Integer;
    procedure AddTo(IDEObject:TVVIDEObject);override;// ???
    destructor Destroy;override;
    {$IFNDEF CLX}
    //procedure CMIDESAVETO(Var Message:TMessage);message CM_IDESAVETO;
    //procedure CMIDEOBJPROPSCHANGED(Var Message:TMessage);message CM_IDEOBJPROPSCHANGED;
    //procedure CMIDEADDTO(Var Message:TMessage);message CM_IDEADDTO;
    //procedure CMOBJDESTROYED(Var Message:TMessage);message CM_OBJDESTROYED;
    {$ENDIF}
  published
    property ProjectItems;
  end;


  TVVIDEApplication= class(TVVIDEProject)
  public
  end;

implementation

end.
