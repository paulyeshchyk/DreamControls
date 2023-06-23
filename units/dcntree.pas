{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
unit dcntree;

interface
{$I dc.inc}
Uses
  {$IFDEF D6}
  RTLConsts,
  {$ENDIF}
  Messages,Windows,CommCtrl,
  Classes,ComCtrls,Controls,Forms,Graphics{$IFDEF D4},ImgList{$ENDIF},StdCtrls,
  dcToolTip,FontMan{$IFDEF D4},FlatSB{$ENDIF};

Const
  DM_SETCANVAS     = WM_USER+1;        // Message should be deleted.
  DM_MEASURE       = DM_SETCANVAS+1;
  DM_DRAW          = DM_MEASURE+1;
  DM_SETRECT       = DM_DRAW+1;
  DM_SETPARENT     = DM_SETRECT+1;
  DM_SETTEXT       = DM_SETPARENT+1;
  DM_SETOTHERINFO  = DM_SETTEXT+1;
  DM_SHOWEDITOR    = DM_SETOTHERINFO+1;
  DM_HIDEEDITOR    = DM_SHOWEDITOR+1;
  DM_CANCELCHANGES = DM_HIDEEDITOR+1;
  DM_SAVECHANGES   = DM_CANCELCHANGES+1;
  DM_KILLFOCUS     = DM_SAVECHANGES+1;
  DM_GETMODIFIED   = DM_KILLFOCUS+1;
  DM_SETEDITORDATA = DM_GETMODIFIED+1;
  DM_GETALWAYSEDIT = DM_SETEDITORDATA+1;

  TextSpace=1;
  FocusSpace=1; //line left and right on focus

  DragHorzSpace=5;
  DragVertSpace=5;
  DragScrollSpace=10;

  {$IFNDEF D3}
  SPI_GETWHEELSCROLLLINES =$0068;
  WM_MOUSEWHEEL           =$020A;
  {$ENDIF}
  //Errors
  SErrInvalidIndex='Index out of bounds (%d)';
  SErrInvalidValue='Invalid value';
Type
  TDrawTextFlag=(dtfCalcRect,dtfEndEllipsis,dtfPathEllipsis,dtfSingleLine,dtfWordBreak,dftPrefix);
  TDrawTextFlags=Set of TDrawTextFlag;

  THorzAlign=(haLeft,haCenter,haRight);
  TVertAlign=(vaTop,vaCenter,vaBottom);

  TDCCanvasFlag=(cfNoTextFill);
  TDCCanvasFlags=Set Of TDCCanvasFlag;

  TPattern=Byte;

  TWordWrapSize=Record
    Left,Right:Integer;
  End;

  { TDCCanvas }

  TDCCanvas=Class(TControlCanvas)
  Private
    FBrushColor:TColor;
    FDotHorzPattern:THandle;
    FDotHorzPatternDC:THandle;
    FDotPatternLen:Integer;
    FDotVertPattern:THandle;
    FDotVertPatternDC:THandle;
    FFlags:TDCCanvasFlags;
    FPattern:TPattern;
    FPatternChanged:Boolean;
    FPatternsCreated:Boolean;
    FPenColor:TColor;
    FTextHorzAlign:THorzAlign;
    FTextVertAlign:TVertAlign;
    Procedure CheckDotPatterns;
    Procedure CreateDotPatterns;
    Procedure FreeDotPatterns;
    Procedure InitPatterns;
    Function MirrorPattern(SourcePattern:TPattern):TPattern;
    Procedure SetPattern(Value:TPattern);
  Public
    Constructor Create;
    Destructor Destroy;override;

    Procedure DrawFocusRect(const ARect:TRect);
    Procedure DrawText(const Text:String;Var ARect:TRect;Flags:TDrawTextFlags);
    Procedure DrawHorzDotLine(X1,Y,X2:Integer);
    Procedure DrawVertDotLine(X,Y1,Y2:Integer);
    Procedure FillRectExclude(const ARect,AExcludeRect:TRect);

    Property Flags:TDCCanvasFlags read FFlags write FFlags;
    Property Pattern:TPattern read FPattern write SetPattern;
    Property TextHorzAlign:THorzAlign read FTextHorzAlign write FTextHorzAlign;
    Property TextVertAlign:TVertAlign read FTextVertAlign write FTextVertAlign;
  End;

  TDCTreeNode=Class;
  TDCTreeNodes=Class;
  TDCCustomTreeView=Class;

  TNodePart=(npLines,npButton,npCheckBox,npStateImage,npImage,npText);
  TNodeParts=Set Of TNodePart;

  TNodeStateItem=({NodeState}
                  nsAllowGrayed,nsCut,nsDeleting,nsDropTarget,nsExpanded,
                  nsFocused,nsHasChildren,nsReadOnly,nsSelected,
                  {CalcState}
                  nsWidthCalculated,nsHeightCalculated,
                  {ParentState}
                  nsParentColor,nsParentFont);
  TNodeState=Set Of TNodeStateItem;

  TDCNodeDispInfo=Array[TNodePart] Of TRect;

  TDCHitTest=(dhtNowhere,dhtAbove,dhtBelow,dhtToLeft,dhtToRight,
              dhtOnItem,dhtOnIndent,dhtOnButton,dhtOnCheckBox,
              dhtOnStateIcon,dhtOnIcon,dhtOnLabel,dhtOnRight);
  TDCHitTests=Set Of TDCHitTest;

  TDCPosInfo=Record
    HitTests:TDCHitTests;
    Node:TDCTreeNode;
  End;

  TChildInfo=Record
    MaxWidthNode:TDCTreeNode;
    MaxWidth:Integer;
    ExpandedCount:Integer;
    FirstNode:TDCTreeNode;
    LastNode:TDCTreeNode;
    ItemCount:Integer;
    ChildCount:Integer;
  End;

  TDCNodeType=(ntNone,ntCheckBox,ntRadioButton);

  TDCScrollMode=(smLineLeft, smPageLeft, smToLeft, smLineUp,  smPageUp,  smToTop,
                 smLineRight,smPageRight,smToRight,smLineDown,smPageDown,smToBottom);

  TDTVCompare = function(lParam1,lParam2,lParamSort:Longint):Integer;stdcall;

  TDCTreeNode=Class(TPersistent)
  Private
    FCachedHeight:Integer;
    FCachedWidth:Integer;
    FChildInfo:TChildInfo;
    FColor:TColor;
    FData:Pointer;
    FFont:TFont;
    FImageIndex:Integer;
    FNodeNext:TDCTreeNode;
    FNodePrev:TDCTreeNode;
    FOverlayIndex:Integer;
    FOwner:TDCTreeNodes;
    FParent:TDCTreeNode;
    FRadioChecked:TDCTreeNode;
    FSelectedIndex:Integer;
    FStateIndex:Integer;
    FTreeView:TDCCustomTreeView;

    FNodeState:TNodeState;
    FNodeType:TDCNodeType;
    FState:TCheckBoxState;
    Procedure CreateFont(Value:TFont);
    Function GetAbsoluteIndex:Integer;
    Function GetAbsolutePoint:TPoint;
    Function GetAbsolutePointY:Integer;
    Function GetAllowGrayed:Boolean;
    Function GetButtonRect:TRect;
    Function GetChecked:Boolean;
    Function GetCount:Integer;
    Function GetCut:Boolean;
    Function GetDeleting:Boolean;
    Function GetDropTarget:Boolean;
    Function GetExpanded:Boolean;
    Function GetExpandedCount:Integer;
    Function GetFocused:Boolean;
    Function GetFontColor:TColor;
    Function GetFontStyle:TFontStyles;
    Function GetHasChildren:Boolean;
    Function GetIndex:Integer;
    Function GetIsVisible:Boolean;
    Function GetItem(Index:Integer):TDCTreeNode;
    Function GetLevel:Integer;
    Function GetInternalFont:TFont;
    Function GetReadOnly:Boolean;
    Function GetSelected:Boolean;
    Function GetSymbolRect(const ButtonRect:TRect):TRect;
    Function GetWidth:Integer;
    Procedure IncExpandedCount(Delta:Integer);
    Procedure IncItemCount(Delta:Integer);
    Procedure InternalDeleteChildren;
    Procedure InternalSetSelected(Value:Boolean);
    Function IsColorStored:Boolean;
    Function IsFontStored:Boolean;
    Procedure OnFontChanged(Sender:TObject);
    Procedure SetAllowGrayed(Value:Boolean);
    Procedure SetChecked(Value:Boolean);
    Procedure SetColor(Value:TColor);
    Procedure SetCut(Value:Boolean);
    Procedure SetData(Value:Pointer);
    Procedure SetDropTarget(Value:Boolean);
    Procedure SetExpanded(Value:Boolean);
    Procedure SetFocused(Value:Boolean);
    Procedure SetFontColor(Value:TColor);
    Procedure SetFontStyle(Value:TFontStyles);
    Procedure SetHasChildren(Value:Boolean);
    Procedure SetImageIndex(Value:Integer);
    Procedure SetItem(Index:Integer;Value:TDCTreeNode);
    Procedure SetNodeType(Value:TDCNodeType);
    Procedure SetOverlayIndex(Value:Integer);
    Procedure SetParent(AParent:TDCTreeNode);
    Procedure SetParentColor(Value:Boolean);
    Procedure SetParentFont(Value:Boolean);
    Procedure SetReadOnly(Value:Boolean);
    Procedure SetSelected(Value:Boolean);
    Procedure SetSelectedIndex(Value:Integer);
    Procedure SetState(Value:TCheckBoxState);
    Procedure SetStateIndex(Value:Integer);
    Procedure SetText(const Value:String);
    Procedure UpdateAutoCheck;
    Procedure UpdateButton;
  Protected
    FDCParent:TDCTreeNode;
    FText:String;
    Function AllowPaint:Boolean;
    Procedure CalcMaxWidthInfo;
    Function DisplayRectPart(FromPart,ToPart:TNodePart;IsSmart:Boolean):TRect;virtual;
    Procedure DrawCheckBox(const ARect:TRect);virtual;
    Procedure DrawStateImage(const ARect:TRect);virtual;
    Procedure DrawImage(const ARect:TRect);virtual;
    Function GetCheckBoxWidth:Integer;virtual;
    Function GetFont:TFont;
    Function GetHeight:Integer;virtual;
    Function GetIndent:Integer;
    Function GetIndentInternal:Integer;virtual;
    Function GetImageWidth:Integer;virtual;
    Function GetNextVisibleExternal:TDCTreeNode;virtual;
    Function GetNextVisibleRect(IsForward:Boolean;const ARect:TRect):TDCTreeNode;virtual;
    Function GetNextVisibleSimple:TDCTreeNode;
    Function GetNextVisibleNonExpanded:TDCTreeNode;
    Procedure GetNodeDispInfo(Var Result:TDCNodeDispInfo);virtual;
    Procedure GetNodeDispInfoByPos(Pos:TPoint;Var Result:TDCNodeDispInfo);virtual;
    Procedure GetNodeDispInfoEx(Var Result:TDCNodeDispInfo;IsSmart:Boolean);virtual;
    Function GetParentColor:Boolean;
    Function GetParentFont:Boolean;
    Function GetPosition:TPoint;virtual;
    Function GetPositionSmart:TPoint;virtual;
    Function GetPositionX:Integer;
    Function GetPositionY:Integer;
    Function GetPositionYSmart:Integer;
    Function GetPrevVisibleExternal:TDCTreeNode;virtual;
    Function GetPrevVisibleSimple:TDCTreeNode;
    Function GetShowCheckBox:Boolean;
    Function GetStateImageWidth:Integer;virtual;
    Function GetText:String;virtual;
    Function GetTextWidth:Integer;virtual;
    Function GetVisibleIndex:Integer;
    Function InTreeView:Boolean;
    Function InTreeViewVert:Boolean;
    Procedure Invalidate(const Parts:TNodeParts);
    Procedure InvalidateBelow(FromCurrent:Boolean);
    Procedure InvalidateChild(Const Parts:TNodeParts);
    Procedure InvalidateInternal(Const Parts:TNodeParts);
    Procedure InvalidateToRight(NodePart:TNodePart);
    Procedure NodeWidthChanged;
    Procedure ReadCustomData(Stream:TStream);virtual;
    Procedure ReSortNode;virtual;
    Procedure SetFont(Value:TFont);
    Procedure SetTextInternal(Const Value:String);virtual;
    Procedure UpdateWidth;
    Procedure WriteCustomData(Stream:TStream);virtual;

    Property Height:Integer read GetHeight;
    Property InternalFont:TFont read GetInternalFont;
    Property ShowCheckBox:Boolean read GetShowCheckBox;
    Property Width:Integer read GetWidth;
  Public
    Constructor Create(AOwner:TDCTreeNodes);virtual;
    Destructor Destroy;override;

    Function AlphaSort:Boolean;
    Procedure Assign(Source:TPersistent);override;
    Procedure Collapse(Recurse:Boolean);
    Function CustomSort(SortProc:TDTVCompare;Data:Longint):Boolean;virtual;
    Procedure Delete;
    Procedure DeleteChildren;
    Function DisplayRect(TextOnly:Boolean):TRect;virtual;
    Function EditText:Boolean;
    Procedure EndEdit(Cancel:Boolean);
    Procedure EnsureExpanded;
    Procedure Expand(Recurse:Boolean);
    Function GetFirstChild:TDCTreeNode;
    Function GetLastChild:TDCTreeNode;
    Function GetNext:TDCTreeNode;
    Function GetNextChild(Value:TDCTreeNode):TDCTreeNode;
    Function GetNextSibling:TDCTreeNode;
    Function GetNextVisible:TDCTreeNode;
    Function GetPrev:TDCTreeNode;
    Function GetPrevChild(Value:TDCTreeNode):TDCTreeNode;
    Function GetPrevSibling:TDCTreeNode;
    Function GetPrevVisible:TDCTreeNode;
    Function HasAsParent(Value:TDCTreeNode):Boolean;
    Function IndexOf(Value:TDCTreeNode):Integer;
    Procedure MakeVisible;
    Procedure MakeVisibleHorz;
    Procedure MakeVisibleVert;
    Procedure MoveTo(Destination:TDCTreeNode;Mode:TNodeAttachMode{$IFDEF D4};MakeVisible:Boolean=True{$ENDIF});virtual;
    Procedure SwitchToNextState;

    Property AbsoluteIndex:Integer read GetAbsoluteIndex;
    Property AbsolutePoint:TPoint read GetAbsolutePoint;
    Property Checked:Boolean read GetChecked write SetChecked;
    Property Count:Integer read GetCount;
    Property Cut:Boolean read GetCut write SetCut;
    Property Data:Pointer read FData write SetData;
    Property Deleting:Boolean read GetDeleting;
    Property DropTarget:Boolean read GetDropTarget write SetDropTarget;
    Property ExpandedCount:Integer read GetExpandedCount;
    Property Focused:Boolean read GetFocused write SetFocused;
    Property FontColor:TColor read GetFontColor write SetFontColor;
    Property FontStyle:TFontStyles read GetFontStyle write SetFontStyle;
    Property Index:Integer read GetIndex;
    Property IsVisible:Boolean read GetIsVisible;
    Property Item[Index:Integer]:TDCTreeNode read GetItem write SetItem;
    Property Level:Integer read GetLevel;
    Property Owner:TDCTreeNodes read FOwner;
    Property Parent:TDCTreeNode read FParent;
    Property Selected:Boolean read GetSelected write SetSelected;
    Property TreeView:TDCCustomTreeView read FTreeView;
    Property VisibleIndex:Integer read GetVisibleIndex;
  Published
    Property AllowGrayed:Boolean read GetAllowGrayed write SetAllowGrayed default False;
    Property Color:TColor read FColor write SetColor stored IsColorStored default clWindow;
    Property Expanded:Boolean read GetExpanded write SetExpanded default False;
    Property Font:TFont read GetFont write SetFont stored IsFontStored;
    Property HasChildren:Boolean read GetHasChildren write SetHasChildren default False;
    Property ImageIndex:Integer read FImageIndex write SetImageIndex default 0;
    Property NodeType:TDCNodeType read FNodeType write SetNodeType default ntNone;
    Property OverlayIndex:Integer read FOverlayIndex write SetOverlayIndex default -1;
    Property ReadOnly:Boolean read GetReadOnly write SetReadOnly default False;
    Property ParentColor:Boolean read GetParentColor write SetParentColor default True;
    Property ParentFont:Boolean read GetParentFont write SetParentFont default True;
    Property SelectedIndex:Integer read FSelectedIndex write SetSelectedIndex default 0;
    Property State:TCheckBoxState read FState write SetState default cbUnchecked;
    Property StateIndex:Integer read FStateIndex write SetStateIndex default -1;
    Property Text:String read GetText write SetText;
  End;

  TDCTreeNodeClass=Class Of TDCTreeNode;

  TDCTreeNodes=Class(TPersistent)
  Private
    FCacheNode:TDCTreeNode;
    FCacheIndex:Integer;
    FOwner:TDCCustomTreeView;

    Function GetCount:Integer;
    Function GetVisibleCount:Integer;
    Function GetVisibleItem(Index:Integer):TDCTreeNode;
    Function GetItem(Index:Integer):TDCTreeNode;
  Protected
    Procedure BeginLock;
    Procedure EndLock;
    Function GetFirstVisibleInTreeView:TDCTreeNode;
    Function GetFirstVisibleRect(const ARect:TRect):TDCTreeNode;
    Function InternalAdd(Node:TDCTreeNode;const AText:String;
                         AData:Pointer;InsertType:TNodeAttachMode):TDCTreeNode;virtual;
    Procedure InternalClear;
    Procedure ClearCache;
  Public
    Constructor Create(AOwner:TDCCustomTreeView);
    Destructor Destroy;override;
    Function Add(Node:TDCTreeNode;const AText:String):TDCTreeNode;
    Function AddChild(Node:TDCTreeNode;const AText:String):TDCTreeNode;
    Function AddChildFirst(Node:TDCTreeNode;const AText:String):TDCTreeNode;
    Function AddChildObject(Node:TDCTreeNode;const AText:String;
                            Data:Pointer):TDCTreeNode;
    Function AddChildObjectFirst(Node:TDCTreeNode;const AText:String;
                                 Data:Pointer):TDCTreeNode;
    Function AddFirst(Node:TDCTreeNode;const AText:String):TDCTreeNode;
    Function AddObject(Node:TDCTreeNode;const AText:String;
                       Data:Pointer):TDCTreeNode;
    Function AddObjectFirst(Node:TDCTreeNode;const AText:String;
                            Data:Pointer):TDCTreeNode;
    Procedure Assign(Source:TPersistent);override;
    Procedure BeginUpdate;
    Procedure Clear;virtual;
    Procedure Delete(Node:TDCTreeNode);virtual;
    Procedure EndUpdate;
    Function GetFirstNode:TDCTreeNode;
    Function GetHitTest(X,Y:Integer):TDCPosInfo;
    Function GetLastNode:TDCTreeNode;
    Function GetLastVisibleNode:TDCTreeNode;
    Function Insert(Node:TDCTreeNode;const AText:String):TDCTreeNode;
    Function InsertObject(Node:TDCTreeNode;const AText:String;
                          Data:Pointer):TDCTreeNode;
    Function Locked:Boolean;

    Property Count:Integer read GetCount;
    Property Item[Index:Integer]:TDCTreeNode read GetItem; default;
    Property Owner:TDCCustomTreeView read FOwner;
    Property VisibleCount:Integer read GetVisibleCount;
    Property VisibleItem[Index:Integer]:TDCTreeNode read GetVisibleItem;
  End;

  { TDCTreePrintOptions }

  TDCPrintOption=(poHeader,poFooter,poShowProgress);
  TDCPrintOptions=Set Of TDCPrintOption;

  TDCTreePrintOptions=Class(TPersistent)
  Private
    FFooter:String;
    FFooterFont:TFont;
    FHeader:String;
    FHeaderFont:TFont;
    FOptions:TDCPrintOptions;
    FParentFooterFont:Boolean;
    FParentHeaderFont:Boolean;
    FParentPrintFont:Boolean;
    FPrintFont:TFont;
    FTitle:String;
    FTreeView:TDCCustomTreeView;
    Procedure SetFooterFont(Value:TFont);
    Procedure SetHeaderFont(Value:TFont);
    Procedure SetPrintFont(Value:TFont);
    Procedure SetParentFooterFont(Value:Boolean);
    Procedure SetParentHeaderFont(Value:Boolean);
    Procedure SetParentPrintFont(Value:Boolean);
  Public
    Constructor Create(AOwner:TDCCustomTreeView);
    Destructor Destroy;override;

    Procedure Assign(Source:TPersistent);override;
  Published
    Property Footer:String read FFooter write FFooter;
    Property FooterFont:TFont read FFooterFont write SetFooterFont;
    Property Header:String read FHeader write FHeader;
    Property HeaderFont:TFont read FHeaderFont write SetHeaderFont;
    Property ParentFooterFont:Boolean read FParentFooterFont write SetParentFooterFont default True;
    Property ParentHeaderFont:Boolean read FParentHeaderFont write SetParentHeaderFont default True;
    Property ParentPrintFont:Boolean read FParentPrintFont write SetParentPrintFont default True;
    Property PrintFont:TFont read FPrintFont write SetPrintFont;
    Property Title:String read FTitle write FTitle;
    Property Options:TDCPrintOptions read FOptions write FOptions default [];
  End;

  TDTVNodeEvent=Procedure(Sender:TObject;Node:TDCTreeNode) Of Object;

  TDTVChangingEvent=Procedure(Sender:TObject;Node:TDCTreeNode;
                              Var AllowChange:Boolean) Of Object;
  TDTVCollapsingEvent=Procedure(Sender:TObject;Node:TDCTreeNode;
                                Var AllowCollapse:Boolean) Of Object;
  TDTVCompareEvent=Procedure(Sender:TObject;Node1,Node2:TDCTreeNode;
                            Data:Integer;Var Compare:Integer) Of object;
  TDTVEditingEvent=Procedure(Sender:TObject;Node:TDCTreeNode;
                             Var AllowEdit:Boolean) Of Object;
  TDTVEditedEvent=Procedure(Sender:TObject;Node:TDCTreeNode;
                            Var NewText:String) Of Object;
  TDTVExpandingEvent=Procedure(Sender:TObject;Node:TDCTreeNode;
                               Var AllowExpansion: Boolean) Of Object;
  TDTVAfterEditingEvent=Procedure(Sender:TObject;Node:TDCTreeNode;Cancelled:Boolean) Of Object;
  TGetEditorClassEvent=Procedure(Sender:TObject;Node:TDCTreeNode;
                                 Var ControlClass:TControlClass) Of Object;
  TCreateNodeEvent=Procedure(Sender:TObject;Level: integer;
    Var NodeClass:TDCTreeNodeClass) Of Object;

  TDCValidateCode=(vcOk,vcCancel,vcContinueEditing);

  TDCValidateEditText=Procedure(Sender:TObject;Node:TDCTreeNode;Var Text:String;
                                Var ValidateCode:TDCValidateCode) Of Object;
  TRightClickAction=(raSelect,raMakeSelected,raNothing);

  TRightClickNodeEvent=Procedure(Sender:TObject;Node:TDCTreeNode;Var Action:TRightClickAction) Of Object;

  TDTVStateChangingEvent=Procedure(Sender:TObject;Node:TDCTreeNode;Var State:TCheckBoxState) Of Object;

  TDTVGetToolTipInfoEvent=Procedure(Sender:TObject;Node:TDCTreeNode;Var ToolTipText:String;Var ToolTipRect:TRect) Of Object;

  TAssignEditorPropsEvent = procedure (Sender : TObject; Node : TDCTreeNode; Editor : TControl) of object;

  TDCCheckBoxesType=(ctNone,ctAll,ctCustom);

  TDCRowSelectType=(rtPartial,rtFull);

  TDCSortOrder=(soAscending,soDescending);
  TDCDropTargetKind=(tkStandard,tkUp,tkDown);

{$IFDEF BCB}
{$IFDEF C3}
  {$DEFINE C3ONLY}
{$ENDIF}
{$ENDIF}

  {$IFDEF C3ONLY}
  TDragButton=TMouseButton;
  {$ELSE}
  TDragButton=mbLeft..mbRight;
  {$ENDIF}
  TDragButtons=Set Of TDragButton;

  { TDCCustomTreeView }

  TDCCustomTreeView=Class(TWinControl)
  Private
    FActiveSelectedColor:TColor;
    FActiveSelectedFontColor:TColor;
    {$IFDEF D4}
    FAllowFlatScrollBars:Boolean;
    {$ENDIF}
    FAllowMultiDrag:Boolean;
    FAutoExpand:Boolean;
    FAutoCheck:Boolean;
    FAutoCheckChildLock:Integer;
    FAutoCheckParentLock:Integer;
    FAutoScroll:Boolean;
    FBeginMouseSelect:Boolean;
    FBorderStyle:TBorderStyle;
    FChangeDelay:Integer;
    FCheckBoxesType:TDCCheckBoxesType;
    FDefaultNodeClass:TDCTreeNodeClass;
    FDisableEdit:Boolean;
    FDragExpandDelay:Integer;
    FDragExpandNode:TDCTreeNode;
    FDragObject:TDragObject;
    FDragNode:TDCTreeNode;
    FDropTargetKind:TDCDropTargetKind;
    FEditControls:TList;
    FEditTimerCreated:Boolean;
    FExpandOnDrag:Boolean;
    FExpandTimerCreated:Boolean;
    FExternalDrag:Boolean;
    FFlatBorder:Boolean;
    FFlatChecks:Boolean;
    FHideSelection:Boolean;
    FHighlightNode:TDCTreeNode;
    FHighLightPos:TPoint;
    FHotTrack:Boolean;
    FHotTrackNode:TDCTreeNode;
    FImages:TCustomImageList;
    FImagesLink:TChangeLink;
    FInactiveSelectedColor:TColor;
    FInactiveSelectedFontColor:TColor;
    FIndent:Integer;
    FIsEditing:Boolean;
    FIsValidating:Boolean;
    FLastDropTarget:TDCTreeNode;
    FLastDropTargetFinally:TDCTreeNode;
    FLinesColor:TColor;
    FLockCount:Integer;// Painting and invalidating
    FMakeVisibleNode:TDCTreeNode;
    FMultiLineNodes:Boolean;
    FMultiSelect:Boolean;
    FNeedSelectionChanged:Boolean;
    FNeedRecalc:Boolean;
    FNewFocused:TDCTreeNode;
    FNodes:TDCTreeNodes;
    FOldSelectX:Integer;
    FOldSelectY:Integer;
    FOnAfterEditing:TDTVAfterEditingEvent;
    FOnChanging:TDTVChangingEvent;
    FOnChange:TDTVNodeEvent;
    FOnCheckClick:TDTVNodeEvent;
    FOnCollapsing:TDTVCollapsingEvent;
    FOnCollapsed:TDTVNodeEvent;
    FOnCompare:TDTVCompareEvent;
    FOnCreateNode:TCreateNodeEvent;
    FOnDeletion:TDTVNodeEvent;
    FOnEdited:TDTVEditedEvent;
    FOnEditing:TDTVEditingEvent;
    FOnExpanding:TDTVExpandingEvent;
    FOnExpanded:TDTVNodeEvent;
    FOnAfterInsert:TDTVNodeEvent;
    FOnGetEditorClass:TGetEditorClassEvent;
    FOnGetImageIndex:TDTVNodeEvent;
    FOnGetSelectedIndex:TDTVNodeEvent;
    FOnGetToolTipInfo:TDTVGetToolTipInfoEvent;
    FOnRightClickNode:TRightClickNodeEvent;
    FOnSelectionChanged:TDTVNodeEvent;
    FOnStateChanged:TDTVNodeEvent;
    FOnStateChanging:TDTVStateChangingEvent;
    fOnAssignEditorProps : TAssignEditorPropsEvent;
    FOnValidateEditText:TDCValidateEditText;
    FPrintOptions:TDCTreePrintOptions;
    FQuickSearchTicks:Integer;
    FQuickSearchText:String;
    FReadOnly:Boolean;
    FRightClickSelect:Boolean;
    FRootNode:TDCTreeNode;
    FRowSelect:Boolean;
    FRowSelectType:TDCRowSelectType;
    FSavedOffsetX:Integer;
    FScrollBarHorzVisible:Boolean;
    {$IFDEF D4}
    FScrollBarsStyle:TScrollBarStyle;
    {$ENDIF}
    FScrollBarVertVisible:Boolean;
    FScrollHorzMaxWidth:Integer;
    FScrollTimerCreated:Boolean;
    FScrollXSum:Integer;
    FScrollYSum:Integer;
    FSelectFrameCleared:Boolean;
    FSelectionChangedLock:Integer;
    FSelectionTimerCreated:Boolean;
    FSelectOnlySiblings:Boolean;
    FSelectX:Integer;
    FSelectY:Integer;
    FShiftSelectNode:TDCTreeNode;
    FShowButtons:Boolean;
    FShowDragImage:Integer;
    FShowLines:Boolean;
    FShowRoot:Boolean;
    FSkipSetFocus:Boolean;
    FSortOrder:TDCSortOrder;
    FSortType:TSortType;
    FStateImages:TCustomImageList;
    FStateImagesLink:TChangeLink;
    FToolTip:TDCToolTip;
    FToolTips:Boolean;
    FTopItem:TDCTreeNode;
    FTopItemIndex:Integer;
    FTopItemNewIndex:Integer;
    FTopItemIndexCalculated:Boolean;
    FWheelDelta:Integer;
    FWordWrap:Boolean;

    Procedure AddEditControl(Control:TControl);
    Procedure CreateToolTips;
    Procedure DestroyEditControls;
    Procedure DestroyToolTips;
    Procedure DoSelectionChanged;
    Procedure DoUnHighlightNode;
    Function FindEditor(EditorClass:TControlClass):TControl;
    Function GetDropTarget:TDCTreeNode;
    Function GetExStyle:DWord;
    Function GetFocusBrushColor:TColor;
    Function GetFocusPenColor:TColor;
    Function GetScrollPos(fnBar:Integer;IsTrack:Boolean):Integer;
    Function GetSelected:TDCTreeNode;
    Function GetSelectedCount:Integer;
    Function GetSelectedItems(Index:Integer):TDCTreeNode;
    Function GetTopItemAbsPt:TPoint;
    Procedure HideToolTip;
    Procedure LockSelectionChanged;
    Procedure KillEditTimer;
    Procedure MouseSelectBegin(X,Y:Integer);
    Procedure MouseSelectCancel;
    Procedure MouseSelectProcess;
    Procedure MouseSelectUpdate(Node:TDCTreeNode);
    Function NormalizeRect(const ARect:TRect):TRect;
    Function PageDownItem(Node:TDCTreeNode):TDCTreeNode;
    Function PageUpItem(Node:TDCTreeNode):TDCTreeNode;
    Procedure PaintSelectFrame(X,Y:Integer);
    Procedure ProcessShiftSelect(Node:TDCTreeNode);
    Procedure RemoveHotTrackNode;
    Procedure ResetTextCache;
    Procedure ProcessCancelDrag;
    Procedure ProcessQuickSearch(AChar:Char);
    Procedure ReadData(Stream:TStream);//read items from stream
    Function RecalcExpandedCount(Node:TDCTreeNode):Integer;
    Procedure RecalcHorzInfo(RecalcWidth:Boolean);
    Procedure RemoveFromMultiSelect(Node:TDCTreeNode);
    Procedure RemoveKeyboardHook;
    Procedure SetActiveSelectedColor(Value:TColor);
    Procedure SetActiveSelectedFontColor(Value:TColor);
    Procedure SetAutoCheck(Value:Boolean);
    Procedure SetBorderStyle(Value:TBorderStyle);
    Procedure SetChangeDelay(Value:Integer);
    Procedure SetCheckBoxesType(Value:TDCCheckBoxesType);
    Procedure SetDefaultNodeClass(Value:TDCTreeNodeClass);
    Procedure SetDragExpandDelay(Value:Integer);
    Procedure SetDropTarget(Value:TDCTreeNode);
    Procedure SetDropTargetKind(Value:TDCDropTargetKind);
    Procedure SetEditParent;
    Procedure SetFlatChecks(Value:Boolean);
    Procedure SetFlatBorder(Value:Boolean);
    Procedure SetHideSelection(Value:Boolean);
    Procedure SetHorzScrollInfo(PageWidth,MaxWidth:Integer);
    Procedure SetHotTrack(Value:Boolean);
    Procedure SetImageList(AImageList:TCustomImageList;var Link:TChangeLink);
    Procedure SetImages(Value:TCustomImageList);
    Procedure SetInactiveSelectedColor(Value:TColor);
    Procedure SetInactiveSelectedFontColor(Value:TColor);
    Procedure SetIndent(Value:Integer);
    Procedure SetIndentInternal(Value:Integer);
    Procedure SetItems(Value:TDCTreeNodes);
    Procedure SetKeyboardHook;
    Procedure SetLinesColor(Value:TColor);
    Procedure SetMultiLineNodes(Value:Boolean);
    Procedure SetMultiSelect(Value:Boolean);
    Procedure SetPrintOptions(Value:TDCTreePrintOptions);
    Procedure SetRowSelect(Value:Boolean);
    Procedure SetRowSelectType(Value:TDCRowSelectType);
    {$IFDEF D4}
    Procedure SetScrollBarsStyle(Value:TScrollBarStyle);
    Procedure SetScrollBarsStyleInternal(Value:TScrollBarStyle);
    {$ENDIF}
    Procedure SetScrollPos(Code:Integer;Value:Integer);
    Procedure SetSelected(Node:TDCTreeNode);
    Procedure SetSelectedKey(Node:TDCTreeNode);//use for KeyDown proc
    Procedure SetSelectOnlySiblings(Value:Boolean);
    Procedure SetShowButtons(Value:Boolean);
    Procedure SetShowLines(Value:Boolean);
    Procedure SetShowRoot(Value:Boolean);
    Procedure SetSortOrder(Value:TDCSortOrder);
    Procedure SetSortType(Value:TSortType);
    Procedure SetStateImages(Value:TCustomImageList);
    Procedure SetToolTips(Value:Boolean);
    Procedure SetTopItem(Value:TDCTreeNode);
    Procedure SetVertScrollInfo(PageHeight,Maxheight:Integer);
    Procedure SetWordWrap(Value:Boolean);
    Procedure ScrollAbs(DeltaX,DeltaY:Integer);
    Function ScrollDelta(ATopItem,ADownItem:TDCTreeNode):Integer;
    Procedure ScrollByLines(LinesCount:Integer);
    Procedure ShowEditor;
    Procedure TopItemChanged;
    Procedure UnlockSelectionChanged;
    Procedure UpdateSelected;
    Procedure WriteData(Stream:TStream);//write data to stream

    //Read properties
    Procedure ReadCheckBoxes(Reader:TReader);
    Procedure ReadDrawData(Sream:TStream);
    Procedure ReadSelectDelay(Reader:TReader);
  Protected
    FBaseNodeClass:TDCTreeNodeClass;
    FCanvas:TDCCanvas;
    FDragButtons:TDragButtons;
    FDragged:Boolean;
    FDragImages:{$IFDEF D4}TDragImageList{$ELSE}TCustomImageList{$ENDIF};
    FDropTarget:TDCTreeNode;
    FEditControl:TControl;
    FEditNode:TDCTreeNode;
    FFocused:TDCTreeNode;
    FMouseButtonPressed:Boolean;
    FMouseDownX:Integer;
    FMouseDownY:Integer;
    FPrevClickItem:TDCTreeNode;
    FPrinting:Boolean;
    FOffsetX:Integer;
    FSelectedItems:TList;

    Procedure AfterScrollUpdate;virtual;
    Procedure AfterSetTopItem(Node:TDCTreeNode);virtual;
    Procedure AfterUpdateScrollBars;virtual;
    Function AllowDrawFocusRect(Node:TDCTreeNode):Boolean;virtual;
    Function AllowDrawText(Node:TDCTreeNode):Boolean;virtual;
    Function AllowShowToolTip:Boolean;virtual;
    Procedure BeforeScrollUpdate;virtual;
    Procedure BeforeSetTopItem(Value:TDCTreeNode);virtual;
    Procedure BeforeUpdateScrollBars;virtual;
    Function CalcVertPage(PageSize:TSize):Integer;
    Procedure CancelEdit;virtual;
    Function CanChange(Node:TDCTreeNode):Boolean;dynamic;
    function CanCollapse(Node:TDCTreeNode):Boolean;dynamic;
    Function CanExpand(Node:TDCTreeNode):Boolean;dynamic;
    Function CanEdit(Node:TDCTreeNode):Boolean;dynamic;
    Procedure Change(Node:TDCTreeNode);dynamic;
    Procedure CMColorChanged(Var Message:TMessage);message CM_COLORCHANGED;
    Procedure CMCtl3DChanged(Var Message:TMessage);message CM_CTL3DCHANGED;
    Procedure CMDrag(Var Message:TCMDrag);message CM_DRAG;
    Procedure CMFontChanged(Var Message:TMessage);message CM_FONTCHANGED;
    Procedure CMMouseLeave(Var Message:TMessage);message CM_MOUSELEAVE;
    Procedure CreateParams(var Params: TCreateParams);override;
    Function CreateRootNode:TDCTreeNode;virtual;
    Procedure CreateScrollTimer;
    Procedure CreateWnd;override;
    Procedure DefineProperties(Filer:TFiler);override;
    Procedure DeselectPrevious(Exclude:TDCTreeNode);
    Procedure DMCancelChanges(Var Message:TMessage);message DM_CANCELCHANGES;
    Procedure DMHideEditor(Var Message:TMessage);message DM_HIDEEDITOR;
    Procedure DMKillFocus(Var Message:TMessage);message DM_KILLFOCUS;
    Procedure DMSaveChanges(Var Message:TMessage);message DM_SAVECHANGES;
    Procedure DoAfterEditing(Node:TDCTreeNode;Cancel:Boolean);virtual;
    Procedure DoAfterInsert(Node:TDCTreeNode);virtual;
    Procedure DoBeforeDelete1(Node:TDCTreeNode);
    Procedure DoBeforeDelete2(Node:TDCTreeNode);
    Procedure DoCancelMode;virtual;
    Procedure DoCheckClick(Node:TDCTreeNode);dynamic;
    Procedure DoCollapsed(Node:TDCTreeNode);dynamic;
    Function DoCompare(Node1,Node2:TDCTreeNode):Integer;virtual;
    Procedure DoDeletion(Node:TDCTreeNode);dynamic;
    Procedure DoEdit(Node:TDCTreeNode;Var NewText:String);dynamic;
    Procedure DoExpandNode(Node:TDCTreeNode);virtual;
    Procedure DoExpanded(Node:TDCTreeNode);dynamic;
    Procedure DoValidateEditText(Node:TDCTreeNode;Var Text:String;
                                 Var ValidateCode:TDCValidateCode);virtual;
    Procedure DragOver(Source:TObject;X,Y:Integer;State:TDragState;
              Var Accept:Boolean);override;
    Procedure DoEndDrag(Target:TObject;X,Y:Integer);override;
    Procedure DoGetEditorClass(Node:TDCTreeNode;Var ControlClass:TControlClass);virtual;
    Procedure DoGetImageIndex(Node:TDCTreeNode);virtual;
    Procedure DoGetSelectedIndex(Node:TDCTreeNode);virtual;
    Procedure DoGetToolTipInfo(Node:TDCTreeNode;Var ToolTipText:String;Var ToolTipRect:TRect);
    Procedure DoRightClickNode(Node:TDCTreeNode;Var Action:TRightClickAction);virtual;
    Procedure DoStartDrag(Var DragObject:TDragObject);override;
    Procedure DoStateChanged(Node:TDCTreeNode);
    Procedure DoStateChanging(Node:TDCTreeNode;Var State:TCheckBoxState);
    Procedure DrawBackground(Node:TDCTreeNode;Const ARect:TRect);virtual;
    Procedure DrawEditor(Node:TDCTreeNode;Const AText:String;Const ADrawRect:TRect;AColumn:Integer);virtual;
    Procedure DrawNode(Node:TDCTreeNode;const ARect:TRect);virtual;
    Procedure DrawNodeButton(Node:TDCTreeNode;Const ARect:TRect);virtual;
    Procedure DrawNodeLines(Node:TDCTreeNode;const ARect:TRect);virtual;
    Procedure DrawNodeLineSection(Node,SourceNode:TDCTreeNode;const ARect:TRect);virtual;
    Procedure DrawNodeText(Node:TDCTreeNode;Const ARect:TRect);virtual;
    Procedure DrawTreeView(const DrawRect:TRect);virtual;
    Procedure FillRectExclude(Node:TDCTreeNode;Const ARect,ExcludeRect:TRect);
    Function GetAnotherHitTest(Pt:TPoint;Const DispInfo:TDCNodeDispInfo):TDCHitTests;virtual;
    Function GetDefaultEditorHeight(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
    function GetDefaultEditorWidth(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
    Function GetDefaultNodeBrushColor(Node:TDCTreeNode):TColor;virtual;
    Function GetDragImages:{$IFDEF D4}TDragImageList{$ELSE}TCustomImageList{$ENDIF};override;
    Function GetDrawRect:TRect;virtual;
    Function GetEditor(Node:TDCTreeNode;AColumn:Integer):TControl;virtual;
    Function GetEditorClass(Node:TDCTreeNode;AColumn:Integer):TControlClass;virtual;
    Function GetEditorHeight(Node:TDCTreeNode;Const AText:String; AColumn : integer):Integer;
    Function GetEditorWidth(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
    Function GetFirstVisibleNode:TDCTreeNode;virtual;
    Function GetFocusRect:TRect;
    Function GetHitTestRect:TRect;virtual;
    Function GetLastVisibleNode:TDCTreeNode;virtual;
    Function GetMaxWidth:Integer;virtual;
    Function GetNodeBackgroundColor(Node:TDCTreeNode):TColor;virtual;
    Function GetNodeBrushColor(Node:TDCTreeNode;Default:TColor):TColor;virtual;
    function GetNodeEditor(Node:TDCTreeNode):TControl;virtual;
    Function GetNodeFocusRect(Node:TDCTreeNode):TRect;virtual;
    Function GetNodeFontColor(Node:TDCTreeNode;Default:TColor):TColor;virtual;
    Function GetNodeWordWrapRect(Node:TDCTreeNode;AColumn:Integer):TWordWrapSize;virtual;
    Function GetNewTopItem(Value:TDCTreeNode;Var Delta:Integer):TDCTreeNode;virtual;
    Function GetPageSize:TSize;virtual;
    Function GetPrintWidth:Integer;virtual;
    Function GetRealPageSize:TSize;
    Function GetScrollRect(DelatX,DeltaY:Integer):TRect;virtual;
    Function GetSelectedColor(Node:TDCTreeNode;DefaultColor:TColor):TColor;
    Function GetTextForEditor(Node:TDCTreeNode):String;virtual;
    Function GetVisibleItem(Index:Integer):TDCTreeNode;virtual;
    Procedure HideDragImage;
    Procedure HighlightNode;dynamic;
    Procedure ImagesChanged(Sender:TObject);virtual;
    Procedure InternalDrawNode(Node:TDCTreeNode;Const DispInfo:TDCNodeDispInfo;
                               Const ARect:TRect);virtual;
    Procedure InvalidateRect(ARect:TRect);
    Procedure InvalidateSelected;
    Function IsColumnWordWrap(AColumn:Integer):Boolean;virtual;
    Function IsOnItem(X,Y:Integer):Boolean;virtual;
    Function IsSameAsPrev:Boolean;virtual;
    Function IsDownAndUpEqual(X,Y:Integer):Boolean;virtual;
    Function IsRowSelect:Boolean;virtual;
    Function IsSortLocked:Boolean;
    Function IsWordWrap:Boolean;
    Procedure KeyDown(Var Key:Word;Shift:TShiftState);override;
    Procedure KeyPress(Var Key:Char);override;
    Procedure KillScrollTimer;
    Procedure KillTimer(TimerID:Integer;Var Flag:Boolean);
    Procedure MakeEditNodeVisible(Node:TDCTreeNode);virtual;
    Procedure MouseMove(Shift:TShiftState;X,Y:Integer);override;
    Procedure MouseUp(Button:TMouseButton;Shift:TShiftState;X,Y:Integer);override;
    Procedure MultiSelectChanged;virtual;
    Function NodeHeight(Node:TDCTreeNode; AColumn : integer):Integer;virtual;
    Procedure NodeSelectionChanged(Node:TDCTreeNode);virtual;
    Function NodeWidth(Node:TDCTreeNode;AColumn:Integer):Integer;virtual;
    Procedure Notification(Component:TComponent;Operation:TOperation);override;
    Procedure OnColorChanged;virtual;
    Procedure OnEscapeKey;virtual;
    Procedure OnFontChanged;virtual;
    Procedure OnTimer(TimerID:Integer);virtual;
    Procedure ProcessHScroll(NewOffset:Integer);
    Procedure ProcessScrollTimer;virtual;
    Procedure RecalcAll;
    Procedure ResetCache;
    Procedure SelectionChanged;virtual;
    Procedure SetEditorRectAndText(Node:TDCTreeNode);virtual;
    Procedure SetEditInfo;
    Procedure SetEditRect(Const ARect:TRect;Bordered:Boolean);
    Procedure SetEditText(Const Text:String;SelectAll:Boolean);
    Procedure SetTimer(TimerID:Integer;Delay:Integer;Var Flag:Boolean);
    Procedure SetTopItemInternal(Value:TDCTreeNode);
    Procedure ShowDragImage;
    Function  StoreDrawData:Boolean;virtual;
    Procedure TryEditNode;virtual;
    Procedure UnHighlightNode;dynamic;
    Procedure UpdateBorder;
    Function UpdateCursorAt(X,Y:Integer):Boolean;virtual;
    Procedure UpdateDropTarget(X,Y:Integer);
    Procedure UpdateHotTrack;virtual;
    Procedure UpdateImageListLink(AImageList:TCustomImageList;Var Link:TChangeLink;OnChange:TNotifyEvent);
    Procedure UpdateScroll(IsUpdateScrollBars:Boolean;IsSetTopItem:Boolean);
    Procedure UpdateToolTip;virtual;
    Procedure WMCancelMode(Var Message:TMessage);message WM_CANCELMODE;
    Procedure WMCaptureChanged(Var Message:TMessage);message WM_CAPTURECHANGED;
    Procedure WMChar(Var Message:TMessage);message WM_CHAR;
    Procedure WMDestroy(Var Message:TMessage);message WM_DESTROY;
    Procedure WMEraseBkgnd(Var Message:TMessage);message WM_ERASEBKGND;
    Procedure WMHScroll(Var Message:TWMScroll);message WM_HSCROLL;
    Procedure WMGetDlgCode(Var Message:TMessage);message WM_GETDLGCODE;
    Procedure WMKeyDown(Var Message:TMessage);message WM_KEYDOWN;
    Procedure WMKillFocus(Var Message:TMessage);message WM_KILLFOCUS;
    Procedure WMLButtonDblClk(Var Message:TWMMouse);message WM_LBUTTONDBLCLK;
    Procedure WMLButtonDown(Var Message:TWMMouse);message WM_LBUTTONDOWN;
    Procedure WMLButtonUp(Var Message:TWMLButtonDown);message WM_LBUTTONUP;
    Procedure WMMouseWheel(Var Message:TMessage);message WM_MOUSEWHEEL;
    Procedure WMRButtonDown(Var Message:TWMRButtonDown);message WM_RBUTTONDOWN;
    Procedure WMRButtonUp(Var Message:TWMRButtonDown);message WM_RBUTTONUP;
    Procedure WMPaint(Var Message:TMessage);message WM_PAINT;
    Procedure WMSetCursor(Var Message:TMessage);message WM_SETCURSOR;
    Procedure WMSetFocus(Var Message:TMessage);message WM_SETFOCUS;
    Procedure WMSize(Var Message:TMessage);message WM_SIZE;
    Procedure WMTimer(Var Message:TMessage);message WM_TIMER;
    Procedure WMVScroll(Var Message:TWMScroll);message WM_VSCROLL;
    Procedure WMWindowPosChanged(Var Message:TWMWindowPosChanged);message WM_WINDOWPOSCHANGED;
    Procedure WndProc(Var Message:TMessage);override;
    Procedure WordWrapTree;

    Function CreateNode:TDCTreeNode;virtual;
    Procedure Delete(Node:TDCTreeNode);virtual;
    Procedure Edit(Node:TDCTreeNode;Var NewText:String);dynamic;
    Function EditNode(Node:TDCTreeNode):Boolean;

    Property ActiveSelectedColor:TColor read FActiveSelectedColor write SetActiveSelectedColor default clHighlight;
    Property ActiveSelectedFontColor:TColor read FActiveSelectedFontColor write SetActiveSelectedFontColor default clHighlightText;
    Property AllowMultiDrag:Boolean read FAllowMultiDrag write FAllowMultiDrag default False;
    Property AutoExpand:Boolean read FAutoExpand write FAutoExpand default False;
    Property AutoCheck:Boolean read FAutoCheck write SetAutoCheck default False;
    Property AutoScroll:Boolean read FAutoScroll write FAutoScroll default True;
    Property BorderStyle:TBorderStyle read FBorderStyle write SetBorderStyle default bsSingle;
    Property Canvas:TDCCanvas read FCanvas;
    Property ChangeDelay:Integer read FChangeDelay write SetChangeDelay default 0;
    Property CheckBoxesType:TDCCheckBoxesType read FCheckBoxesType write SetCheckBoxesType default ctNone;
    Property DefaultNodeClass:TDCTreeNodeClass read FDefaultNodeClass write SetDefaultNodeClass;
    Property DragButtons:TDragButtons read FDragButtons write FDragButtons default [mbLeft];
    Property DragExpandDelay:Integer read FDragExpandDelay write SetDragExpandDelay default 100;
    Property DropTargetKind:TDCDropTargetKind read FDropTargetKind write SetDropTargetKind default tkStandard;
    Property ExpandOnDrag:Boolean read FExpandOnDrag write FExpandOnDrag default True;
    Property FlatBorder:Boolean read FFlatBorder write SetFlatBorder default False;
    Property FlatChecks:Boolean read FFlatChecks write SetFlatChecks default False;
    Property HideSelection:Boolean read FHideSelection write SetHideSelection default True;
    Property HotTrack:Boolean read FHotTrack write SetHotTrack default False;
    Property Images:TCustomImageList read FImages write SetImages;
    Property InactiveSelectedColor:TColor read FInactiveSelectedColor write SetInactiveSelectedColor default clBtnFace;
    Property InactiveSelectedFontColor:TColor read FInactiveSelectedFontColor write SetInactiveSelectedFontColor default clBtnText;
    Property Indent:Integer read FIndent write SetIndent default 19;
    Property Items:TDCTreeNodes read FNodes write SetItems;
    Property LinesColor:TColor read FLinesColor write SetLinesColor default clBtnShadow;
    Property MultiLineNodes:Boolean read FMultiLineNodes write SetMultiLineNodes default False;
    Property PrintOptions:TDCTreePrintOptions read FPrintOptions write SetPrintOptions;
    Property ReadOnly:Boolean read FReadOnly write FReadOnly default False;
    Property RightClickSelect:Boolean read FRightClickSelect write FRightClickSelect default False;
    Property RootNode:TDCTreeNode read FRootNode;
    Property RowSelect:Boolean read FRowSelect write SetRowSelect default False;
    Property RowSelectType:TDCRowSelectType read FRowSelectType write SetRowSelectType default rtPartial;
    {$IFDEF D4}
    Property ScrollBarsStyle:TScrollBarStyle read FScrollBarsStyle write SetScrollBarsStyle default ssRegular;
    {$ENDIF}
    Property SelectOnlySiblings:Boolean read FSelectOnlySiblings write SetSelectOnlySiblings default False;
    Property ShowButtons:Boolean read FShowButtons write SetShowButtons default True;
    Property ShowLines:Boolean read FShowLines write SetShowLines default True;
    Property ShowRoot:Boolean read FShowRoot write SetShowRoot default True;
    Property SortOrder:TDCSortOrder read FSortOrder write SetSortOrder default soAscending;
    Property SortType:TSortType read FSortType write SetSortType default stNone;
    Property StateImages:TCustomImageList read FStateImages write SetStateImages;
    Property ToolTips:Boolean read FToolTips write SetToolTips default True;
    Property TopItem:TDCTreeNode read FTopItem write SetTopItem;
//    Property OnCustomDraw: TTVCustomDrawEvent read FOnCustomDraw write FOnCustomDraw;
//    Property OnCustomDrawItem: TTVCustomDrawItemEvent read FOnCustomDrawItem write FOnCustomDrawItem;
    Property WordWrap:Boolean read FWordWrap write SetWordWrap default False;
    Property OnAfterEditing:TDTVAfterEditingEvent read FOnAfterEditing write FOnAfterEditing;
    Property OnAfterInsert:TDTVNodeEvent read FOnAfterInsert write FOnAfterInsert;
    Property OnChanging:TDTVChangingEvent read FOnChanging write FOnChanging;
    Property OnChange:TDTVNodeEvent read FOnChange write FOnChange;
    Property OnCheckClick:TDTVNodeEvent read FOnCheckClick write FOnCheckClick;
    Property OnCollapsing:TDTVCollapsingEvent read FOnCollapsing write FOnCollapsing;
    Property OnCollapsed:TDTVNodeEvent read FOnCollapsed write FOnCollapsed;
    Property OnCompare:TDTVCompareEvent read FOnCompare write FOnCompare;
    Property OnCreateNode:TCreateNodeEvent read FOnCreateNode write FOnCreateNode;
    Property OnEditing:TDTVEditingEvent read FOnEditing write FOnEditing;
    Property OnEdited:TDTVEditedEvent read FOnEdited write FOnEdited;
    Property OnExpanding:TDTVExpandingEvent read FOnExpanding write FOnExpanding;
    Property OnExpanded:TDTVNodeEvent read FOnExpanded write FOnExpanded;
    Property OnDeletion:TDTVNodeEvent read FOnDeletion write FOnDeletion;
    Property OnGetEditorClass:TGetEditorClassEvent read FOnGetEditorClass write FOnGetEditorClass;
    Property OnGetImageIndex:TDTVNodeEvent read FOnGetImageIndex write FOnGetImageIndex;
    Property OnGetSelectedIndex:TDTVNodeEvent read FOnGetSelectedIndex write FOnGetSelectedIndex;
    Property OnGetToolTipInfo:TDTVGetToolTipInfoEvent read FOnGetToolTipInfo write FOnGetToolTipInfo;
    Property OnRightClickNode:TRightClickNodeEvent read FOnRightClickNode write FOnRightClickNode;
    Property OnSelectionChanged:TDTVNodeEvent read FOnSelectionChanged write FOnSelectionChanged;
    Property OnStateChanged:TDTVNodeEvent read FOnStateChanged write FOnStateChanged;
    Property OnStateChanging:TDTVStateChangingEvent read FOnStateChanging write FOnStateChanging;
    Property OnValidateEditText:TDCValidateEditText read FOnValidateEditText write FOnValidateEditText;
    property OnAssignEditorProps : TAssignEditorPropsEvent read fOnAssignEditorProps write fOnAssignEditorProps;
  Public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;

    Function AlphaSort:Boolean;
    Function CustomSort(SortProc:TDTVCompare;Data:Longint):Boolean;
    Procedure DeleteSelectedItems;
    Procedure EndEditNode(Cancel:Boolean);
    Procedure FlushDelayedSelection;
    Procedure FullCollapse;
    Procedure FullExpand; virtual;
    Function GetCursorPos:TPoint;
    Function GetHitTest(X,Y:Integer):TDCPosInfo;virtual;
    Function GetHitTestAtCursor:TDCPosInfo;
    Function GetHitTestInfoAt(X,Y:Integer):THitTests;
    Function GetHitTestInfoAtCursor:THitTests;
    Procedure GetItemsInAbsRect(List:TList;const ARect:TRect);
    Function GetNodeAt(X,Y:Integer):TDCTreeNode;
    Function GetNodeAtCursor:TDCTreeNode;
    Function IsEditing:Boolean;
    Function IsFocused:Boolean;
    Function IsSorted:Boolean;virtual;
    Procedure LoadFromFile(const FileName:String);
    Procedure LoadFromStream(Stream:TStream);
    procedure Popup(X,Y:Integer);
    Procedure Print(ExpandAll:Boolean);
    Procedure PrintWithDialog(ExpandAll:Boolean);
    Procedure SaveToFile(const FileName:String);
    Procedure SaveToStream(Stream:TStream);
    Procedure Scroll(ScrollMode:TDCScrollMode);

    Property DropTarget:TDCTreeNode read GetDropTarget write SetDropTarget;
    Property MultiSelect:Boolean read FMultiSelect write SetMultiSelect default False;
    Property Selected:TDCTreeNode read GetSelected write SetSelected;
    Property SelectedCount:Integer read GetSelectedCount;
    Property SelectedItems[Index:Integer]:TDCTreeNode read GetSelectedItems;
  End;

  TDCTree=Class(TDCCustomTreeView)
  Public
    Property Canvas;
    Property DefaultNodeClass;
    Property TopItem;
  Published
    Property ActiveSelectedColor;
    Property ActiveSelectedFontColor;
    Property AllowMultiDrag;
    Property AutoCheck;
    Property AutoExpand;
    Property AutoScroll;
    Property BorderStyle;
    Property ChangeDelay;
    Property CheckBoxesType;
    Property DragButtons;
    Property DragExpandDelay;
    Property DropTargetKind;
    Property ExpandOnDrag;
    Property FlatBorder;
    Property FlatChecks;
    Property HideSelection;
    Property HotTrack;
    Property InactiveSelectedColor;
    Property InactiveSelectedFontColor;
    Property Indent;
    Property Items;
    Property Images;
    Property LinesColor;
    Property MultiLineNodes;
    Property MultiSelect;
    Property OnAfterEditing;
    Property OnAfterInsert;
    Property OnChanging;
    Property OnChange;
    Property OnCheckClick;
    Property OnCollapsing;
    Property OnCollapsed;
    Property OnCompare;
    Property OnDeletion;
    Property OnEditing;
    Property OnEdited;
    Property OnExpanding;
    Property OnExpanded;
    Property OnGetEditorClass;
    Property OnGetImageIndex;
    Property OnGetSelectedIndex;
    Property OnGetToolTipInfo;
    Property OnRightClickNode;
    Property OnSelectionChanged;
    Property OnStateChanged;
    Property OnStateChanging;
    Property PrintOptions;
    Property ReadOnly;
    Property RightClickSelect;
    Property RowSelect;
    Property RowSelectType;
    {$IFDEF D4}
    Property ScrollBarsStyle;
    {$ENDIF}
    Property SelectOnlySiblings;
    Property ShowButtons;
    Property ShowLines;
    Property ShowRoot;
    Property SortOrder;
    Property SortType;
    Property StateImages;
    Property ToolTips;
    Property WordWrap;
    
    Property OnValidateEditText;
    property OnAssignEditorProps;

    property Align;
    property Enabled;
    property Font;
    property Color;
    property Ctl3D;
    Property DragCursor;
    Property DragMode;
    property ParentColor default False;
    property ParentCtl3D;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnEnter;
    property OnExit;
    property OnDragDrop;
    property OnDragOver;
    property OnStartDrag;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnDblClick;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property PopupMenu;
    property ParentFont;
    property ParentShowHint;
    property ShowHint;
    {$IFDEF D4}
    property Anchors;
    property BiDiMode;
    property BorderWidth;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
    {$IFDEF D5}
    Property OnContextPopup;
    {$ENDIF}
  End;

Type
  TShowEditorRec=Record
    CellFont          : TFont;
    Color             : TColor;
    SelectedColor     : TColor;
    SelectedTextColor : TColor;
  End;
  PShowEditorRec=^TShowEditorRec;

  TDMShowEditor=Record
    Msg           : Cardinal;
    Visible       : LongBool;
    ShowEditorRec : PShowEditorRec;
    Result        : Integer;
  End;

{  TDMSetCanvas=Record
    Msg:Cardinal;
    Canvas:TCanvas;
    Unused:Integer;
    Result:Integer;
  End;}

  TMeasureRec=Record
    Text:PChar;
    Result:PInteger;
    WordWrapSize:TWordWrapSize;
    IsWordWrap:Boolean;
    IsCalcWidth:Boolean;
  End;
  PMeasureRec=^TMeasureRec;

  TDMMeasure=Record
    Msg:Cardinal;
    MeasureRec:PMeasureRec;
    Unused:Integer;
    Result:Integer;
  End;

  TDrawRec=Record
    Text:PChar;
    DrawRect:PRect;
    WordWrap:Boolean;
  End;
  PDrawRec=^TDrawRec;

  TDMDraw=Record
    Msg:Cardinal;
    DrawRec:PDrawRec;
    Canvas: TDCCanvas;
    Result:Integer;
  End;

  TDMSetRect=Record
    Msg:Cardinal;
    ARect:PRect;
    Bordered:LongBool;
    Result:Integer;
  End;

  TDMSetParent=Record
    Msg:Cardinal;
    Parent:TControl;
    Unused:Integer;
    Result:Integer;
  End;

  TDMSetText=Record
    Msg:Cardinal;
    Text:PChar;
    SelectAll:LongBool;
    Unused:Array[0..3] Of Byte;
  End;

  TOtherInfoRec=Record
    WordWrap:Boolean;
  End;
  POtherInfoRec=^TOtherInfoRec;

  TDMSetOtherInfo=Record
    Msg:Cardinal;
    Info:POtherInfoRec;
    Unused:Integer;
    Result:Integer;
  End;

  TDCCustomTreeSimpleEditor=Class(TEdit)
  Private
    FCanvas:TCanvas;
    FControl:TControl;
    FRect:TRect;
    Procedure ParentSendMessage(Msg:Cardinal);
  Protected
    Procedure DMCancelChanges(Var Message:TMessage);message DM_CANCELCHANGES;
    Procedure DMGetModified(Var Message:TMessage);message DM_GETMODIFIED;
    Procedure DMHideEditor(Var Message:TMessage);message DM_HIDEEDITOR;
    Procedure DMSaveChanges(Var Message:TMessage);message DM_SAVECHANGES;
    Procedure DMSetCanvas(Var Message:TMessage);message DM_SETCANVAS;
    Procedure DMSetParent(Var Message:TDMSetParent);message DM_SETPARENT;
    Procedure DMSetRect(Var Message:TDMSetRect);message DM_SETRECT;
    Procedure DMSetText(Var Message:TDMSetText);message DM_SETTEXT;
    Procedure DMShowEditor(Var Message:TDMShowEditor);message DM_SHOWEDITOR;
    Function GetBaseRect(AText:PChar;Const ARect:TRect):TRect;virtual;
    Function GetEditorBounds(Const ARect:TRect):TRect;virtual;
    Function GetEditorHeight(Canvas:TCanvas;AText:PChar):Integer;
    Function GetEditorWidth(Canvas:TCanvas;AText:PChar):Integer;
    Procedure UpdateEditorBounds;
    Procedure WMGetDlgCode(Var Message:TMessage);message WM_GETDLGCODE;
    Procedure WMKillFocus(Var Message:TMessage);message WM_KILLFOCUS;
    Procedure WMKeyDown(Var Message:TMessage);message WM_KEYDOWN;
    Procedure WMKeyPress(Var Message:TWMKey);message WM_CHAR;
  Public
    Constructor Create(AOwner:TComponent);override;
  End;

  TDCTreeSimpleEditor=Class(TDCCustomTreeSimpleEditor)
  Protected
    Procedure Change;override;
    Function GetBaseRect(AText:PChar;Const ARect:TRect):TRect;override;
    Function GetEditorBounds(Const ARect:TRect):TRect;override;
  End;

  TDCCustomTreeMemoEditor=Class(TMemo)
  Private
    FCanvas:TCanvas;
    FControl:TControl;
    FRect:TRect;
    FWordWrap:Boolean;
    Procedure ParentSendMessage(Msg:Cardinal);
  Protected
    Procedure DMCancelChanges(Var Message:TMessage);message DM_CANCELCHANGES;
    Procedure DMDraw(Var Message:TDMDraw);message DM_DRAW;
    Procedure DMGetModified(Var Message:TMessage);message DM_GETMODIFIED;
    Procedure DMHideEditor(Var Message:TMessage);message DM_HIDEEDITOR;
    Procedure DMSaveChanges(Var Message:TMessage);message DM_SAVECHANGES;
    Procedure DMSetCanvas(Var Message:TMessage);message DM_SETCANVAS;
    Procedure DMSetOtherInfo(Var Message:TDMSetOtherInfo);message DM_SETOTHERINFO;
    Procedure DMSetParent(Var Message:TDMSetParent);message DM_SETPARENT;
    Procedure DMSetRect(Var Message:TDMSetRect);message DM_SETRECT;
    Procedure DMSetText(Var Message:TDMSetText);message DM_SETTEXT;
    Procedure DMShowEditor(Var Message:TDMShowEditor);message DM_SHOWEDITOR;
    Function GetBaseRect(AText:PChar;Const ARect:TRect):TRect;virtual;
    Function GetEditorBounds(Const ARect:TRect):TRect;virtual;
    Function GetEditorHeight(Canvas:TCanvas;AText:PChar;ARect:TRect):Integer;
    Function GetEditorWidth(Canvas:TCanvas;AText:PChar;ARect:TRect):Integer;
    Procedure UpdateEditorBounds;
    Procedure WMGetDlgCode(Var Message:TMessage);message WM_GETDLGCODE;
    Procedure WMKillFocus(Var Message:TMessage);message WM_KILLFOCUS;
    Procedure WMKeyDown(Var Message:TWMKey);message WM_KEYDOWN;
    Procedure WMKeyPress(Var Message:TMessage);message WM_CHAR;
  Public
    Constructor Create(AOwner:TComponent);override;
  End;

  TDCTreeMemoEditor=Class(TDCCustomTreeMemoEditor)
  Protected
    Procedure Change;override;
    Function GetBaseRect(AText:PChar;Const ARect:TRect):TRect;override;
    Function GetEditorBounds(Const ARect:TRect):TRect;override;
  End;

Procedure DrawMultiLineText(Canvas:TCanvas;Str:PChar;Const ARect:TRect;WordWrap:Boolean);
Procedure Error(const Message:String);
Function FontsEqual(const Font1,Font2:TFont):Boolean;
Function GetFontHeight(AFont:TFont):Integer;
Function GetMultiLineTextHeight(Canvas:TCanvas;Const Str:String;AWidth:Integer;WordWrap:Boolean):Integer;
Function GetMultiLineTextWidth(Canvas:TCanvas;Const Str:String;AWidth:Integer;WordWrap:Boolean):Integer;
Function GetRealTextWidth(Canvas:TCanvas;Const AText:String):Integer;
Procedure InvalidOperation(const Message:String);
Procedure InvalidOperationFmt(Const Message:String;Const Data:Array Of Const);
Function ReadStrFromStream(Stream:TStream):String;
Procedure ShrinkRectInRect(Var InRect:TRect;Const OutRect:TRect);
Procedure WriteStrToStream(Stream:TStream;const Str:String);

Const
  ItemHitTest=[dhtOnItem,dhtOnStateIcon,dhtOnIcon,dhtOnLabel,dhtOnRight];

implementation
Uses Consts, Printers, TypInfo, SysUtils,
     dcMemoPg, dcnTreePO, dcConsts, dcPopup;

Const
  ImageTextSpace=3; //space between image and text
  HorzScrollSpace=5;
  CheckBoxSpace=2;
  MinHeight=4;
  MaxFontCacheItem=20;

  SelectionTimerID=1;
  ScrollTimerID=2;
  ExpandTimerID=3;
  EditTimerID=4;

  ScrollDelay=10;
  ScrollDragDelaySlow=100;
  ScrollDragDelayFast=10;
  MaxDelta=100;
  EditTimerDelay=750;
  ToolTipID=1;

  QuickSearchTickCount=500;

  DotedPattern=$AA;
  SolidPattern=$FF;

  SErrInvalidFlags='Invalid flags';
  SErrInvalidOperation='Invalid operation';
  SErrMoveToChildError='Trying move to child';
  SErrInvalidPropertyType='Invalid property type';
  SErrInvalidNode='Invalid Node';

  PropertyNames:Array[0..15] Of String=('AllowGrayed','Expanded','Font',
  'HasChildren','ImageIndex','NodeType','OverlayIndex','ParentFont','ReadOnly',
  'SelectedIndex','State','StateIndex','Text',
  //Version 2.2
  'RightClickSelect',
  //Version 2.3
  'Color','ParentColor');
  pnEndOfData=$FE;

  tkBoolean:TTypeKind=TTypeKind($FF);

Type
  { TDCTreeToolTip }

  TDCTreeToolTip=Class(TDCToolTip)
  Private
    FTextRect:TRect;
    FToolTipAdded:Boolean;
    FTreeNode:TDCTreeNode;
    FTreeNodeRect:TRect;
    Procedure SetTreeNode(Value:TDCTreeNode);
  Protected
    Procedure DoHideToolTip;override;
    Procedure WndProc(Var Message:TMessage);override;
  Public
    Constructor Create(AOwner:TComponent);override;

    Property TreeNode:TDCTreeNode read FTreeNode write SetTreeNode;
  End;

  TRectIterateProc=Procedure(const ARect:TRect) Of Object;
  TPublicControl=Class(TControl);
  TPublicWinControl=Class(TWinControl);

  TFontCacheItem=Record
    UseCount:Integer;
    CachedFont:TFont;
    CachedItemHeight:Integer;
  End;
  PFontCacheItem=^TFontCacheItem;

  {$IFNDEF D5}
  TIntegerSet=Set Of 0..SizeOf(Integer)*8-1;
  {$ENDIF}

  _TWinControl=Class(TWinControl);

Var
  FKeyboardHook:THandle;
  HookTreeView:TDCCustomTreeView;
  FFontCache:TList;
  UseCount:Integer;
  CheckBoxWidth,
  CheckBoxHeight:Integer;

Function FontsEqual(const Font1,Font2:TFont):Boolean;
Begin
  Result:=(Font1<>Nil) And (Font2<>Nil) And (Font1.Handle=Font2.Handle) And (Font1.Color=Font2.Color);
End;

// Font Cache

Procedure CreateFontCache;
Begin
  If FFontCache=Nil Then
  Begin
    FFontCache:=TList.Create;
    UseCount:=0;
  End;
  Inc(UseCount);
End;

Procedure FreeFontCache;
Var
  FontCacheItem:PFontCacheItem;
  I:Integer;
Begin
  If FFontCache=Nil Then
    Exit;
  For I:=0 To FFontCache.Count-1 Do
  Begin
    FontCacheItem:=FFontCache[I];
    FontCacheItem.CachedFont.Free;
    FreeMem(FontCacheItem);
  End;
  FFontCache.Free;
  FFontCache:=Nil;
End;

Procedure DestroyFontCache;
Begin
  Dec(UseCount);
  If UseCount<>0 Then
    Exit;
  FreeFontCache;
End;

Function GetFontHeight(AFont:TFont):Integer;
  Function _FindInCache:Integer;
  Var
    I:Integer;
  Begin
    For I:=0 To FFontCache.Count-1 Do
      With TFontCacheItem(FFontCache[I]^) Do
        If FontsEqual(CachedFont,AFont) Then
        Begin
          Inc(UseCount);
          Result:=CachedItemHeight;
          Exit;
        End;
    Result:=-1;
  End;

  Function _FindMinUseItem:PFontCacheItem;
  Var
    MaxUse:Integer;
    FontCacheItem:PFontCacheItem;
    I:Integer;
  Begin
    Result:=FFontCache[0];
    MaxUse:=Result.UseCount;
    For I:=1 To FFontCache.Count-1 Do
    Begin
      FontCacheItem:=FFontCache[I];
      If FontCacheItem.UseCount<MaxUse Then
      Begin
        Result:=FontCacheItem;
        MaxUse:=Result.UseCount;
      End;
    End;
  End;

Var
  tm:TTextMetric;
  FontCacheItem:PFontCacheItem;
  DC:THandle;
  hPrevFont:THandle;
Begin
  Result:=_FindInCache;
  If Result<0 Then
  Begin
    If FFontCache.Count=MaxFontCacheItem Then
      FontCacheItem:=_FindMinUseItem
    Else
    Begin
      GetMem(FontCacheItem,SizeOf(FontCacheItem^));
      FontCacheItem.CachedFont:=TFont.Create;
      FFontCache.Add(FontCacheItem);
    End;
    FontCacheItem.CachedFont.Assign(AFont);
    FontCacheItem.UseCount:=1;
    DC:=GetDC(0);
    hPrevFont:=SelectObject(DC,AFont.Handle);
    GetTextMetrics(DC,tm);
    SelectObject(DC,hPrevFont);
    ReleaseDC(0,DC);
    Result:=(tm.tmHeight+1) And Not 1; //clear last bit
    FontCacheItem.CachedItemHeight:=Result;
  End;
End;

{---------------------------------------------------------}

//Closed procedures

Function MiddlePoint(X1,X2:Integer):Integer;
Begin
  Result:=X1+X2;
  If Result<0 Then
    Dec(Result);
  Result:=Result Div 2;
End;

//Other Procedures

Procedure AddChildNode(ParentNode,Node:TDCTreeNode);
Begin
  With ParentNode.FChildInfo Do
  Begin
    If LastNode<>Nil Then
      LastNode.FNodeNext:=Node
    Else
      FirstNode:=Node;
    Node.FNodePrev:=LastNode;
    LastNode:=Node;
    Node.FNodeNext:=Nil;
  End;
End;

{---------------------------------------------------------}

Procedure AddChildNodeFirst(ParentNode,Node:TDCTreeNode);
Begin
  With ParentNode.FChildInfo Do
  Begin
    If FirstNode<>Nil Then
      FirstNode.FNodePrev:=Node
    Else
      LastNode:=Node;
    Node.FNodeNext:=FirstNode;
    Node.FNodePrev:=Nil;
    FirstNode:=Node;
  End;
End;

{---------------------------------------------------------}

Function CenterPoint(P1,P2:Integer):Integer;
Begin
  Result:=MiddlePoint(0,P2-P1-1)+P1;
End;

{---------------------------------------------------------}

Function CompareVisiblePos(Node1,Node2:TDCTreeNode):Integer;
Var
  NextNode1,NextNode2:TDCTreeNode;
  PrevNode1,PrevNode2:TDCTreeNode;
Begin
  If Node1=Node2 Then
  Begin
    Result:=0;
    Exit;
  End;
  NextNode1:=Node1.GetNextVisibleSimple;
  NextNode2:=Node2.GetNextVisibleSimple;
  PrevNode1:=Node1.GetPrevVisibleSimple;
  PrevNode2:=Node2.GetPrevVisibleSimple;
  Repeat
    If (NextNode1=Node2) Or (PrevNode2=Node1) Or (PrevNode1=Nil) Or (NextNode2=Nil) Then
    Begin
      Result:=-1;
      Exit;
    End;
    If (NextNode2=Node1) Or (PrevNode1=Node2) Or (PrevNode2=Nil) Or (NextNode1=Nil) Then
    Begin
      Result:=1;
      Exit;
    End;
    NextNode1:=NextNode1.GetNextVisibleSimple;
    NextNode2:=NextNode2.GetNextVisibleSimple;
    PrevNode1:=PrevNode1.GetPrevVisibleSimple;
    PrevNode2:=PrevNode2.GetPrevVisibleSimple;
  Until False;
End;

{---------------------------------------------------------}

Function DefaultTreeViewSort(Node1,Node2:TDCTreeNode;lParam:Integer):Integer;stdcall;
Begin
  With Node1 Do
    If Assigned(TreeView.OnCompare) Then
      TreeView.OnCompare(TreeView,Node1,Node2,lParam,Result)
    Else
      Result:=TreeView.DoCompare(Node1,Node2);
End;

{---------------------------------------------------------}

Procedure DeleteNode(Node:TDCTreeNode);
Var
  PrevNode:TDCTreeNode;
  NextNode:TDCTreeNode;
  Parent:TDCTreeNode;
Begin
  PrevNode:=Node.FNodePrev;
  NextNode:=Node.FNodeNext;
  If PrevNode<>Nil Then
    PrevNode.FNodeNext:=NextNode;
  If NextNode<>Nil Then
    NextNode.FNodePrev:=PrevNode;
  Parent:=Node.FDCParent;
  If PrevNode=Nil Then
    Parent.FChildInfo.FirstNode:=NextNode;
  If NextNode=Nil Then
    Parent.FChildInfo.LastNode:=PrevNode;
End;

{---------------------------------------------------------}

Procedure GetStopCharacter(Canvas:TCanvas;AText:PChar;Var CurText:PChar;AWidth:Integer;MinWidth:Integer);
Const
  Separators=[' '];

  Procedure _FindSeparator;
  Var
    NewCurText:PChar;
  Begin
    NewCurText:=CurText;
    While NewCurText>AText+1 Do
    Begin
      If (NewCurText-1)^ In Separators Then
      Begin
        CurText:=NewCurText;
        Exit;
      End;
      Dec(NewCurText);
    End;
  End;

Const
  MAX_CHARS=256;
Var
  I:Integer;
  Lens:Array[0..MAX_CHARS-1] Of Integer;
Begin
  //Skip separators
  If (AText^ In Separators) And Not (AText^ In [#0,#10,#13]) Then
    Inc(AText);
  CurText:=AText;
  Repeat
    GetWidths(Canvas.Font.Handle,CurText,MAX_CHARS,@Lens);
    I:=0;
    While I<MAX_CHARS Do
    Begin
      If CurText^ In [#0,#10,#13] Then
        Exit;
      Dec(AWidth,Lens[I]);
      If AWidth<MinWidth Then
      Begin
        If CurText=AText Then
          Inc(CurText)
        Else
          If Not (CurText^ In Separators) Then
            _FindSeparator;
        Exit;
      End;
      Inc(I);
      Inc(CurText);
    End;
  Until False;
End;

{---------------------------------------------------------}

Procedure DrawMultiLineText(Canvas:TCanvas;Str:PChar;Const ARect:TRect;WordWrap:Boolean);
Var
  tm:TTextMetric;
  AText:PChar;
  CurText:PChar;
  DrawRect:TRect;
Begin
  GetTextMetrics(Canvas.Handle,tm);
  AText:=PChar(Str);
  DrawRect:=ARect;
  DrawRect.Bottom:=DrawRect.Top+tm.tmHeight;
  While True Do
  Begin
    If DrawRect.Top>=ARect.Bottom Then
      Exit;
    If WordWrap Then
      GetStopCharacter(Canvas,AText,CurText,ARect.Right-ARect.Left,tm.tmOverhang)
    Else
    Begin
      CurText:=AText;
      While Not (CurText^ In [#0,#10,#13]) Do
        Inc(CurText);
    End;    
    If DrawRect.Bottom>ARect.Bottom Then
      DrawRect.Bottom:=ARect.Bottom;
    ExtTextOut(Canvas.Handle,DrawRect.Left,DrawRect.Top,ETO_OPAQUE Or ETO_CLIPPED,
               @DrawRect,AText,CurText-AText,Nil);
    OffsetRect(DrawRect,0,tm.tmHeight);
    Case CurText^ Of
      #0:Begin
           DrawRect.Bottom:=ARect.Bottom;
           If DrawRect.Top<ARect.Bottom Then
             Canvas.FillRect(DrawRect);
           Break;
         End;
      #10:Inc(CurText);
      #13:If (CurText+1)^=#10 Then
            Inc(CurText,2);
    End;
    AText:=CurText;
  End;
End;

{---------------------------------------------------------}

Procedure Error(const Message:String);
Begin
  raise Exception.Create(Message);
End;

{---------------------------------------------------------}

Procedure ErrorFmt(const Message:String;Const Data:Array Of Const);
Begin
  Error(Format(Message,Data));
End;

{---------------------------------------------------------}

Procedure CheckCheckBoxSize;
Var
  hBitmap:THandle;
  Bitmap:Windows.TBitmap;
Begin
  If CheckBoxWidth=0 Then
  Begin
    hBitmap:=LoadBitmap(0,PChar(OBM_CHECKBOXES));
    Try
      GetObject(hBitmap,SizeOf(Bitmap),@Bitmap);
    Finally
      DeleteObject(hBitmap);
    End;
    CheckBoxWidth:=Bitmap.bmWidth Div 4;
    CheckBoxHeight:=Bitmap.bmHeight Div 3;
  End;
End;

{---------------------------------------------------------}

Procedure CorrectRectInRect(Var InRect:TRect;Const OutRect:TRect);
Begin
  If InRect.Left<OutRect.Left Then
    InRect.Left:=OutRect.Left;
  If InRect.Top<OutRect.Top Then
    InRect.Top:=OutRect.Top;
  If InRect.Right>OutRect.Right Then
    InRect.Right:=OutRect.Right;
  If InRect.Bottom>OutRect.Bottom Then
    InRect.Bottom:=OutRect.Bottom;
End;

{---------------------------------------------------------}

Function GetWordWrapTextHeight(Canvas:TCanvas;Str:PChar;AWidth:Integer):Integer;
Var
  AText:PChar;
  CurText:PChar;
  tm:TTextMetric;
Begin
  GetTextMetrics(Canvas.Handle,tm);
  Result:=0;
  AText:=PChar(Str);
  While True Do
  Begin
    GetStopCharacter(Canvas,AText,CurText,AWidth,tm.tmOverhang);
    Inc(Result,tm.tmHeight);
    Case CurText^ Of
      #0:Break;
      #10:Inc(CurText);
      #13:If (CurText+1)^=#10 Then
            Inc(CurText,2);
    End;
    AText:=CurText;
  End;
End;

{---------------------------------------------------------}

Function GetMultiLineTextHeight(Canvas:TCanvas;Const Str:String;AWidth:Integer;WordWrap:Boolean):Integer;
Var
  tm:TTextMetric;
  ARect:TRect;
Begin
  If Str='' Then
  Begin
    GetTextMetrics(Canvas.Handle,tm);
    Result:=tm.tmHeight;
  End
  Else
    If WordWrap Then
      Result:=GetWordWrapTextHeight(Canvas,PChar(Str),AWidth)
    Else
      Result:=DrawText(Canvas.Handle,PChar(Str),Length(Str),ARect,DT_NOPREFIX Or DT_CALCRECT);
End;

{---------------------------------------------------------}

Function GetMultiLineTextWidth(Canvas:TCanvas;Const Str:String;AWidth:Integer;WordWrap:Boolean):Integer;
Var
  DrawRect:TRect;
Begin
  If Str='' Then
   Result:=0
  Else
  Begin
    DrawText(Canvas.Handle,PChar(Str),Length(Str),DrawRect,DT_NOPREFIX Or DT_CALCRECT);
    Result:=DrawRect.Right-DrawRect.Left;
    If WordWrap And (Result>AWidth) Then
      Result:=AWidth;
  End;
End;

{---------------------------------------------------------}

Function GetRealTextWidth(Canvas:TCanvas;Const AText:String):Integer;
Var
  tm:TTextMetric;
Begin
  GetTextMetrics(Canvas.Handle,tm);
  Result:=Canvas.TextWidth(AText)+tm.tmOverhang;
End;

{---------------------------------------------------------}

Function GetSystemCheckBoxWidth:Integer;
Begin
  CheckCheckBoxSize;
  Result:=CheckBoxWidth;
End;

{---------------------------------------------------------}

Function GetSystemCheckBoxHeight:Integer;
Begin
  CheckCheckBoxSize;
  Result:=CheckBoxHeight;
End;

{---------------------------------------------------------}

Procedure HLeftRect(Var InRect:TRect;const OutRect:TRect);
Var
  TextWidth:Integer;
Begin
  TextWidth:=InRect.Right-InRect.Left;
  InRect.Left:=OutRect.Left;
  InRect.Right:=InRect.Left+TextWidth;
End;

{---------------------------------------------------------}

Procedure HCenterRect(Var InRect:TRect;const OutRect:TRect);
Var
  TextWidth:Integer;
Begin
  TextWidth:=InRect.Right-InRect.Left;
  InRect.Left:=MiddlePoint(OutRect.Right,OutRect.Left-TextWidth);
  InRect.Right:=InRect.Left+TextWidth;
End;

{---------------------------------------------------------}

Procedure HRightRect(Var InRect:TRect;const OutRect:TRect);
Var
  TextWidth:Integer;
Begin
  TextWidth:=InRect.Right-InRect.Left;
  InRect.Right:=OutRect.Right;
  InRect.Left:=InRect.Right-TextWidth;
End;

{---------------------------------------------------------}

Function KeyboardProc(Code:Integer;wParam,lParam:Integer):Integer;stdcall;
Begin
  With HookTreeView Do
    If (wParam=VK_ESCAPE) And FExternalDrag Then
    Begin
      ProcessCancelDrag;
      Result:=-1;
      If Code=HC_ACTION	Then
        Exit;
    End;
  Result:=CallNextHookEx(FKeyboardHook,Code,wParam,lParam);
End;

{---------------------------------------------------------}

Procedure InsertNodeBefore(BeforeNode,Node:TDCTreeNode);
Var
  PrevNode,
  Parent:TDCTreeNode;
Begin
  PrevNode:=BeforeNode.FNodePrev;
  Parent:=BeforeNode.FDCParent;
  If PrevNode<>Nil Then
    PrevNode.FNodeNext:=Node;
  If BeforeNode<>Nil Then
    BeforeNode.FNodePrev:=Node;
  Node.FNodePrev:=PrevNode;
  Node.FNodeNext:=BeforeNode;
  If PrevNode=Nil Then
    Parent.FChildInfo.FirstNode:=Node;
End;

{---------------------------------------------------------}

Function IsExpanded(Node:TDCTreeNode):Boolean;
Var
  ParentNode:TDCTreeNode;
Begin
  If Node.TreeView.FPrinting Then
  Begin
    Result:=True;
    Exit;
  End;
  ParentNode:=Node.Parent;
  While ParentNode<>Nil Do
  Begin
    If Not ParentNode.Expanded Then
    Begin
      Result:=False;
      Exit;
    End;
    ParentNode:=ParentNode.Parent;
  End;
  Result:=True;
End;

Function Max(A,B:Integer):Integer;
Begin
  If A>B Then
    Result:=A
  Else
    Result:=B;
End;

{---------------------------------------------------------}

Procedure InvalidOperation(Const Message:String);
Begin
  raise EInvalidOperation.Create(Message);
End;

{---------------------------------------------------------}

Procedure InvalidOperationFmt(Const Message:String;Const Data:Array Of Const);
Begin
  raise EInvalidOperation.Create(Format(Message,Data));
End;

{---------------------------------------------------------}

Function IsRectsIntersectVert(Const Rect1,Rect2:TRect):Boolean;
  Function InRect(Const Rect1,Rect2:TRect):Boolean;
  Begin
    Result:=(Rect1.Top>=Rect2.Top) And (Rect1.Top<Rect2.Bottom);
  End;
Begin
  Result:=InRect(Rect1,Rect2) Or InRect(Rect2,Rect1);
End;

{---------------------------------------------------------}

Function IsRectInRect(Const InRect,OutRect:TRect):Boolean;
Begin
  Result:=(OutRect.Left<=InRect.Left) And (InRect.Left<OutRect.Right) And
          (OutRect.Top<=InRect.Top) And (InRect.Top<OutRect.Bottom) And
          (OutRect.Left<=InRect.Right) And (InRect.Right<OutRect.Right) And
          (OutRect.Top<=InRect.Bottom) And (InRect.Bottom<OutRect.Bottom);
End;

{---------------------------------------------------------}

Function IsRectInRectVert(Const InRect,OutRect:TRect):Boolean;
Begin
  Result:=(OutRect.Top<=InRect.Top) And (InRect.Top<OutRect.Bottom) And
          (OutRect.Top<=InRect.Bottom) And (InRect.Bottom<=OutRect.Bottom);
End;

{---------------------------------------------------------}

Function IsInSelectRect(Const ARect,TextRect:TRect):Boolean;
Begin
  Result:=((ARect.Top<=TextRect.Top) And (TextRect.Top<ARect.Bottom) And
          (TextRect.Left<=ARect.Left) And (ARect.Left<TextRect.Right)) Or

         ((TextRect.Top<=ARect.Top) And (ARect.Top<TextRect.Bottom) And
         (((TextRect.Left<=ARect.Left) And (ARect.Left<TextRect.Right)) Or
          ((TextRect.Left<=ARect.Right) And (ARect.Right<TextRect.Right)))) Or

         ((TextRect.Top<=ARect.Top) And (ARect.Top<TextRect.Bottom) And
          (ARect.Left<=TextRect.Left) And (TextRect.Left<ARect.Right))
End;

Function NodeInRect(Const ARect:TRect;Node:TDCTreeNode;PartialOk:Boolean):Boolean;
Var
  NodeRect:TRect;
Begin
  NodeRect:=Node.DisplayRectPart(npLines,npText,True);
  If PartialOk Then
    Result:=IsRectsIntersectVert(NodeRect,ARect)
  Else
    Result:=IsRectInRectVert(NodeRect,ARect);
End;

{---------------------------------------------------------}

Procedure SelectNewList(OldList,NewList:TList);
Var
  I:Integer;
  Node:TDCTreeNode;
Begin
  For I:=0 To NewList.Count-1 Do
  Begin
    Node:=NewList[I];
    If OldList.IndexOf(Node)<0 Then
      Node.Selected:=True;
  End;
  For I:=OldList.Count-1 DownTo 0 Do
  Begin
    Node:=OldList[I];
    If NewList.IndexOf(Node)<0 Then
      Node.Selected:=False;
  End;
End;

{---------------------------------------------------------}

Procedure ShrinkRectInRect(Var InRect:TRect;Const OutRect:TRect);
Begin
  If InRect.Left<=OutRect.Left Then
    InRect.Left:=OutRect.Left+1;
  If InRect.Top<=OutRect.Top Then
    InRect.Top:=OutRect.Top+1;
  If InRect.Right>=OutRect.Right Then
    InRect.Right:=OutRect.Right-1;
  If InRect.Bottom>=OutRect.Bottom Then
    InRect.Bottom:=OutRect.Bottom-1;
End;

{---------------------------------------------------------}

Procedure VBottomRect(Var InRect:TRect;Const OutRect:TRect);
Var
  TextHeight:Integer;
Begin
  TextHeight:=InRect.Bottom-InRect.Top;
  InRect.Bottom:=OutRect.Bottom;
  InRect.Top:=InRect.Bottom-TextHeight;
End;

{---------------------------------------------------------}

Procedure VCenterRect(Var InRect:TRect;Const OutRect:TRect);
Var
  TextHeight:Integer;
Begin
  TextHeight:=InRect.Bottom-InRect.Top;
  InRect.Top:=MiddlePoint(OutRect.Bottom,OutRect.Top-TextHeight);
  InRect.Bottom:=InRect.Top+TextHeight;
End;

{---------------------------------------------------------}

Procedure VCenterRectEven(Var InRect:TRect;Const OutRect:TRect);
Var
  TextHeight:Integer;
Begin
  TextHeight:=InRect.Bottom-InRect.Top;
  InRect.Top:=MiddlePoint(OutRect.Bottom,OutRect.Top-TextHeight+1) And Not 1;
  InRect.Bottom:=InRect.Top+TextHeight;
End;

{---------------------------------------------------------}

Procedure VTopRect(Var InRect:TRect;Const OutRect:TRect);
Var
  TextHeight:Integer;
Begin
  TextHeight:=InRect.Bottom-InRect.Top;
  InRect.Top:=OutRect.Top;
  InRect.Bottom:=InRect.Top+TextHeight;
End;

{---------------------------------------------------------}

Function ReadStrFromStream(Stream:TStream):String;
Var
  Len:Integer;
Begin
  Len:=0;
  Stream.Read(Len,SizeOf(Byte));
  If Len=$FF then
    Stream.Read(Len,SizeOf(Integer));
  SetLength(Result,Len);
  Stream.Read(Result[1],Len);
End;

{---------------------------------------------------------}

Procedure WriteStrToStream(Stream:TStream;const Str:String);
Var
  Len:Integer;
Begin
  Len:=Length(Str);
  If Len<$FF Then
    Stream.Write(Len,SizeOf(Byte))
  Else
  Begin
    Len:=$FF;
    Stream.Write(Len,SizeOf(Byte));
    Len:=Length(Str);
    Stream.Write(Len,SizeOf(Integer));
  End;
  Stream.Write(Str[1],Len);
End;

{---------------------------------------------------------}

Procedure CenterRect(Var Source:TRect;const Dest:TRect);
Var
  TextHeight:Integer;
Begin
  HCenterRect(Source,Dest);
  TextHeight:=Source.Bottom-Source.Top;
  Source.Top:=MiddlePoint(Dest.Bottom,Dest.Top-TextHeight);
  Source.Bottom:=Source.Top+TextHeight;
End;

//Max width procedures

Procedure RecalcLevel(Node:TDCTreeNode);
Var
  MaxWidth:Integer;
  NextNode:TDCTreeNode;
  NextWidth:Integer;
Begin
  //Initialize by self
  MaxWidth:=Node.Width;
  Node.FChildInfo.MaxWidthNode:=Node;
  Node.FChildInfo.MaxWidth:=MaxWidth;
  //Find max width
  If Node.Expanded Then
  Begin
    NextNode:=Node.GetFirstChild;
    While NextNode<>Nil Do
    Begin
      RecalcLevel(NextNode);
      NextWidth:=NextNode.FChildInfo.MaxWidth;
      If NextWidth>MaxWidth Then
      Begin
        Node.FChildInfo.MaxWidthNode:=NextNode.FChildInfo.MaxWidthNode;
        Node.FChildInfo.MaxWidth:=NextWidth;
        MaxWidth:=NextWidth;
      End;
      NextNode:=NextNode.GetNextSibling;
    End;
  End;
End;

Function FindNewMaxWidthNode(Node,PrevMaxWidthNode:TDCTreeNode):TDCTreeNode;
  Procedure _RecalcLevel(Node:TDCTreeNode);
  Var
    MaxWidth:Integer;
    NextNode:TDCTreeNode;
    NextWidth:Integer;
  Begin
    //Initialize by self
    MaxWidth:=Node.Width;
    Node.FChildInfo.MaxWidthNode:=Node;
    Node.FChildInfo.MaxWidth:=MaxWidth;
    //Find max width
    If Node.Expanded Then
    Begin
      NextNode:=Node.GetFirstChild;
      While NextNode<>Nil Do
      Begin
        NextWidth:=NextNode.FChildInfo.MaxWidth;
        If NextWidth>MaxWidth Then
        Begin
          Node.FChildInfo.MaxWidthNode:=NextNode.FChildInfo.MaxWidthNode;
          Node.FChildInfo.MaxWidth:=NextWidth;
          MaxWidth:=NextWidth;
        End;
        NextNode:=NextNode.GetNextSibling;
      End;
    End;  
  End;
Begin
  Result:=Node;
  While (Result<>Nil) And (Result.FChildInfo.MaxWidthNode=PrevMaxWidthNode) Do
  Begin
    _RecalcLevel(Result);
    Result:=Result.FDCParent;
  End
End;

{---------------------------------------------------------}

Procedure UpdateMaxWidthNode(NextNode:TDCTreeNode;Node:TDCTreeNode);
Var
  MaxWidth:Integer;
Begin
  MaxWidth:=Node.Width;
  While (NextNode<>Nil) And (NextNode.FChildInfo.MaxWidth<MaxWidth) Do
  Begin
    NextNode.FChildInfo.MaxWidthNode:=Node;
    NextNode.FChildInfo.MaxWidth:=MaxWidth;
    NextNode:=NextNode.FDCParent;
  End;
End;

{---------------------------------------------------------}

Procedure AfterCollapse(Node:TDCTreeNode);
Begin
  FindNewMaxWidthNode(Node,Node.FChildInfo.MaxWidthNode);
End;

{---------------------------------------------------------}

Procedure AfterExpand(Node:TDCTreeNode);
Begin
  Node.CalcMaxWidthInfo;
  UpdateMaxWidthNode(Node.FDCParent,Node.FChildInfo.MaxWidthNode);
End;

{---------------------------------------------------------}

Procedure AfterUpdateWidth(Node:TDCTreeNode);
Var
  NewWidth:Integer;
Begin
  NewWidth:=Node.Width;
  If Node.FChildInfo.MaxWidth>NewWidth Then
    FindNewMaxWidthNode(Node,Node)
  Else
    UpdateMaxWidthNode(Node,Node);
End;

{---------------------------------------------------------}

Procedure AfterInsert(Node:TDCTreeNode);
Begin
  Node.FChildInfo.MaxWidthNode:=Node;
  Node.FChildInfo.MaxWidth:=Node.Width;

  UpdateMaxWidthNode(Node.FDCParent,Node)
End;

{---------------------------------------------------------}

Procedure AfterDelete(Node:TDCTreeNode);
Begin
  FindNewMaxWidthNode(Node.FDCParent,Node)
End;

{ TDCCanvas }

Constructor TDCCanvas.Create;
Begin
  Inherited;
  FDotPatternLen:=10;
  FPatternChanged:=True;
End;

{---------------------------------------------------------}

Destructor TDCCanvas.Destroy;
Begin
  Control:=Nil;
  FreeDotPatterns;
  Inherited;
End;
  
{---------------------------------------------------------}

Procedure TDCCanvas.CheckDotPatterns;
Begin
  If Not FPatternsCreated Then
    CreateDotPatterns
  Else
    InitPatterns;
End;

{---------------------------------------------------------}

Procedure TDCCanvas.CreateDotPatterns;
Var
  ScreenDC:THandle;
Begin
  ScreenDC:=GetDC(0);
  FDotHorzPatternDC:=CreateCompatibleDC(ScreenDC);
  FDotVertPatternDC:=CreateCompatibleDC(ScreenDC);
  FDotHorzPattern:=CreateCompatibleBitmap(ScreenDC,FDotPatternLen,1);
  FDotVertPattern:=CreateCompatibleBitmap(ScreenDC,1,FDotPatternLen);
  SelectObject(FDotHorzPatternDC,FDotHorzPattern);
  SelectObject(FDotVertPatternDC,FDotVertPattern);
  ReleaseDC(0,ScreenDC);
  FPatternsCreated:=True;
  InitPatterns;
End;

{---------------------------------------------------------}

Procedure TDCCanvas.DrawFocusRect(const ARect:TRect);
Var
  L1X1,L1Y,L1X2:Integer;
  L2X,L2Y1,L2Y2:Integer;
  L3X1,L3Y,L3X2:Integer;
  L4X,L4Y1,L4Y2:Integer;
Begin
  If IsRectEmpty(ARect) Then
    Exit;
  L1X1:=ARect.Left;
  L1Y:=ARect.Top;
  L1X2:=ARect.Right-1;

  L2X:=ARect.Right-1;
  L2Y1:=ARect.Top;
  L2Y2:=ARect.Bottom-1;

  L3X1:=ARect.Right-1;
  L3Y:=ARect.Bottom-1;
  L3X2:=ARect.Left;

  L4X:=ARect.Left;
  L4Y1:=ARect.Bottom-1;
  L4Y2:=ARect.Top;

  If Odd(L1X2-L1X1) Then
  Begin
    Inc(L1X2);
    Inc(L2Y1);
  End;
  If Odd(L2Y2-L2Y1) Then
  Begin
    Inc(L2Y2);
    Dec(L3X1);
  End;
  If Odd(L3X2-L3X1) Then
  Begin
    Dec(L3X2);
    Dec(L4Y1);
  End;
  Pattern:=DotedPattern;
  DrawHorzDotLine(L1X1,L1Y,L1X2);
  DrawVertDotLine(L2X,L2Y1,L2Y2);

  DrawHorzDotLine(L3X1,L3Y,L3X2);
  DrawVertDotLine(L4X,L4Y1,L4Y2);
End;

{---------------------------------------------------------}

Procedure TDCCanvas.DrawHorzDotLine(X1,Y,X2:Integer);
Var
  Len,
  X:Integer;
  PatLen:Integer;
  Fwd:Boolean;
  SavePattern:TPattern;
  SrcPos:Integer;
Begin
  RequiredState([csHandleValid,csPenValid,csBrushValid]);
  Fwd:=X2>X1;
  SavePattern:=Pattern;
  If Not Fwd Then
    Pattern:=MirrorPattern(SavePattern);
  CheckDotPatterns;
  Len:=Abs(X2-X1);
  X:=X1;
  SrcPos:=0;
  While Len>0 Do
  Begin
    If Len>FDotPatternLen Then
      PatLen:=FDotPatternLen
    Else
      PatLen:=Len;
    If Not Fwd Then
      Dec(X,PatLen-1);
    BitBlt(Handle,X,Y,PatLen,1,FDotHorzPatternDC,SrcPos,0,CopyMode);
    If Fwd Then
      Inc(X,PatLen)
    Else
      Dec(X);
    Dec(Len,PatLen);
  End;
  Pattern:=SavePattern;
End;

{---------------------------------------------------------}

Procedure TDCCanvas.DrawText(const Text:String;Var ARect:TRect;Flags:TDrawTextFlags);
  Function ConvertFlags:Integer;
  Begin
    Result:=0;
    If dtfEndEllipsis In Flags Then
      Result:=Result Or DT_END_ELLIPSIS;
    If dtfPathEllipsis In Flags Then
      Result:=Result Or DT_PATH_ELLIPSIS;
    If dtfWordBreak In Flags Then
      Result:=Result Or DT_WORDBREAK;
    If Not (dftPrefix In Flags) Then
      Result:=Result Or DT_NOPREFIX;
    If dtfSingleLine In Flags Then
      Result:=Result Or DT_SINGLELINE;
  End;
Var
  WinFlags:Integer;
  DrawRect:TRect;
Begin
  RequiredState([csHandleValid,csFontValid,csBrushValid]);
  DrawRect:=ARect;
  If [dtfEndEllipsis,dtfPathEllipsis]*Flags=[dtfEndEllipsis,dtfPathEllipsis] Then
    InvalidOperation(SErrInvalidFlags);
  WinFlags:=ConvertFlags;
  Windows.DrawText(Handle,PChar(Text),Length(Text),DrawRect,DT_CALCRECT Or WinFlags);
  If ARect.Right-ARect.Left<DrawRect.Right-DrawRect.Left Then
    DrawRect.Right:=DrawRect.Left+ARect.Right-ARect.Left;
  Case FTextHorzAlign Of
    haLeft:HLeftRect(DrawRect,ARect);
    haCenter:HCenterRect(DrawRect,ARect);
    haRight:HRightRect(DrawRect,ARect);
  End;
  Case FTextVertAlign Of
    vaTop:VTopRect(DrawRect,ARect);
    vaCenter:VCenterRect(DrawRect,ARect);
    vaBottom:VBottomRect(DrawRect,ARect);
  End;
  If dtfCalcRect In Flags Then
  Begin
    ARect:=DrawRect;
    Exit;
  End;
  If Text='' Then
  Begin
    DrawRect.Right:=DrawRect.Left;
    DrawRect.Bottom:=DrawRect.Top;
  End
  Else
    Windows.DrawText(Handle,PChar(Text),Length(Text),DrawRect,WinFlags);
  If Not (cfNoTextFill In FFlags) Then
    FillRectExclude(ARect,DrawRect);
End;

{---------------------------------------------------------}

Procedure TDCCanvas.DrawVertDotLine(X,Y1,Y2:Integer);
Var
  Len,
  Y:Integer;
  PatLen:Integer;
  Fwd:Boolean;
  SavePattern:TPattern;
  SrcPos:Integer;
Begin
  RequiredState([csHandleValid,csPenValid,csBrushValid]);
  Fwd:=Y2>Y1;
  SavePattern:=Pattern;
  If Not Fwd Then
    Pattern:=MirrorPattern(Pattern);
  CheckDotPatterns;
  Len:=Abs(Y2-Y1);
  Y:=Y1;
  SrcPos:=0;
  While Len>0 Do
  Begin
    If Len>FDotPatternLen Then
      PatLen:=FDotPatternLen
    Else
      PatLen:=Len;
    If Not Fwd Then
      Dec(Y,PatLen-1);
    BitBlt(Handle,X,Y,1,PatLen,FDotVertPatternDC,0,SrcPos,CopyMode);
    If Fwd Then
      Inc(Y,PatLen)
    Else
      Dec(Y);
    Dec(Len,PatLen);
  End;
  Pattern:=SavePattern;
End;

{---------------------------------------------------------}

Procedure TDCCanvas.FillRectExclude(const ARect,AExcludeRect:TRect);
Begin
  RequiredState([csHandleValid,csPenValid,csBrushValid]);
  If IsRectEmpty(ARect) Then
    Exit;
  If IsRectEmpty(AExcludeRect) Then
    FillRect(ARect)
  Else
  Begin
    FillRect(Rect(ARect.Left,ARect.Top,AExcludeRect.Left,ARect.Bottom));//left rect
    FillRect(Rect(AExcludeRect.Right,ARect.Top,ARect.Right,ARect.Bottom));//right rect
    FillRect(Rect(AExcludeRect.Left,ARect.Top,AExcludeRect.Right,AExcludeRect.Top));//top rect
    FillRect(Rect(AExcludeRect.Left,AExcludeRect.Bottom,AExcludeRect.Right,ARect.Bottom));//bottom rect
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCanvas.FreeDotPatterns;
Begin
  If Not FPatternsCreated Then
    Exit;
  DeleteObject(FDotHorzPattern);
  DeleteObject(FDotVertPattern);
  DeleteDC(FDotHorzPatternDC);
  DeleteDC(FDotVertPatternDC);
End;

{---------------------------------------------------------}

Procedure TDCCanvas.InitPatterns;
Var
  I:Integer;
  Bit:Integer;
  Len:Integer;
  Color:TColor;
Begin
  If (FBrushColor=Brush.Color) And
     (FPenColor=Pen.Color) And Not FPatternChanged Then
    Exit;
  Bit:=$80;
  Len:=0;
  For I:=0 To FDotPatternLen-1 Do
  Begin
    If (FPattern And Bit)=0 Then
      Color:=ColorToRGB(Brush.Color)
    Else
      Color:=ColorToRGB(Pen.Color);
    SetPixel(FDotHorzPatternDC,I,Color);
    SetPixel(FDotVertPatternDC,0,Color);
//    SetPixel(FDotHorzPatternDC,I,0,Color);
//    SetPixel(FDotVertPatternDC,0,I,Color);
    Inc(Len);
    Bit:=Bit Shr 1;
    If Len Mod 8=0 Then
      Bit:=$80;
  End;
  FBrushColor:=Brush.Color;
  FPenColor:=Pen.Color;
  FPatternChanged:=False;
End;

{---------------------------------------------------------}

Function TDCCanvas.MirrorPattern(SourcePattern:TPattern):TPattern;
Var
  LowBit,HighBit:Byte;
  I:Integer;
Begin
  LowBit:=1;
  HighBit:=$80;
  Result:=0;
  For I:=0 To 7 Do
  Begin
    If SourcePattern And LowBit<>0 Then
      Result:=Result Or HighBit;
    LowBit:=LowBit Shl 1;
    HighBit:=HighBit Shr 1;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCanvas.SetPattern(Value:TPattern);
Begin
  If FPattern=Value Then
    Exit;
  FPattern:=Value;
  FPatternChanged:=True;
End;

{ TDCTreeToolTip }

Constructor TDCTreeToolTip.Create(AOwner:TComponent);
Begin
  Inherited;
  Deactivate;
End;

{---------------------------------------------------------}

Procedure TDCTreeToolTip.DoHideToolTip;
Begin
  Inherited;
  If FToolTipAdded Then
    DeleteToolTip(ToolTipID,FTreeNode.TreeView.Handle);
  FToolTipAdded:=False;
  FTreeNode:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCTreeToolTip.SetTreeNode(Value:TDCTreeNode);
Var
  Pt:TPoint;
  ToolTipRect:TRect;
  NodeText:String;
Begin
  If (FTreeNode=Value) Or Not HandleAllocated Then
    Exit;
  Deactivate;
  FTreeNode:=Value;
  If (FTreeNode=Nil) Or (FTreeNode=FTreeNode.TreeView.FEditNode) Then
    Exit;
  FTreeNodeRect:=FTreeNode.DisplayRect(True);
  FTreeNodeRect.Right:=FTreeNodeRect.Left+FTreeNode.GetTextWidth;
  With FTreeNode.TreeView.GetDrawRect Do
    If (FTreeNodeRect.Right<=Right) And
       (FTreeNodeRect.Left>=Left) And
       (FTreeNodeRect.Bottom<=Bottom) And
       (FTreeNodeRect.Top>=Top) Then
    Begin
      FTreeNode:=Nil;
      Exit;
    End;

  FTextRect:=FTreeNodeRect;
  InflateRect(FTextRect,-FocusSpace-TextSpace,-FocusSpace-TextSpace);
  With FTreeNode.TreeView Do
  Begin
    FTextRect:=Bounds(FTextRect.Left,FTextRect.Top,
                      FTextRect.Right-FTextRect.Left,(GetEditorHeight(FTreeNode,FTreeNode.Text,0)+1) And Not 1);
    VCenterRect(FTextRect,FTreeNodeRect);
  End;
  InflateRect(FTextRect,GetSystemMetrics(SM_CXBORDER)+FocusSpace+TextSpace,GetSystemMetrics(SM_CYBORDER)+FocusSpace-TextSpace);
  With FTreeNode.TreeView.GetDrawRect Do
  Begin
    If FTreeNodeRect.Right>Right Then
     FTreeNodeRect.Right:=Right;
    If FTreeNodeRect.Bottom>Bottom Then
      FTreeNodeRect.Bottom:=Bottom;
  End;
  ToolTipRect:=FTreeNodeRect;
  With FTreeNode Do
  Begin
    NodeText:=Text;
    TreeView.DoGetToolTipInfo(FTreeNode,NodeText,FTextRect);
    Self.Width:=FTextRect.Right-FTextRect.Left+GetSystemMetrics(SM_CXBORDER)*2;
    If FToolTipAdded Then
      UpdateToolTipInfo(ToolTipID,TreeView.Handle,ToolTipRect,NodeText,True)
    Else
    Begin
      AddToolTip(ToolTipID,TreeView.Handle,ToolTipRect,NodeText,True);
      FToolTipAdded:=True;
    End;
  End;
  Pt:=Point(0,0);
  Pt:=FTreeNode.TreeView.ClientToScreen(Pt);
  OffsetRect(FTreeNodeRect,Pt.X,Pt.Y);
  OffsetRect(FTextRect,Pt.X,Pt.Y);
  SendMessage(Handle,WM_SETFONT,FTreeNode.InternalFont.Handle,0);
  Activate;
End;

{---------------------------------------------------------}

Procedure TDCTreeToolTip.WndProc(Var Message:TMessage);
Var
  Pt:TPoint;
  WndHandle:THandle;
  ARect:TRect;
  TreeViewPt:TPoint;
Begin
  Case Message.Msg Of
    WM_WINDOWPOSCHANGING:
      With TWindowPos(Pointer(Message.LParam)^) Do
      Begin
        X:=FTextRect.Left;
        Y:=FTextRect.Top;
      End;
    TTM_WINDOWFROMPOINT:
      Begin
        If TreeNode<>Nil Then
        Begin
          GetCursorPos(Pt);
          ARect:=FTreeNodeRect;
          With TreeNode.TreeView Do
          Begin
            TreeViewPt:=Point(0,0);
            TreeViewPt:=ClientToScreen(TreeViewPt);
          End;
          If ARect.Left<TreeViewPt.X Then
            ARect.Left:=TreeViewPt.X;
          If ARect.Top<TreeViewPt.Y Then
            ARect.Top:=TreeViewPt.Y;
          WndHandle:=WindowFromPoint(Pt);
          If PtInRect(ARect,Pt) And (WndHandle=Handle) Then
          Begin
            Message.Result:=FTreeNode.TreeView.Handle;
            Exit;
          End
        End;
      End;
    WM_MOUSEACTIVATE:
      Begin
        Message.Result:=MA_NOACTIVATE;
        Exit;
      End;
    WM_LBUTTONDOWN,WM_LBUTTONUP,WM_LBUTTONDBLCLK,
    WM_RBUTTONDOWN,WM_RBUTTONUP,WM_RBUTTONDBLCLK:
      Begin
        If FTreeNode<>Nil Then
        Begin
          Pt.X:=Message.lParamLo;
          Pt.Y:=Message.lParamHi;
          ClientToScreen(Handle,Pt);
          Pt:=FTreeNode.TreeView.ScreenToClient(Pt);
          Message.lParamLo:=Pt.X;
          Message.lParamHi:=Pt.Y;
          Try
            TDCCustomTreeView(FTreeNode.TreeView).WndProc(Message);
          Except
            Application.HandleException(Self);
          End;
        End;
        Exit;
      End;
    WM_MOUSEMOVE:
      Begin
        GetCursorPos(Pt);
        If PtInRect(FTreeNodeRect,Pt) Then
          Exit;
      End;
  End;
  Inherited;
End;

{ TDCTreeNode }

Constructor TDCTreeNode.Create(AOwner:TDCTreeNodes);
Begin
  Inherited Create;
  FOwner:=AOwner;
  If FOwner<>Nil Then
  Begin
    FTreeView:=FOwner.FOwner;
    FColor:=FTreeView.Color;
  End;
  FStateIndex:=-1;
  FOverlayIndex:=-1;
  Include(FNodeState,nsParentColor);
  Include(FNodeState,nsParentFont);
End;

{---------------------------------------------------------}

Destructor TDCTreeNode.Destroy;
Var
  NextTopItem:TDCTreeNode;
  NewFocused:TDCTreeNode;
  IsDestroying:Boolean;
Begin
  If TreeView.FRootNode<>Self Then
  Begin
    With TreeView Do
      If FEditNode=Self Then
        EndEditNode(False);
    FOwner.ClearCache;
  End;
  Include(FNodeState,nsDeleting);
  InternalDeleteChildren;
  NextTopItem:=Self;
  NewFocused:=Self;
  If (TreeView<>Nil) And (Self=TreeView.FLastDropTarget) Then
    TreeView.FLastDropTarget:=Nil;
  If FDCParent<>Nil Then
  Begin
    IsDestroying:=(csDestroying In TreeView.ComponentState);
    If Not IsDestroying Then
      With TreeView Do
      Begin
        If FMakeVisibleNode=Self Then
          FMakeVisibleNode:=Nil;
        If FTopItem=Self Then
        Begin
          NextTopItem:=FTopItem.GetNextVisibleSimple;
          If NextTopItem=Nil Then
            NextTopItem:=FTopItem.GetPrevVisibleSimple;
        End;
        If FPrevClickItem=Self Then
          KillEditTimer;
        If Selected=Self Then
        Begin
          NewFocused:=GetNextVisibleSimple;
          If NewFocused=Nil Then
            NewFocused:=GetPrevVisibleSimple;
        End;
        If FShiftSelectNode=Self Then
          FShiftSelectNode:=Nil;
        If FHighlightNode=Self Then
          FHighlightNode:=Nil;
        If MultiSelect Then
          RemoveFromMultiSelect(Self);
        If FHotTrackNode=Self Then
          FHotTrackNode:=Nil;
        DoBeforeDelete1(Self);
      End;
    TreeView.FSelectedItems.Remove(Self);
    DeleteNode(Self);
    If Not IsDestroying Then
    Begin
      If (FDCParent<>Nil) And (FDCParent.FRadioChecked=Self) Then
        FDCParent.FRadioChecked:=Nil;
      TreeView.DoBeforeDelete2(Self);
      With TreeView Do
        If Selected=Self Then
        Begin
          FFocused:=Nil;
          If FOwner.Locked Then
            FNewFocused:=NewFocused
          Else
            Selected:=NewFocused;
        End;
      If NextTopItem<>Self Then
      Begin
        TreeView.FTopItem:=NextTopItem;
        TreeView.SetTopItemInternal(NextTopItem);
      End;
    End;
    TreeView.DoDeletion(Self);
    UpdateButton;
  End;
  FFont.Free;
  Inherited;
End;

{---------------------------------------------------------}

Function TDCTreeNode.AllowPaint:Boolean;
Begin
  Result:=Not FOwner.Locked And TreeView.HandleAllocated;
End;

{---------------------------------------------------------}

Function TDCTreeNode.AlphaSort:Boolean;
Begin
  Result:=CustomSort(Nil,0);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.Assign(Source:TPersistent);
Var
  Node:TDCTreeNode;
Begin
  If Source Is TDCTreeNode then
  Begin
    Node:=TDCTreeNode(Source);

    Checked:=Node.Checked;
    Data:=Node.Data;
    AllowGrayed:=Node.AllowGrayed;
    ParentColor:=Node.ParentColor;
    If Not ParentColor Then
      Color:=Node.Color;
    Expanded:=Node.Expanded;
    If Node.Count=0 Then
      HasChildren:=Node.HasChildren;
    ImageIndex:=Node.ImageIndex;
    NodeType:=Node.NodeType;
    OverlayIndex:=Node.OverlayIndex;
    ParentFont:=Node.ParentFont;
    ReadOnly:=Node.ReadOnly;
    SelectedIndex:=Node.SelectedIndex;
    State:=Node.State;
    StateIndex:=Node.StateIndex;
    Text:=Node.Text;
    If Not Node.ParentFont Then
      Font:=Node.Font
  End
  Else
    Inherited;
end;

{---------------------------------------------------------}

Procedure TDCTreeNode.CalcMaxWidthInfo;
Var
  NextNode:TDCTreeNode;
  NextWidth:Integer;
Begin
  FChildInfo.MaxWidthNode:=Self;
  FChildInfo.MaxWidth:=Width;
  If Not Expanded Then
    Exit;
  NextNode:=GetFirstChild;
  While NextNode<>Nil Do
  Begin
    NextNode.CalcMaxWidthInfo;
    NextWidth:=NextNode.FChildInfo.MaxWidth;
    If NextWidth>FChildInfo.MaxWidth Then
    Begin
      FChildInfo.MaxWidthNode:=NextNode.FChildInfo.MaxWidthNode;
      FChildInfo.MaxWidth:=NextWidth;
    End;
    NextNode:=NextNode.GetNextSibling;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.Collapse(Recurse:Boolean);
  Procedure _CollapseNodes(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
    AllowCollapse:Boolean;
  Begin
    NextNode:=Node.GetFirstChild;
    While NextNode<>Nil Do
      Begin
        AllowCollapse:=NextNode.Expanded And TreeView.CanCollapse(NextNode);
        If AllowCollapse Then
        Begin
          Exclude(NextNode.FNodeState,nsExpanded);
          NextNode.FChildInfo.ExpandedCount:=0;
        End;
        _CollapseNodes(NextNode);
        If AllowCollapse Then
          TreeView.DoCollapsed(Self);
        NextNode:=NextNode.GetNextSibling;
      End;
  End;

Begin
  If Not HasChildren Or ((Not Expanded Or Not TreeView.CanCollapse(Self)) And
                         Not Recurse) Then
    Exit;
  FOwner.ClearCache;
  TreeView.EndEditNode(False);
  Exclude(FNodeState,nsExpanded);

  If Recurse Then
    _CollapseNodes(Self);
  FDCParent.IncExpandedCount(-FChildInfo.ExpandedCount);
  FChildInfo.ExpandedCount:=0;

  If TreeView.FTopItem.HasAsParent(Self) Then
    TreeView.TopItem:=Self;

  If (TreeView.Selected<>Nil) And (TreeView.Selected.HasAsParent(Self)) Then
    TreeView.Selected:=Self;

  TreeView.DeselectPrevious(TreeView.Selected);

  If Not FOwner.Locked And IsVisible Then
  Begin
    AfterCollapse(Self);
    InvalidateBelow(False);
    Invalidate([npButton]);
    TreeView.UpdateScroll(False,True);
  End;
  TreeView.DoCollapsed(Self);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.CreateFont(Value:TFont);
Begin
  FFont:=TFont.Create;
  If Value<>Nil Then
    FFont.Assign(Value);
  FFont.OnChange:=OnFontChanged;
End;

{---------------------------------------------------------}

Function TDCTreeNode.CustomSort(SortProc:TDTVCompare;Data:Longint):Boolean;
  Procedure BuildTreeAsc(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
    ParentNode:TDCTreeNode;
  Begin
    While True Do
    Begin
      If Node.FNodePrev<>Nil Then
        Node:=Node.FNodePrev
      Else
      Begin
        NextNode:=Node.FNodeNext;
        ParentNode:=Node.FDCParent;
        Node.FDCParent:=Self;
        AddChildNode(Self,Node);
        If ParentNode<>Nil Then
          If ParentNode.FNodePrev=Node Then
            ParentNode.FNodePrev:=NextNode
          Else
            ParentNode.FNodeNext:=NextNode;
        If NextNode=Nil Then
          If ParentNode=Nil Then
            Break
          Else
            Node:=ParentNode
        Else
        Begin
          NextNode.FDCParent:=ParentNode;
          Node:=NextNode;
        End;
       End;
    End;
  End;

  Procedure BuildTreeDesc(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
    ParentNode:TDCTreeNode;
  Begin
    While True Do
    Begin
      If Node.FNodeNext<>Nil Then
        Node:=Node.FNodeNext
      Else
      Begin
        NextNode:=Node.FNodePrev;
        ParentNode:=Node.FDCParent;
        Node.FDCParent:=Self;
        AddChildNode(Self,Node);
        If ParentNode<>Nil Then
          If ParentNode.FNodeNext=Node Then
            ParentNode.FNodeNext:=NextNode
          Else
            ParentNode.FNodePrev:=NextNode;
        If NextNode=Nil Then
          If ParentNode=Nil Then
            Break
          Else
            Node:=ParentNode
        Else
        Begin
          NextNode.FDCParent:=ParentNode;
          Node:=NextNode;
        End;
       End;
    End;
  End;

Var
  Node:TDCTreeNode;
  NextNode:TDCTreeNode;
  BinaryTree:TDCTreeNode;
  MaxNode:TDCTreeNode;
  MinNode:TDCTreeNode;
  CurNode:TDCTreeNode;
  CompRes:Integer;
Begin
  Result:=True;
  If @SortProc=Nil Then
    SortProc:=@DefaultTreeViewSort;
  BinaryTree:=FChildInfo.FirstNode;
  If BinaryTree=Nil Then
    Exit;
  MinNode:=BinaryTree;
  MaxNode:=BinaryTree;
  Node:=BinaryTree.FNodeNext;
  BinaryTree.FNodePrev:=Nil;
  BinaryTree.FNodeNext:=Nil;
  BinaryTree.FDCParent:=Nil;
  Try
    While Node<>Nil Do
    Begin
      NextNode:=Node.FNodeNext;
      Node.FNodePrev:=Nil;
      Node.FNodeNext:=Nil;
        If SortProc(Integer(Node),Integer(MinNode),Data)<0 Then
        Begin
          If BinaryTree.FNodePrev=Nil Then
          Begin
            BinaryTree.FNodePrev:=Node;
            Node.FDCParent:=BinaryTree;
          End
          Else
          Begin
            Node.FNodeNext:=BinaryTree;
            BinaryTree.FDCParent:=Node;
            BinaryTree:=Node;
          End;
          MinNode:=Node;
        End
        Else
          If SortProc(Integer(MaxNode),Integer(Node),Data)<0 Then
          Begin
            If BinaryTree.FNodeNext=Nil Then
            Begin
              BinaryTree.FNodeNext:=Node;
              Node.FDCParent:=BinaryTree;
            End
            Else
            Begin
              Node.FNodePrev:=BinaryTree;
              BinaryTree.FDCParent:=Node;
              BinaryTree:=Node;
            End;
            MaxNode:=Node;
          End
          Else
          Begin
            //Search in Tree
            CurNode:=BinaryTree;
            While True Do
            Begin
              CompRes:=SortProc(Integer(CurNode),Integer(Node),Data);
              If CompRes>0 Then
                If CurNode.FNodePrev=Nil Then
                Begin
                  CurNode.FNodePrev:=Node;
                  Node.FDCParent:=CurNode;
                  Break
                End
                Else
                  CurNode:=CurNode.FNodePrev
              Else
                If CurNode.FNodeNext=Nil Then
                Begin
                  CurNode.FNodeNext:=Node;
                  Node.FDCParent:=CurNode;
                  Break;
                End
                Else
                  CurNode:=CurNode.FNodeNext;
            End;
          End;
        Node:=NextNode;
      End;
  Finally
    FChildInfo.FirstNode:=Nil;
    FChildInfo.LastNode:=Nil;
    BinaryTree.FDCParent:=Nil;
    If TreeView.SortOrder=soAscending Then
      BuildTreeAsc(BinaryTree)
    Else
      BuildTreeDesc(BinaryTree);

    If (FTreeView<>Nil) Then
    Begin
      FOwner.ClearCache;
      If Not FOwner.Locked Then
        TreeView.TopItemChanged;
    End;
  End;  
End;

Procedure TDCTreeNode.Delete;
Begin
  If Not Deleting Then
    Free;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.DeleteChildren;
Begin
  If FChildInfo.ItemCount=0 Then
    Exit;
  FOwner.BeginUpdate;
  Try
    InternalDeleteChildren;
  Finally
    FOwner.EndUpdate;
  End;
  If IsVisible Then
  Begin
    InvalidateBelow(False);
    TreeView.UpdateScroll(False,True);
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.DisplayRect(TextOnly:Boolean):TRect;
Begin
  If TextOnly Then
    Result:=DisplayRectPart(npText,npText,False)
  Else
    Result:=DisplayRectPart(npStateImage,npText,False)
End;

{---------------------------------------------------------}

Function TDCTreeNode.DisplayRectPart(FromPart,ToPart:TNodePart;IsSmart:Boolean):TRect;
Var
  DispInfo:TDCNodeDispInfo;
Begin
  GetNodeDispInfoEx(DispInfo,IsSmart);
  Result:=DispInfo[FromPart];
  Result.Right:=DispInfo[ToPart].Right;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.DrawCheckBox(const ARect:TRect);
Var
  ButtonRect:TRect;
  ButtonState:Integer;
Begin
  If (NodeType=ntRadioButton) And Not TreeView.FPrinting Then
    TreeView.DrawBackground(Self,ARect);

  ButtonRect:=Rect(0,0,GetSystemCheckBoxWidth-1,GetSystemCheckBoxHeight-1);
  CenterRect(ButtonRect,ARect);
  If NodeType=ntCheckBox Then
    ButtonState:=DFCS_BUTTONCHECK
  Else
    ButtonState:=DFCS_BUTTONRADIO;
  If TreeView.FlatChecks Then
    ButtonState:=ButtonState Or DFCS_FLAT;
  Case FState Of
    cbChecked:ButtonState:=ButtonState Or DFCS_CHECKED;
    cbGrayed:ButtonState:=ButtonState Or DFCS_CHECKED Or DFCS_INACTIVE;
  End;
  Inc(ButtonRect.Right);
  Inc(ButtonRect.Bottom);
  DrawFrameControl(TreeView.FCanvas.Handle,ButtonRect,DFC_BUTTON,ButtonState);
  If (NodeType<>ntRadioButton) And Not TreeView.FPrinting Then
    TreeView.FillRectExclude(Self,ARect,ButtonRect);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.DrawImage(const ARect:TRect);
Var
  AIndex:Integer;
  ATop:Integer;
  Mode:Integer;
  AColor:TColor;
Begin
  With TreeView Do
  Begin
    If Images=Nil Then
      Exit;
    If Self.Selected Then
    Begin
      DoGetSelectedIndex(Self);
      AIndex:=SelectedIndex;
    End
    Else
    Begin
      DoGetImageIndex(Self);
      AIndex:=ImageIndex;
    End;
    If (AIndex<0) Or (AIndex>=FImages.Count) Then
    Begin
      If Not FPrinting Then
        DrawBackground(Self,ARect)
    End
    Else
    Begin
      If RowSelect And (FRowSelectType=rtFull) Then
        AColor:=GetSelectedColor(Self,Color)
      Else
        AColor:=Color;
      ATop:=MiddlePoint(ARect.Bottom,ARect.Top-TImageList(Images).Height);
      If nsCut In FNodeState Then
        Mode:=ILD_SELECTED
      Else
        Mode:=ILD_NORMAL;
      ImageList_DrawEx(Images.Handle,AIndex,Canvas.Handle,ARect.Left,ATop,
                       TImageList(Images).Width,TImageList(Images).Height,ColorToRGB(AColor),
                       ColorToRGB(Self.Color),Mode);

      If Not FPrinting Then
        FillRectExclude(Self,ARect,Rect(ARect.Left,ATop,ARect.Left+TImageList(Images).Width,ATop+TImageList(Images).Height));
      Images.Draw(FCanvas,ARect.Left,ATop,FOverlayIndex);
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.DrawStateImage(const ARect:TRect);
Var
  ATop:Integer;
Begin
  With TreeView Do
  Begin
    ATop:=MiddlePoint(ARect.Bottom,ARect.Top-TImageList(StateImages).Height);
    ImageList_DrawEx(StateImages.Handle,FStateIndex,Canvas.Handle,ARect.Left,ATop,
                     TImageList(StateImages).Width,TImageList(StateImages).Height,ColorToRGB(TreeView.Color),
                     CLR_NONE,ILD_NORMAL);
    If Not FPrinting Then
      FillRectExclude(Self,ARect,Rect(ARect.Left,ATop,ARect.Right,ATop+TImageList(StateImages).Height));
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.EditText:Boolean;
Begin
  Result:=FTreeView.EditNode(Self);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.EndEdit(Cancel:Boolean);
Begin
  FTreeView.EndEditNode(Cancel);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.EnsureExpanded;
Var
  Node:TDCTreeNode;
Begin
  Node:=Self.Parent;
  While Node<>Nil Do
  Begin
    Node.Expand(False);
    Node:=Node.Parent;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.Expand(Recurse:Boolean);
  Procedure _ExpandNodes(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
    AllowExpand:Boolean;
  Begin
    NextNode:=Node.GetFirstChild;
    While NextNode<>Nil Do
      Begin
        If NextNode.HasChildren Then
        Begin
          AllowExpand:=Not NextNode.Expanded And TreeView.CanExpand(NextNode);
          If AllowExpand Then
          Begin
            TreeView.DoExpandNode(NextNode);
            Include(NextNode.FNodeState,nsExpanded);
          End;
          _ExpandNodes(NextNode);
          If AllowExpand Then
            TreeView.DoExpanded(Self);
        End;
        NextNode:=NextNode.GetNextSibling;
      End;
  End;

Var
  OldExpandedCount:Integer;
Begin
  If Not HasChildren Or ((Expanded Or Not TreeView.CanExpand(Self)) And
                         Not Recurse) Then
    Exit;
  FOwner.ClearCache;
  TreeView.EndEditNode(False);
  TreeView.DoExpandNode(Self);

  If FChildInfo.ChildCount>0 Then
  Begin
    Include(FNodeState,nsExpanded);
    If Recurse Then
      _ExpandNodes(Self);
    OldExpandedCount:=FChildInfo.ExpandedCount;
    FDCParent.IncExpandedCount(TreeView.RecalcExpandedCount(Self)-OldExpandedCount);

    If Not FOwner.Locked And IsVisible Then
    Begin
      AfterExpand(Self);
      InvalidateBelow(False);
      Invalidate([npButton]);
      TreeView.UpdateScroll (False,True);
    End;
    TreeView.DoExpanded(Self)
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetAbsoluteIndex:Integer;
Var
  PrevSibling:TDCTreeNode;
  NextNode:TDCTreeNode;
Begin
  If Owner.FCacheNode=Self Then
    Result:=Owner.FCacheIndex
  Else
  Begin
    Result:=0;
    NextNode:=Self;
    While True Do
    Begin
      PrevSibling:=NextNode.GetPrevSibling;
      If PrevSibling=Nil Then
      Begin
        If FParent<>Nil Then
          Result:=Result+Parent.GetAbsoluteIndex+1;
        Exit
      End
      Else
      Begin
        Inc(Result,PrevSibling.FChildInfo.ItemCount);
        Inc(Result);
      End;
      NextNode:=PrevSibling;
    End;
  End;  
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetAbsolutePoint:TPoint;
Begin
  Result.X:=GetPositionX+TreeView.FOffsetX;
  Result.Y:=GetAbsolutePointY;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetAbsolutePointY:Integer;
Var
  NextNode:TDCTreeNode;
Begin
  Result:=0;
  NextNode:=Self.GetPrevVisibleSimple;
  While NextNode<>Nil Do
  Begin
    Inc(Result,NextNode.GetHeight);
    NextNode:=NextNode.GetPrevVisibleSimple;
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetAllowGrayed:Boolean;
Begin
  Result:=nsAllowGrayed In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetButtonRect:TRect;
Var
  BWidth,BHeight:Integer;
  AMax:Integer;
Begin
  BWidth:=GetIndent-2;
  BHeight:=GetHeight;
  If BWidth<BHeight Then
    AMax:=BWidth
  Else
    AMax:=BHeight;
  If AMax<5 Then
    AMax:=3
  Else If AMax<9 Then
    AMax:=5
  Else If AMax<14 Then
    AMax:=7
  Else
    AMax:=9;
  Result:=Rect(0,0,AMax,AMax);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetCheckBoxWidth:Integer;
Begin
  If ShowCheckBox Then
    Result:=GetSystemCheckBoxWidth+CheckBoxSpace*2
  Else
    Result:=0;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetChecked:Boolean;
Begin
  Result:=FState=cbChecked;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetCount:Integer;
Begin
  Result:=FChildInfo.ChildCount;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetCut:Boolean;
Begin
  Result:=nsCut In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetDeleting:Boolean;
Begin
  Result:=nsDeleting In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetDropTarget:Boolean;
Begin
  Result:=nsDropTarget In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetExpanded:Boolean;
Begin
  Result:=nsExpanded In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetExpandedCount:Integer;
Var
  Node:TDCTreeNode;
Begin
  Node:=GetFirstChild;
  Result:=0;
  While Node<>Nil Do
  Begin
    Inc(Result,Node.GetExpandedCount+1);
    Node:=Node.GetNextSibling;
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetFirstChild:TDCTreeNode;
Begin
  Result:=FChildInfo.FirstNode;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetFocused:Boolean;
Begin
  Result:=nsFocused In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetFont:TFont;
Begin
  If FFont=Nil Then
    CreateFont(TreeView.Font);
  Result:=FFont;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetFontColor:TColor;
Begin
  Result:=InternalFont.Color;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetFontStyle:TFontStyles;
Begin
  Result:=InternalFont.Style;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetHasChildren:Boolean;
Begin
  Result:=nsHasChildren In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetHeight:Integer;
Begin
  If TreeView.HandleAllocated Then
    If nsHeightCalculated In FNodeState Then
     Result:=FCachedHeight
    Else
    Begin
      FCachedHeight:=TreeView.NodeHeight(Self,0);
      Result:=FCachedHeight;
      Include(FNodeState,nsHeightCalculated);
    End
  Else
    Result:=0;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetIndent:Integer;
Begin
  If Not TreeView.ShowRoot And (Parent=Nil) Then
    Result:=0
  Else
    Result:=GetIndentInternal;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetIndentInternal:Integer;
Begin
  Result:=TreeView.Indent;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetImageWidth:Integer;
Begin
  With TreeView Do
    If Images=Nil Then
      Result:=0
    Else
      Result:=TImageList(Images).Width+ImageTextSpace;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetIndex:Integer;
Var
  Node:TDCTreeNode;
Begin
  Result:=-1;
  Node:=Self;
  While Node<>Nil Do
  Begin
    Inc(Result);
    Node:=Node.GetPrevSibling;
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetInternalFont:TFont;
Begin
  If FFont=Nil Then
    Result:=TreeView.Font
  Else
    Result:=FFont;  
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetIsVisible:Boolean;
Var
  Node:TDCTreeNode;
Begin
  Node:=Self.Parent;
  While Node<>Nil Do
  Begin
    If Not Node.Expanded Then
    Begin
      Result:=False;
      Exit;
    End;
    Node:=Node.Parent;
  End;
  Result:=True;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetItem(Index:Integer):TDCTreeNode;
Begin
  If Index<0 Then
    ErrorFmt({$IFNDEF D3}LoadStr({$ENDIF}SListIndexError{$IFNDEF D3}){$ENDIF},[Index]);
  Result:=GetFirstChild;
  While (Result<>Nil) And (Index>0) Do
  Begin
    Result:=GetNextChild(Result);
    Dec(Index);
  End;
  If Result=Nil Then
    ErrorFmt({$IFNDEF D3}LoadStr({$ENDIF}SListIndexError{$IFNDEF D3}){$ENDIF},[Index]);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetLastChild:TDCTreeNode;
Begin
  Result:=FChildInfo.LastNode;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetLevel:Integer;
Var
  Node:TDCTreeNode;
begin
  Result:=0;
  Node:=Parent;
  While Node<>Nil Do
  Begin
    Inc(Result);
    Node:=Node.Parent;
  End;
end;

{---------------------------------------------------------}

Function TDCTreeNode.GetNext:TDCTreeNode;
Var
  NextNode:TDCTreeNode;
Begin
  If FChildInfo.ItemCount<>0 Then
    Result:=GetFirstChild
  Else
  Begin
    NextNode:=Self;
    Repeat
      Result:=NextNode.GetNextSibling;
      If Result<>Nil Then
        Break;
      NextNode:=NextNode.Parent;
      If NextNode=Nil Then
        Break;
    Until False;
  End
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextChild(Value:TDCTreeNode):TDCTreeNode;
Begin
  If Value<>Nil Then
    Result:=Value.GetNextSibling
  Else
    Result:=Nil;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextSibling:TDCTreeNode;
Begin
  Result:=FNodeNext;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextVisible:TDCTreeNode;
Begin
  Result:=GetNextVisibleSimple;
  If (Result<>Nil) And Not Result.IsVisible Then
    Result:=Nil;  
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextVisibleExternal:TDCTreeNode;
Begin
  Result:=GetNextVisibleSimple;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextVisibleRect(IsForward:Boolean;const ARect:TRect):TDCTreeNode;
Var
  NodeRect:TRect;
Begin
  Result:=Self;
  Repeat
    If IsForward Then
      Result:=Result.GetNextVisibleSimple
    Else
      Result:=Result.GetPrevVisibleSimple;
    If Result=Nil Then
      Exit;
    NodeRect:=Result.DisplayRectPart(npLines,npText,True);
    If (IsForward And (NodeRect.Top>ARect.Bottom)) Or
       (Not IsForward And (NodeRect.Bottom<ARect.Top)) Then
    Begin
      Result:=Nil;
      Exit;
    End;
  Until IsRectsIntersectVert(NodeRect,ARect);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextVisibleSimple:TDCTreeNode;
Begin
  If Expanded Then
    Result:=GetNext
  Else
    Result:=GetNextVisibleNonExpanded;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetNextVisibleNonExpanded:TDCTreeNode;
Var
  Node:TDCTreeNode;
Begin
  Node:=Parent;
  Result:=GetNextSibling;
  While (Result=Nil) And (Node<>Nil) Do
  Begin
    Result:=Node.GetNextSibling;
    Node:=Node.Parent;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.GetNodeDispInfo(Var Result:TDCNodeDispInfo);
Begin
  GetNodeDispInfoEx(Result,False);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.GetNodeDispInfoByPos(Pos:TPoint;Var Result:TDCNodeDispInfo);
Var
  Height:Integer;
  Ident:Integer;
  CheckBoxes:Integer;
  StateImageWidth:Integer;
  ImageWidth:Integer;
  TextWidth:Integer;
  ClientRight:Integer;
Begin
  Height:=GetHeight;
  Result[npLines]:=Rect(TreeView.GetDrawRect.Left-TreeView.FOffsetX,Pos.Y,Pos.X,Pos.Y+Height);
  Ident:=GetIndent;
  Result[npButton]:=Rect(Pos.X,Pos.Y,Pos.X+Ident,Pos.Y+Height);
  Inc(Pos.X,Ident);
  CheckBoxes:=GetCheckBoxWidth;
  Result[npCheckBox]:=Rect(Pos.X,Pos.Y,Pos.X+CheckBoxes,Pos.Y+Height);
  Inc(Pos.X,CheckBoxes);
  StateImageWidth:=GetStateImageWidth;
  Result[npStateImage]:=Rect(Pos.X,Pos.Y,Pos.X+StateImageWidth,Pos.Y+Height);
  Inc(Pos.X,StateImageWidth);
  ImageWidth:=GetImageWidth;
  Result[npImage]:=Rect(Pos.X,Pos.Y,Pos.X+ImageWidth,Pos.Y+Height);
  Inc(Pos.X,ImageWidth);
  TextWidth:=GetTextWidth;
  Result[npText]:=Rect(Pos.X,Pos.Y,Pos.X+TextWidth,Pos.Y+Height);
  If TreeView.IsRowSelect Then
  Begin
    ClientRight:=TreeView.GetDrawRect.Right;
    With Result[npText] Do
      If Right<ClientRight Then
        Right:=ClientRight;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.GetNodeDispInfoEx(Var Result:TDCNodeDispInfo;IsSmart:Boolean);
Var
  Pos:TPoint;
Begin
  If TreeView.FRootNode=Self Then
  Begin
    FillChar(Result,SizeOf(Result),0);
    Exit;
  End;
  If IsSmart Then
    Pos:=GetPositionSmart
  Else
    Pos:=GetPosition;
  GetNodeDispInfoByPos(Pos,Result);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetParentColor:Boolean;
Begin
  Result:=nsParentColor In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetParentFont:Boolean;
Begin
  Result:=nsParentFont In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPosition:TPoint;
Begin
  Result:=Point(GetPositionX,GetPositionY);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPositionSmart:TPoint;
Begin
  Result:=Point(GetPositionX,GetPositionYSmart);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPositionX:Integer;
Var
  Node:TDCTreeNode;
Begin
  Result:=TreeView.GetDrawRect.Left-TreeView.FOffsetX;
  Node:=Parent;
  While Node<>Nil Do
  Begin
    If Not Node.Expanded And Not TreeView.FPrinting Then
    Begin
      Result:=MaxInt;
      Exit;
    End;
    Inc(Result,Node.GetIndent);
    Node:=Node.Parent;
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPositionY:Integer;
Var
  Node:TDCTreeNode;
Begin
  Result:=TreeView.GetDrawRect.Top;
  Node:=TreeView.FTopItem;
  While (Node<>Nil) And (Node<>Self) Do
  Begin
    Inc(Result,Node.GetHeight);
    Node:=Node.GetNextVisibleSimple;
  End;
  If Node=Nil Then
    Result:=MaxInt;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPositionYSmart:Integer;
Var
  Node:TDCTreeNode;
  AHeight:Integer;
  AItemHeight:Integer;
Begin
  Result:=TreeView.GetDrawRect.Top;
  AHeight:=FTreeView.Height;
  Node:=TreeView.FTopItem;
  While (Node<>Nil) And (Node<>Self) Do
  Begin
    AItemHeight:=Node.GetHeight;
    Dec(AHeight,AItemHeight);
    Inc(Result,AItemHeight);
    If AHeight<0 Then
      Exit;
    Node:=Node.GetNextVisibleSimple;
  End;
  If Node=Nil Then
    Result:=MaxInt;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPrev:TDCTreeNode;
Begin
  Result:=GetPrevSibling;
  If Result=Nil Then
    Result:=Parent
  Else
    While Result.FChildInfo.ItemCount>0 Do
      Result:=Result.GetLastChild;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPrevChild(Value:TDCTreeNode):TDCTreeNode;
Begin
  If Value<>Nil Then
     Result:=Value.GetPrevSibling
  Else
    Result:=Nil;
end;

{---------------------------------------------------------}

Function TDCTreeNode.GetPrevSibling:TDCTreeNode;
Begin
  Result:=FNodePrev;          
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPrevVisible:TDCTreeNode;
Begin
  Result:=GetPrevVisibleSimple;
  If (Result<>Nil) And (Not Result.IsVisible) Then
    Result:=Nil;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPrevVisibleExternal:TDCTreeNode;
Begin
  Result:=GetPrevVisibleSimple;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetPrevVisibleSimple:TDCTreeNode;
Begin
  If FDCParent.GetFirstChild=Self Then
    Result:=GetPrev
  Else
  Begin
    Result:=GetPrevSibling;
    While (Result<>Nil) And (Result.Count<>0) And Result.Expanded Do
      Result:=Result.GetLastChild;
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetReadOnly:Boolean;
Begin
  Result:=nsReadOnly In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetSelected:Boolean;
Begin
  Result:=nsSelected In FNodeState;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetShowCheckBox:Boolean;
Begin
  Result:=(TreeView.FCheckBoxesType<>ctNone) And (FNodeType<>ntNone);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetStateImageWidth:Integer;
Begin
  With TreeView Do
    If (StateImages=Nil) Or (StateIndex<0) Or (TImageList(StateImages).Count<=StateIndex) Then
      Result:=0
    Else
      Result:=TImageList(StateImages).Width;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetSymbolRect(const ButtonRect:TRect):TRect;
Var
  AMax:Integer;
Begin
  AMax:=ButtonRect.Right-ButtonRect.Left;
  If AMax<5 Then
    AMax:=1
  Else If AMax<7 Then
    AMax:=3
  Else
    AMax:=5;
  Result:=Rect(0,0,AMax,AMax);
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetText:String;
Begin
  Result:=FText;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetTextWidth:Integer;
Begin
  If TreeView.HandleAllocated Then
    If nsWidthCalculated In FNodeState Then
      Result:=FCachedWidth
    Else
    Begin
      Result:=TreeView.NodeWidth(Self,0);
      FCachedWidth:=Result;
      Include(FNodeState,nsWidthCalculated);
    End
  Else
    Result:=0;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetVisibleIndex:Integer;
Var
  PrevSibling:TDCTreeNode;
  NextSibling:TDCTreeNode;
  PrevNode:TDCTreeNode;
  NextNode:TDCTreeNode;
  BResult,FResult:Integer;
  TopItem:TDCTreeNode;
  TopItemIndexCalculated:Boolean;
Begin
  BResult:=0;
  PrevNode:=Self;
  NextNode:=Self;
  TopItem:=TreeView.FTopItem;
  TopItemIndexCalculated:=TreeView.FTopItemIndexCalculated;
  FResult:=NextNode.FChildInfo.ExpandedCount+1;
  While True Do
  Begin
    PrevSibling:=PrevNode.FNodePrev;
    NextSibling:=NextNode.FNodeNext;

    If TopItemIndexCalculated And ((PrevNode=TopItem) Or (NextSibling=TopItem)) Then
    Begin
      If PrevNode=TopItem Then
        Result:=TreeView.FTopItemIndex+BResult
      Else
        Result:=TreeView.FTopItemIndex-FResult;
      Exit;
    End;

    If PrevSibling=Nil Then
    Begin
      If PrevNode.Parent<>Nil Then
        PrevNode:=PrevNode.Parent
      Else
      Begin
        Result:=BResult;
        Exit;
      End;
    End
    Else
    Begin
      With PrevSibling Do
        If Expanded Then
          Inc(BResult,FChildInfo.ExpandedCount);
      PrevNode:=PrevSibling;
    End;
    Inc(BResult);

    If NextSibling=Nil Then
    Begin
      If NextNode.Parent<>Nil Then
      Begin
        NextNode:=NextNode.Parent;
        Continue;
      End
      Else
      Begin
        Result:=FTreeView.FRootNode.FChildInfo.ExpandedCount-FResult;
        Exit;
      End;
    End
    Else
    Begin
      With NextSibling Do
        If Expanded Then
          Inc(FResult,FChildInfo.ExpandedCount);
      NextNode:=NextSibling;
    End;
    Inc(FResult);
  End;
End;

{---------------------------------------------------------}

Function TDCTreeNode.GetWidth:Integer;
Begin
  If (FOwner<>Nil) And TreeView.HandleAllocated Then
  Begin
    Result:=GetPositionX+TreeView.FOffsetX+GetIndent+GetCheckBoxWidth+GetStateImageWidth+
            GetImageWidth+GetTextWidth;
    If Result<0 Then
      Result:=0;
  End
  Else
    Result:=0;
End;

{---------------------------------------------------------}

Function TDCTreeNode.HasAsParent(Value:TDCTreeNode):Boolean;
Var
  Node:TDCTreeNode;
Begin
  Node:=Parent;
  While Node<>Nil Do
  Begin
    If Node=Value Then
    Begin
      Result:=True;
      Exit;
    End;
    Node:=Node.Parent;
  End;
  Result:=False;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.IncExpandedCount(Delta:Integer);
Var
  Node:TDCTreeNode;
Begin
  Node:=Self;
  While (Node<>Nil) And (nsExpanded In Node.FNodeState) Do
  Begin
    Inc(Node.FChildInfo.ExpandedCount,Delta);
    Node:=Node.FDCParent;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.IncItemCount(Delta:Integer);
Var
  Node:TDCTreeNode;
Begin
  Node:=Self;
  Repeat
    Inc(Node.FChildInfo.ItemCount,Delta);
    Node:=Node.FDCParent;
  Until Node=Nil;
End;

{---------------------------------------------------------}

Function TDCTreeNode.IndexOf(Value:TDCTreeNode):Integer;
Var
  Node:TDCTreeNode;
Begin
  Result:=-1;
  Node:=GetFirstChild;
  While (Node<>Nil) Do
  Begin
    Inc(Result);
    If Node=Value Then
      Break;
    Node:=GetNextChild(Node);
  End;
  If Node=Nil Then
    Result:=-1;
end;

{---------------------------------------------------------}

Procedure TDCTreeNode.InternalDeleteChildren;
Var
  Node:TDCTreeNode;
  TempNode:TDCTreeNode;
Begin
  Node:=GetFirstChild;
  While Node<>Nil Do
  Begin
    TempNode:=Node.GetNextSibling;
    Node.Free;
    Node:=TempNode;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.InternalSetSelected(Value:Boolean);
Begin
  If Selected=Value Then
    Exit;
  If Value Then
    Include(FNodeState,nsSelected)
  Else
    Exclude(FNodeState,nsSelected);
  If FImageIndex<>FSelectedIndex Then
    Invalidate([npImage]);
  TreeView.NodeSelectionChanged(Self);
End;

{---------------------------------------------------------}

Function TDCTreeNode.InTreeView:Boolean;
Begin
  Result:=IsRectInRect(Self.DisplayRectPart(npButton,npText,True),TreeView.GetDrawRect);
End;

{---------------------------------------------------------}

Function TDCTreeNode.InTreeViewVert:Boolean;
Begin
  Result:=NodeInRect(TreeView.GetDrawRect,Self,False);
End;

{---------------------------------------------------------}

//Invalidate node parts
Procedure TDCTreeNode.Invalidate(Const Parts:TNodeParts);
Begin
  If AllowPaint Then
    InvalidateInternal(Parts);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.InvalidateBelow(FromCurrent:Boolean);
Var
  ARect:TRect;
Begin
  If AllowPaint Then
  Begin
    ARect:=TreeView.ClientRect;
    ARect.Top:=GetPositionYSmart;
    If Not FromCurrent Then
      Inc(ARect.Top,GetHeight);
    TreeView.InvalidateRect(ARect);
  End;
End;

{---------------------------------------------------------}

//Invalidate node and node child
Procedure TDCTreeNode.InvalidateChild(const Parts:TNodeParts);
  Procedure _InvalidateChild(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
  Begin
    Node.InvalidateInternal(Parts);
    NextNode:=Node.GetFirstChild;
    While NextNode<>Nil Do
    Begin
      _InvalidateChild(NextNode);
      NextNode:=NextNode.GetNextSibling;
    End;
  End;
Begin
  If AllowPaint Then
    _InvalidateChild(Self);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.InvalidateInternal(Const Parts:TNodeParts);
Var
  NodeDispInfo:TDCNodeDispInfo;
  NodePart:TNodePart;
Begin
  GetNodeDispInfoEx(NodeDispInfo,True);
  If TreeView.RowSelect And (TreeView.RowSelectType=rtFull) Then
    TreeView.InvalidateRect(Rect(NodeDispInfo[npLines].Left,NodeDispInfo[npLines].Top,
                               NodeDispInfo[npText].Right,NodeDispInfo[npText].Bottom))
  Else
    For NodePart:=npLines To npText Do
      If NodePart In Parts Then
        TreeView.InvalidateRect(NodeDispInfo[NodePart]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.InvalidateToRight(NodePart:TNodePart);
Var
  NodeDispInfo:TDCNodeDispInfo;
Begin
  If FOwner.Locked Or Not TreeView.HandleAllocated Then
    Exit;
  GetNodeDispInfoEx(NodeDispInfo,True);
  With TreeView,NodeDispInfo[NodePart] Do
    TreeView.InvalidateRect(Rect(Left,Top,GetDrawRect.Right,Bottom));
End;

{---------------------------------------------------------}

Function TDCTreeNode.IsColorStored:Boolean;
Begin
  Result:=Not (nsParentColor In FNodeState);
End;

{---------------------------------------------------------}

Function TDCTreeNode.IsFontStored:Boolean;
Begin
  Result:=Not (nsParentFont In FNodeState);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.MakeVisible;
Begin
  If InTreeView Then
    Exit;
  If Owner.Locked Then
  Begin
    TreeView.FMakeVisibleNode:=Self;
    Exit;
  End;  
  EnsureExpanded;
  If InTreeViewVert Then
    MakeVisibleHorz
  Else
  Begin
    MakeVisibleVert;
    MakeVisibleHorz;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.MakeVisibleHorz;
Var
  ARect:TRect;
  ItemWidth:Integer;
  Pos:Integer;
Begin
  If FOwner.Locked Then
    Exit;
  ARect:=DisplayRectPart(npButton,npText,True);
  ItemWidth:=ARect.Right-ARect.Left;
  With TreeView.GetDrawRect Do
    If (ARect.Right>Right) Or
       (ARect.Left<Left) Then
    Begin
      If ItemWidth>Right-Left Then
        Pos:=ARect.Left
      Else
        Pos:=ARect.Right-Right+Left;
      With TreeView Do
        ProcessHScroll(FOffsetX+Pos);
    End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.MakeVisibleVert;
Var
  TreeViewHeight:Integer;
  NextNode:TDCTreeNode;
  Node:TDCTreeNode;
Begin
  If Not TreeView.HandleAllocated Or InTreeViewVert Or FOwner.Locked Then
    Exit;
  If CompareVisiblePos(Self,TreeView.TopItem)<0 Then
    TreeView.SetTopItemInternal(Self)
  Else
  Begin
    With TreeView.GetDrawRect Do
      TreeViewHeight:=Bottom-Top-GetHeight;
    NextNode:=Self;
    While NextNode<>Nil Do
    Begin
      Node:=NextNode.GetPrevVisibleSimple;
      If Node=Nil Then
      Begin
        TreeView.SetTopItemInternal(NextNode);
        Break;
      End;
      Dec(TreeViewHeight,Node.GetHeight);
      If TreeViewHeight<0 Then
      Begin
        TreeView.SetTopItemInternal(NextNode);
        Break;
      End;
      NextNode:=Node;
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.MoveTo(Destination:TDCTreeNode;Mode:TNodeAttachMode{$IFDEF D4};MakeVisible:Boolean=True{$ENDIF});
Var
  NextTopItem:TDCTreeNode;
Begin
  If (Destination<>Nil) And (Destination.HasAsParent(Self)) Then
    InvalidOperation(SErrMoveToChildError);
  If (Self=Destination) Or ((Destination=Nil) And (Mode In [naAddChild,naAddChildFirst])) Then
    InvalidOperation(SErrInvalidOperation);
  If (Destination<>Nil) And (Destination.TreeView<>TreeView) Then
    InvalidOperation(SErrInvalidNode);
  TreeView.EndEditNode(False);  
  FOwner.ClearCache;
  If Self=TreeView.FTopItem Then
    NextTopItem:=Self.GetNextVisibleSimple
  Else
    NextTopItem:=Nil;
  FDCParent.IncItemCount(-FChildInfo.ItemCount-1);
  FDCParent.IncExpandedCount(-FChildInfo.ExpandedCount-1);

  Dec(FDCParent.FChildInfo.ChildCount);
  DeleteNode(Self);
  If FDCParent.FRadioChecked=Self Then
    FDCParent.FRadioChecked:=Nil;
  If TreeView.FShiftSelectNode=Self Then
    TreeView.FShiftSelectNode:=Nil;
  UpdateButton;
  Case Mode Of
    naAdd           : If Destination=Nil Then
                        Begin
                          AddChildNode(TreeView.FRootNode,Self);
                          SetParent(Nil);
                        End
                        Else
                        Begin
                          AddChildNode(Destination.FDCParent,Self);
                          Destination.FDCParent.HasChildren:=True;
                          SetParent(Destination.Parent);
                        End;
    naAddFirst      : If Destination=Nil Then
                        Begin
                          AddChildNodeFirst(TreeView.FRootNode,Self);
                          SetParent(Nil);
                        End
                        Else
                        Begin
                          AddChildNodeFirst(Destination.FDCParent,Self);
                          Destination.FDCParent.HasChildren:=True;
                          SetParent(Destination.Parent);
                        End;
    naAddChild      : If Destination<>Nil Then
                      Begin
                        Destination.HasChildren:=True;
                        AddChildNode(Destination,Self);
                        SetParent(Destination);
                     End;
    naAddChildFirst : If Destination<>Nil Then
                      Begin
                        Destination.HasChildren:=True;
                        AddChildNodeFirst(Destination,Self);
                        SetParent(Destination);
                      End;
    naInsert        : If Destination<>Nil Then
                      Begin
                        InsertNodeBefore(Destination,Self);
                        SetParent(Destination.Parent);
                      End;
  End;
  FDCParent.IncItemCount(FChildInfo.ItemCount+1);
  FDCParent.IncExpandedCount(FChildInfo.ExpandedCount+1);
  Inc(FDCParent.FChildInfo.ChildCount);
  If (State=cbChecked) And (NodeType=ntRadioButton) Then
  Begin
    If (FDCParent.FRadioChecked<>Self) And (FDCParent.FRadioChecked<>Nil) Then
      FDCParent.FRadioChecked.State:=cbUnchecked;
    FDCParent.FRadioChecked:=Self;
  End;  
  If NextTopItem<>Nil Then
    TreeView.FTopItem:=NextTopItem;
  //Resort
  If TreeView.SortType<>stNone Then
    Case Mode Of
      naAdd,naAddFirst,naInsert:          
        If Destination=Nil Then
          TreeView.FRootNode.AlphaSort
        Else
          Destination.FDCParent.CustomSort(Nil,0);
      naAddChild,naAddChildFirst:
        If Destination<>Nil Then
          Destination.AlphaSort;
    End;
  {$IFDEF D4}If MakeVisible Then{$ENDIF}
    EnsureExpanded;
  With TreeView Do
  Begin
    TopItemChanged;
    RecalcAll;
    Invalidate;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.NodeWidthChanged;
Begin
  Exclude(FNodeState,nsHeightCalculated);
  UpdateWidth;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.OnFontChanged(Sender:TObject);
Begin
  FNodeState:=FNodeState-[nsWidthCalculated,nsParentFont];
  NodeWidthChanged;
  InvalidateBelow(True);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.ReadCustomData(Stream:TStream);
Begin
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.ReSortNode;
Var
  PrevNode:TDCTreeNode;
  NextNode:TDCTreeNode;
  Koef:Integer;
Begin
  If TreeView.IsSorted And ((FDCParent.FChildInfo.ChildCount>1) And Not TreeView.IsSortLocked)Then
  Begin
    FOwner.ClearCache;
    PrevNode:=FNodePrev;
    NextNode:=FNodeNext;
    If TreeView.SortOrder=soAscending Then
      Koef:=1
    Else
      Koef:=-1;
    If (PrevNode<>Nil) And (Koef*DefaultTreeViewSort(Self,PrevNode,0)<0) Then
    Begin
      Repeat
        If (PrevNode.FNodePrev=Nil) Or (Koef*DefaultTreeViewSort(Self,PrevNode.FNodePrev,0)>=0) Then
        Begin
          DeleteNode(Self);
          InsertNodeBefore(PrevNode,Self);
          Break;
        End;
        PrevNode:=PrevNode.FNodePrev
      Until False;
    End
    Else
      If (NextNode<>Nil) And (Koef*DefaultTreeViewSort(Self,NextNode,0)>0) Then
      Begin
        Repeat
          If Koef*DefaultTreeViewSort(Self,NextNode,0)<=0 Then
          Begin
            DeleteNode(Self);
            InsertNodeBefore(NextNode,Self);
            Break;
          End
          Else
          If NextNode.FNodeNext=Nil Then
            Begin
              DeleteNode(Self);
              AddChildNode(FDCParent,Self);
              Break;
            End;
          NextNode:=NextNode.FNodeNext
        Until False;
      End
      Else
        Exit;
    TreeView.TopItemChanged;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetAllowGrayed(Value:Boolean);
Begin
  If AllowGrayed=Value Then
    Exit;
  If Value Then
    Include(FNodeState,nsAllowGrayed)
  Else
    Exclude(FNodeState,nsAllowGrayed);
  If Not Value And (State=cbGrayed) Then
    State:=cbUnChecked;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetChecked(Value:Boolean);
Begin
  If Value Then
    SetState(cbChecked)
  Else
    SetState(cbUnchecked);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetColor(Value:TColor);
Begin
  If FColor=Value Then
    Exit;
  FColor:=Value;
  Exclude(FNodeState,nsParentColor);
  Invalidate([npText]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetCut(Value:Boolean);
Begin
  If Cut=Value Then
    Exit;
  If Value Then
    Include(FNodeState,nsCut)
  Else
    Exclude(FNodeState,nsCut);
  Invalidate([npImage]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetData(Value:Pointer);
Begin
  If FData=Value Then
    Exit;
  FData:=Value;
  If (TreeView.SortType In [stData,stBoth]) And Assigned(TreeView.OnCompare) Then
    ReSortNode;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetDropTarget(Value:Boolean);
Var
  OldDropTarget:TDCTreeNode;
Begin
  If DropTarget=Value Then
    Exit;
  If Value Then
    Include(FNodeState,nsDropTarget)
  Else
    Exclude(FNodeState,nsDropTarget);
  If Value Then
  Begin
    OldDropTarget:=TreeView.FDropTarget;
    If OldDropTarget<>Nil Then
      OldDropTarget.DropTarget:=False;
    TreeView.FDropTarget:=Self
  End
  Else
    TreeView.FDropTarget:=Nil;
  TreeView.NodeSelectionChanged(Self);
End;

{---------------------------------------------------------}

procedure TDCTreeNode.SetExpanded(Value:Boolean);
Begin
  If Expanded=Value Then
    Exit;
  If Value Then
    Expand(False)
  Else
    Collapse(False);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetFocused(Value:Boolean);
Begin
  If Focused=Value Then
    Exit;
  If Value Then
    Include(FNodeState,nsFocused)
  Else
    Exclude(FNodeState,nsFocused);
  With TreeView Do
    If Value Then
    Begin
      If (FFocused<>Nil) And (FFocused<>Self) Then
        FFocused.Focused:=False;
      FFocused:=Self;
      FFocused.EnsureExpanded;
      FFocused.MakeVisibleVert;
    End;
  TreeView.NodeSelectionChanged(Self);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetFont(Value:TFont);
Begin
  If (Value<>Nil) And Not FontsEqual(InternalFont,Value) Then
  Begin
    If FFont=Nil Then
    Begin
      CreateFont(Value);
      OnFontChanged(Self);
    End
    Else
      FFont.Assign(Value);
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetFontColor(Value:TColor);
Var
  OldOnChange:TNotifyEvent;
Begin
  If Font.Color<>Value Then
  Begin
    OldOnChange:=Font.OnChange;
    Font.OnChange:=Nil;
    Try
      Font.Color:=Value;
      Invalidate([npText]);
    Finally
      Font.OnChange:=OldOnChange;
    End;
  End;  
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetFontStyle(Value:TFontStyles);
Begin
  If Font.Style<>Value Then
    Font.Style:=Value;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetHasChildren(Value:Boolean);
Begin
  If HasChildren=Value Then
    Exit;
  If Value Then
    Include(FNodeState,nsHasChildren)
  Else
    Exclude(FNodeState,nsHasChildren);
  If FTreeView<>Nil Then
    Invalidate([npButton]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetImageIndex(Value:Integer);
Begin
  If FImageIndex=Value Then
    Exit;
  FImageIndex:=Value;
  Invalidate([npImage]);  
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetItem(Index:Integer;Value:TDCTreeNode);
Begin
  GetItem(Index).Assign(Value);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetNodeType(Value:TDCNodeType);
Begin
  If FNodeType=Value Then
    Exit;
  Invalidate([npCheckBox..npText]);
  If (FNodeType=ntRadioButton) And (State=cbChecked) Then
    FDCParent.FRadioChecked:=Nil;
  FNodeType:=Value;
  If (FNodeType=ntRadioButton) And (State=cbChecked) Then
  Begin
    If FDCParent.FRadioChecked<>Nil Then
      FDCParent.FRadioChecked.State:=cbUnchecked;
    FDCParent.FRadioChecked:=Self;
  End;
  If (FNodeType=ntRadioButton) And (State=cbGrayed) Then
    FState:=cbUnchecked;
  If IsVisible And Not FOwner.Locked Then
  Begin
    Invalidate([npCheckBox..npText]);
    UpdateWidth;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetOverlayIndex(Value:Integer);
Begin
  If FOverlayIndex=Value Then
    Exit;
  FOverlayIndex:=Value;
  Invalidate([npImage]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetParent(AParent:TDCTreeNode);
Begin
  FParent:=AParent;
  FDCParent:=AParent;
  If FDCParent=Nil Then
    FDCParent:=TreeView.FRootNode;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetParentColor(Value:Boolean);
Begin
  If ParentColor=Value Then
    Exit;
  If Value Then
  Begin
    Include(FNodeState,nsParentColor);
    FColor:=FTreeView.Color;
  End
  Else
    Exclude(FNodeState,nsParentColor);
  Invalidate([npText]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetParentFont(Value:Boolean);
Begin
  If ParentFont=Value Then
    Exit;
  If Value Then
  Begin
    FFont.Free;
    FFont:=Nil;
    Include(FNodeState,nsParentFont);
    InvalidateBelow(True);
    NodeWidthChanged;
  End
  Else
  Begin
    CreateFont(TreeView.Font);
    Exclude(FNodeState,nsParentFont);
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetReadOnly(Value:Boolean);
Begin
  If Value Then
    Include(FNodeState,nsReadOnly)
  Else
    Exclude(FNodeState,nsReadOnly);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetSelected(Value:Boolean);
Begin
  With TreeView Do
    If MultiSelect And SelectOnlySiblings And (fSelectedItems.Count > 0) and
       (TDCTreeNode(fSelectedItems[0]).Parent <> Self.Parent) Then
      Value:=False;
  If Selected=Value Then
    Exit;
  InternalSetSelected(Value);
  With TreeView Do
  Begin
    If Value Then
    Begin
      FSelectedItems.Add(Self);
      If Not MultiSelect Then
        Selected:=Self;
    End
    Else
    Begin
      FSelectedItems.Remove(Self);
      If FShiftSelectNode=Self Then
        FShiftSelectNode:=Nil;
    End;
    DoSelectionChanged;
  End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetSelectedIndex(Value:Integer);
Begin
  If FSelectedIndex=Value Then
    Exit;
  FSelectedIndex:=Value;
  Invalidate([npImage,npText]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetState(Value:TCheckBoxState);
  Procedure _SetChild(ParentNode:TDCTreeNode);
  Var
    Node:TDCTreeNode;
  Begin
    Node:=ParentNode.GetFirstChild;
    While Node<>Nil Do
    Begin
      _SetChild(Node);
      Node.State:=Value;
      Node:=Node.GetNextSibling;
    End;
  End;
Begin
  TreeView.DoStateChanging(Self,Value);
  If FState=Value Then
    Exit;
  If (FNodeType=ntRadioButton) And (Value=cbGrayed) Then
    Exit;
  If (FNodeType=ntRadioButton) And (Value=cbChecked) And (FDCParent.FRadioChecked<>Nil) Then
    FDCParent.FRadioChecked.State:=cbUnchecked;
  FState:=Value;
  If (FNodeType=ntRadioButton) And (Value=cbChecked) Then
    FDCParent.FRadioChecked:=Self;
  If TreeView.FAutoCheck Then
  Begin
    If TreeView.FAutoCheckChildLock=0 Then
    Begin
      Inc(TreeView.FAutoCheckParentLock);
      Try
        _SetChild(Self);
      Finally
        Dec(TreeView.FAutoCheckParentLock);
      End;
    End;
    If TreeView.FAutoCheckParentLock=0 Then
    Begin
      Inc(TreeView.FAutoCheckChildLock);
      Try
        If Parent<>Nil Then
          Parent.UpdateAutoCheck;
      Finally
        Dec(TreeView.FAutoCheckChildLock);
      End;
    End;
  End;
  Invalidate([npCheckBox]);
  TreeView.DoStateChanged(Self);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetStateIndex(Value:Integer);
Var
  WidthChanged:Boolean;
Begin
  If FStateIndex=Value Then
    Exit;
  WidthChanged:=(FStateIndex<0) Xor (Value<0);
  FStateIndex:=Value;
  If WidthChanged Then
  Begin
    Exclude(FNodeState,nsWidthCalculated);
    If IsVisible And Not FOwner.Locked Then
    Begin
      InvalidateToRight(npStateImage);
      UpdateWidth;
    End;  
  End
  Else
    Invalidate([npStateImage]);
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetText(const Value:String);
Begin
  If GetText=Value Then
    Exit;
  SetTextInternal(Value);
  Exclude(FNodeState,nsWidthCalculated);
  If TreeView.IsSorted Then
    ReSortNode;
  If TreeView.MultiLineNodes Then
  Begin
    NodeWidthChanged;
    InvalidateBelow(True);
  End
  Else
    If Not FOwner.Locked and IsVisible Then
    Begin
      InvalidateToRight(npText);
      UpdateWidth;
    End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SetTextInternal(Const Value:String);
Begin
  FText:=Value;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.SwitchToNextState;
Var
  NewState:TCheckBoxState;
Begin
  If (NodeType=ntNone) Or (nsReadOnly In FNodeState) Then
    Exit;
  NewState:=cbChecked;
  Case FState Of
    cbChecked:If AllowGrayed And (NodeType=ntCheckBox) And Not FTreeView.AutoCheck Then
                NewState:=cbGrayed
              Else
                If NodeType<>ntRadioButton Then
                  NewState:=cbUnChecked;
    cbGrayed:NewState:=cbUnChecked;
  End;
  State:=NewState;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.UpdateAutoCheck;
Var
  Node:TDCTreeNode;
  AState:TCheckBoxState;
  IsStateSet:Boolean;
Begin
  IsStateSet:=False;
  Node:=GetFirstChild;
  AState:=cbUnchecked;
  While Node<>Nil Do
  Begin
    If Node.NodeType=ntCheckBox Then
      If IsStateSet Then
      Begin
        If AState<>cbGrayed Then
        Begin
          If AState<>Node.State Then
            AState:=cbGrayed
        End
      End
      Else
      Begin
        AState:=Node.State;
        IsStateSet:=True
      End;
    Node:=Node.GetNextSibling;
  End;
  If IsStateSet Then
    State:=AState;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.UpdateButton;
Begin
  If Parent<>Nil Then
    If Parent.FChildInfo.ItemCount=0 Then
    Begin
      With Parent Do
      Begin
        Exclude(FNodeState,nsExpanded);
        Exclude(FNodeState,nsHasChildren);
      End;
      If Not (csDestroying In TreeView.ComponentState) Then
        Parent.Invalidate([npButton]);
    End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.UpdateWidth;
Var
  AChildInfo:TChildInfo;
Begin
  TreeView.EndEditNode(False);
  Exclude(FNodeState,nsWidthCalculated);
  If IsVisible And Not FOwner.Locked Then
    With TreeView Do
    Begin
      AChildInfo:=FChildInfo;
      AfterUpdateWidth(Self);
      UpdateScroll(True,False);
      UpdateHotTrack;
      UpdateToolTip;
    End;
End;

{---------------------------------------------------------}

Procedure TDCTreeNode.WriteCustomData(Stream:TStream);
Begin
End;

{ TDCTreeNodes }

Constructor TDCTreeNodes.Create(AOwner:TDCCustomTreeView);
Begin
  Inherited Create;
  FOwner:=AOwner;
End;

{---------------------------------------------------------}

Destructor TDCTreeNodes.Destroy;
Begin
  InternalClear;
  Inherited;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.InternalAdd(Node:TDCTreeNode;const AText:String;
                                  AData:Pointer;InsertType:TNodeAttachMode):TDCTreeNode;
var
  _SaveNodeClass: TDCTreeNodeClass;
  _Level: integer;                                 
Begin
  ClearCache;
  With Owner Do
    If FBeginMouseSelect And Not FSelectFrameCleared Then
      PaintSelectFrame(FOldSelectX,FOldSelectY);
  with FOwner do
  begin
    _SaveNodeClass := FDefaultNodeClass;
    if Assigned(FOnCreateNode) then
    begin
      if Node = nil then
        _Level := 0
      else
      begin
        _Level := Node.Level;
        if InsertType in [naAddChild,naAddChildFirst] then
          Inc(_Level);
      end;
      FOnCreateNode(FOwner,_Level,FDefaultNodeClass);
    end;
  end;
  Result:=FOwner.CreateNode;
  If Node=Nil Then
    Node:=FOwner.FRootNode;
  Case InsertType Of
    naAdd:
      Begin
        If Node.FDCParent<>Nil Then
          Node:=Node.FDCParent;
        AddChildNode(Node,Result);
      End;
    naAddFirst:
      Begin
        If Node.FDCParent<>Nil Then
          Node:=Node.FDCParent;
        AddChildNodeFirst(Node,Result);
      End;
    naAddChild:
        AddChildNode(Node,Result);
    naAddChildFirst:
        AddChildNodeFirst(Node,Result);
    naInsert:
      Begin
        If Node.FDCParent=Nil Then
          AddChildNode(Node,Result)
        Else
        Begin
          InsertNodeBefore(Node,Result);
          Node:=Node.FDCParent;
        End;
      End;
  End;
  If Node.FDCParent=Nil Then
    Result.SetParent(Nil)
  Else
    Result.SetParent(Node);
  FOwner.FDefaultNodeClass := _SaveNodeClass;
  Result.SetTextInternal(AText);
  Result.FData:=AData;
  FOwner.DoAfterInsert(Result);
End;


{---------------------------------------------------------}

Function TDCTreeNodes.Add(Node:TDCTreeNode;const AText:String):TDCTreeNode;
Begin
  If Node=Nil Then
    Result:=AddChild(Nil,AText)
  Else
    Result:=AddChild(Node.Parent,AText);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddChild(Node:TDCTreeNode;const AText:String):TDCTreeNode;
Begin
  Result:=InternalAdd(Node,AText,Nil,naAddChild);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddChildFirst(Node:TDCTreeNode;const AText:String):TDCTreeNode;
Begin
  Result:=InternalAdd(Node,AText,Nil,naAddChildFirst);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddChildObject(Node:TDCTreeNode;const AText:String;
                                     Data:Pointer):TDCTreeNode;
Begin
  Result:=InternalAdd(Node,AText,Data,naAddChild);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddChildObjectFirst(Node:TDCTreeNode;const AText:String;
                                          Data:Pointer):TDCTreeNode;
Begin
  Result:=InternalAdd(Node,AText,Data,naAddChildFirst);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddFirst(Node:TDCTreeNode;const AText:String):TDCTreeNode;
Begin
  If Node=Nil Then
    Result:=AddChildFirst(Nil,AText)
  Else
    Result:=AddChildFirst(Node.FDCParent,AText);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddObject(Node:TDCTreeNode;const AText:String;
                                Data:Pointer):TDCTreeNode;
Begin
  Result:=Add(Node,AText);
  Result.Data:=Data;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.AddObjectFirst(Node:TDCTreeNode;const AText:String;
                                     Data:Pointer):TDCTreeNode;
Begin
  Result:=AddFirst(Node,AText);
  Result.Data:=Data;
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.Assign(Source:TPersistent);
  Procedure _CopyNodes(PatternNode,ParentNode:TDCTreeNode);
  Var
    Node,NextNode:TDCTreeNode;
  Begin
    Node:=PatternNode.GetFirstChild;
    While Node<>Nil Do
    Begin
      FOwner.DefaultNodeClass:=TDCTreeNodeClass(Node.ClassType);
      NextNode:=AddChild(ParentNode,'');
      FOwner.DoExpandNode(Node);
      _CopyNodes(Node,NextNode);
      NextNode.Assign(Node);
      Node:=Node.GetNextSibling;
    End;
  End;
Begin
  If Source Is TDCTreeNodes Then
  Begin
    If Source<>Self Then
    Begin
      BeginUpdate;
      Try
        Clear;
        _CopyNodes(TDCTreeNodes(Source).FOwner.FRootNode,Nil);
      Finally
        EndUpdate;
      End;
    End
  End  
  Else
    Inherited;
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.BeginLock;
Begin
  Inc(FOwner.FLockCount);
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.BeginUpdate;
Begin
  BeginLock;
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.Clear;
Begin
  BeginUpdate;
  InternalClear;
  EndUpdate;
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.ClearCache;
Begin
  FCacheNode:=Nil;
  FOwner.FTopItemIndexCalculated:=False;
  FOwner.FTopItemNewIndex:=-1;
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.Delete(Node:TDCTreeNode);
Begin
  Node.Delete;
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.EndLock;
Begin
  Dec(FOwner.FLockCount);
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.EndUpdate;
Var
  ARect:TRect;
Begin
  With FOwner Do
  Begin
    If FLockCount=0 Then
      Exit;
    EndLock;
    If FLockCount<>0 Then
      Exit;
    If IsSorted Then
      AlphaSort;
    ARect:=Rect(0,0,Width,Height);
    If HandleAllocated Then
      RedrawWindow(Handle,@ARect,0,RDW_FRAME Or RDW_INVALIDATE);
    RecalcAll;
    If (FFocused=Nil) And (FNewFocused<>Nil) Then
    Begin
      Selected:=FNewFocused;
      FNewFocused:=Nil;
    End;
    UpdateToolTip;
    If FMakeVisibleNode<>Nil Then
    Begin
      FMakeVisibleNode.MakeVisible;
      FMakeVisibleNode:=Nil;
    End;
  End;  
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetCount:Integer;
Begin
  Result:=FOwner.FRootNode.FChildInfo.ItemCount;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetFirstVisibleInTreeView:TDCTreeNode;
Var
  ARect:TRect;
Begin
  Result:=GetFirstNode;
  ARect:=FOwner.GetDrawRect;
  If (Result<>Nil) And Not NodeInRect(ARect,Result,True) Then
    Result:=Result.GetNextVisibleSimple;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetFirstNode:TDCTreeNode;
Begin
  Result:=FOwner.FRootNode.GetFirstChild
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetFirstVisibleRect(const ARect:TRect):TDCTreeNode;
Begin
  Result:=FOwner.FTopItem;
  If (Result<>Nil) And Not NodeInRect(ARect,Result,True) Then
    Result:=Result.GetNextVisibleRect(True,ARect);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetHitTest(X,Y:Integer):TDCPosInfo;
Begin
  Result:=FOwner.GetHitTest(X,Y);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetItem(Index:Integer):TDCTreeNode;
Var
  CurrentCount:Integer;
  NextNode:TDCTreeNode;
Begin
  If (Index<0) Or (Index>=FOwner.FRootNode.FChildInfo.ItemCount) Then
    InvalidOperationFmt(SErrInvalidIndex,[Index]);
  If (FCacheNode<>Nil) And (Abs(FCacheIndex-Index)<=1) Then
  Begin
    If Index=FCacheIndex Then
       Result:=FCacheNode
    Else
      If Index<FCacheIndex Then
        Result:=FCacheNode.GetPrev
      Else
        Result:=FCacheNode.GetNext;
    FCacheNode:=Result;
    FCacheIndex:=Index;
  End
  Else
  Begin
    CurrentCount:=0;
    Result:=FOwner.FRootNode;
    While True Do
    Begin
      NextNode:=Result.GetFirstChild;
      While NextNode<>Nil Do
      Begin
        If CurrentCount=Index Then
        Begin
          Result:=NextNode;
          FCacheNode:=Result;
          FCacheIndex:=Index;
          Exit;
        End;
          Inc(CurrentCount);
        If CurrentCount+NextNode.FChildInfo.ItemCount>Index Then
        Begin
          Result:=NextNode;
          Break;
        End;
        Inc(CurrentCount,NextNode.FChildInfo.ItemCount);
        NextNode:=NextNode.GetNextSibling;
      End;
    End;
  End;  
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetLastNode:TDCTreeNode;
Begin
  Result:=FOwner.FRootNode.GetLastChild;
  While Result.Count>0 Do
    Result:=Result.GetLastChild;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetLastVisibleNode:TDCTreeNode;
Begin
  Result:=FOwner.FRootNode.GetLastChild;
  If Result<>Nil Then
    While (Result.Count>0) And Result.Expanded Do
      Result:=Result.GetLastChild;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetVisibleCount:Integer;
Begin
  Result:=FOwner.FRootNode.FChildInfo.ExpandedCount;
End;

{---------------------------------------------------------}

Function TDCTreeNodes.GetVisibleItem(Index:Integer):TDCTreeNode;
Var
  ExpCount:Integer;

  Procedure _MoveForward(NextNode:TDCTreeNode;CurrentCount:Integer);
  Begin
    While True Do
    Begin
      While NextNode<>Nil Do
      Begin
        If CurrentCount=Index Then
        Begin
          Result:=NextNode;
          Exit;
        End;
        Inc(CurrentCount);
        ExpCount:=NextNode.FChildInfo.ExpandedCount;
        If CurrentCount+ExpCount>Index Then
        Begin
          NextNode:=NextNode.GetFirstChild;
          Break;
        End;
        Inc(CurrentCount,ExpCount);
        If NextNode.FNodeNext=Nil Then
        Begin
          Repeat
            NextNode:=NextNode.Parent;
          Until NextNode.FNodeNext<>Nil;
          NextNode:=NextNode.FNodeNext;
        End
        Else
          NextNode:=NextNode.FNodeNext;
      End;
    End;
  End;

  Procedure _MoveBackward(NextNode:TDCTreeNode;CurrentCount:Integer);
  Begin
    While True Do
    Begin
      While NextNode<>Nil Do
      Begin
        If CurrentCount=Index Then
        Begin
          Result:=NextNode;
          Exit;
        End;
        If NextNode.FNodePrev=Nil Then
        Begin
          NextNode:=NextNode.Parent;
          Dec(CurrentCount);
          Continue;
        End;
        NextNode:=NextNode.FNodePrev;
        ExpCount:=NextNode.FChildInfo.ExpandedCount;
        Dec(CurrentCount,ExpCount);
        If CurrentCount<=Index Then
        Begin
          _MoveForward(NextNode.GetFirstChild,CurrentCount);
          Exit;
        End;
        Dec(CurrentCount);
      End;
    End;
  End;
Var
  IsForward:Boolean;
  StartIndex:Integer;
  StartNode:TDCTreeNode;
  EndIndex:Integer;
  EndNode:TDCTreeNode;
  Node:TDCTreeNode;
  CurrentCount:Integer;
Begin
  If (Index<0) Or (Index>=FOwner.FRootNode.FChildInfo.ExpandedCount) Then
    InvalidOperationFmt(SErrInvalidIndex,[Index]);

  If FOwner.FTopItemIndexCalculated Then
  Begin
    If Index<FOwner.FTopItemIndex Then
    Begin
      StartNode:=FOwner.FRootNode.GetFirstChild;
      StartIndex:=0;
      EndNode:=FOwner.FTopItem;
      EndIndex:=FOwner.FTopItemIndex
    End
    Else
    Begin
      StartNode:=FOwner.FTopItem;
      StartIndex:=FOwner.FTopItemIndex;
      EndNode:=Nil;
      EndIndex:=Owner.FRootNode.FChildInfo.ExpandedCount-1;
    End;
  End
  Else
  Begin
    StartNode:=FOwner.FRootNode.GetFirstChild;
    StartIndex:=0;
    EndNode:=Nil;
    EndIndex:=Owner.FRootNode.FChildInfo.ExpandedCount-1;
  End;
  IsForward:=Abs(Index-StartIndex)<Abs(Index-EndIndex);
  If IsForward Then
  Begin
    CurrentCount:=StartIndex;
    Node:=StartNode;
  End
  Else
  Begin
    CurrentCount:=EndIndex;
    If EndNode=Nil Then
      Node:=GetLastVisibleNode
    Else
      Node:=EndNode;
  End;
  If IsForward Then
    _MoveForward(Node,CurrentCount)
  Else
    _MoveBackward(Node,CurrentCount);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.Insert(Node:TDCTreeNode;const AText:String):TDCTreeNode;
Begin
  Result:=InternalAdd(Node,AText,Nil,naInsert);
End;

{---------------------------------------------------------}

Function TDCTreeNodes.InsertObject(Node:TDCTreeNode;const AText:String;
                                   Data:Pointer):TDCTreeNode;
Begin
  Result:=InternalAdd(Node,AText,Data,naInsert);
End;

{---------------------------------------------------------}

Procedure TDCTreeNodes.InternalClear;
Begin
  FOwner.Selected:=Nil;
  FOwner.FRootNode.InternalDeleteChildren;
  With FOwner.FRootNode.FChildInfo Do
  Begin
    MaxWidthNode:=FOwner.FRootNode;
    MaxWidth:=0;
  End; 
End;

{---------------------------------------------------------}

Function TDCTreeNodes.Locked:Boolean;
Begin
  Result:=FOwner.FLockCount>0;
End;

{ TDCTreePrintOptions }

Constructor TDCTreePrintOptions.Create(AOwner:TDCCustomTreeView);
Begin
  Inherited Create;
  FTreeView:=AOwner;
  FFooterFont:=TFont.Create;
  FHeaderFont:=TFont.Create;
  FPrintFont:=TFont.Create;
  ParentFooterFont:=True;
  ParentHeaderFont:=True;
  ParentPrintFont:=True;
End;

{---------------------------------------------------------}

Destructor TDCTreePrintOptions.Destroy;
Begin
  FPrintFont.Free;
  FHeaderFont.Free;
  FFooterFont.Free;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.Assign(Source:TPersistent);
Begin
  If Source Is TDCTreePrintOptions Then
    With Source As TDCTreePrintOptions Do
    Begin
      Self.Footer:=Footer;
      Self.FooterFont:=FooterFont;
      Self.Header:=Header;
      Self.HeaderFont:=HeaderFont;
      Self.Options:=Options;
      Self.ParentFooterFont:=ParentFooterFont;
      Self.ParentHeaderFont:=ParentHeaderFont;
      Self.ParentPrintFont:=ParentPrintFont;
      Self.PrintFont:=PrintFont;
      Self.Title:=Title;
    End
  Else
    Inherited;
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.SetFooterFont(Value:TFont);
Begin
  FFooterFont.Assign(Value);
  FParentFooterFont:=False;
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.SetHeaderFont(Value:TFont);
Begin
  FHeaderFont.Assign(Value);
  FParentHeaderFont:=False;
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.SetPrintFont(Value:TFont);
Begin
  FPrintFont.Assign(Value);
  FParentPrintFont:=False;
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.SetParentFooterFont(Value:Boolean);
Begin
  If FParentFooterFont=Value Then
    Exit;
  FParentFooterFont:=Value;
  If Value Then
    FFooterFont.Assign(FTreeView.Font);
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.SetParentHeaderFont(Value:Boolean);
Begin
  If FParentHeaderFont=Value Then
    Exit;
  FParentHeaderFont:=Value;
  If Value Then
    FHeaderFont.Assign(FTreeView.Font);
End;

{---------------------------------------------------------}

Procedure TDCTreePrintOptions.SetParentPrintFont(Value:Boolean);
Begin
  If FParentPrintFont=Value Then
    Exit;
  FParentPrintFont:=Value;
  If Value Then
    FPrintFont.Assign(FTreeView.Font);
End;

{ TDCCustomTreeView }

Constructor TDCCustomTreeView.Create(AOwner:TComponent);
Begin
  Inherited;
  ControlStyle:=ControlStyle+[csClickEvents,csDoubleClicks,csDisplayDragImage];
  FBorderStyle:=bsSingle;
  FCanvas:=TDCCanvas.Create;
  FCanvas.Control:=Self;
  FPrintOptions:=TDCTreePrintOptions.Create(Self);

  FActiveSelectedColor:=clHighlight;
  FActiveSelectedFontColor:=clHighlightText;
  FAutoScroll:=True;
  FBaseNodeClass:=TDCTreeNode;
  FDragButtons:=[mbLeft];
  FDragExpandDelay:=100;
  FDragImages:={$IFDEF D4}TDragImageList{$ELSE}TCustomImageList{$ENDIF}.Create(Nil);
  FExpandOnDrag:=True;
  FHideSelection:=True;
  FInactiveSelectedColor:=clBtnFace;
  FInactiveSelectedFontColor:=clBtnText;
  FIndent:=19;
  FLinesColor:=clBtnShadow;
  FNodes:=TDCTreeNodes.Create(Self);
  FRootNode:=CreateRootNode;
  Include(FRootNode.FNodeState,nsExpanded);
  FSelectedItems:=TList.Create;
  FShowButtons:=True;
  FShowLines:=True;
  FShowRoot:=True;
  FTopItemNewIndex:=-1;
  CreateFontCache;
  FDefaultNodeClass:=TDCTreeNode;

  ToolTips:=True;

  Ctl3D:=True;
  Width:=121;
  Height:=97;
  ParentColor:=False;
  Color:=clWindow;
  ParentCtl3D:=True;
  TabStop:=True;
End;

{---------------------------------------------------------}

Destructor TDCCustomTreeView.Destroy;
Begin
  FFocused:=Nil;
  Destroying;
  ToolTips:=False;
  DestroyEditControls;
  DestroyFontCache;
  FPrintOptions.Free;
  FNodes.Free;
  FRootNode.Free;
  FSelectedItems.Free;
  FSelectedItems:=Nil;
  FDragImages.Free;
  FCanvas.Free;
  Images:=Nil;
  StateImages:=Nil;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.AddEditControl(Control:TControl);
Begin
  If FEditControls=Nil Then
    FEditControls:=TList.Create;
  FEditControls.Add(Control);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.AfterScrollUpdate;
Begin
  If FBeginMouseSelect Then
    MouseSelectProcess;
  With GetCursorPos Do
    UpdateDropTarget(X,Y);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.AfterSetTopItem(Node:TDCTreeNode);
Begin
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.AfterUpdateScrollBars;
Begin
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.AllowDrawFocusRect(Node:TDCTreeNode):Boolean;
Begin
  Result:=Focused And (Node<>Nil) And Node.Focused;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.AllowDrawText(Node:TDCTreeNode):Boolean;
Begin
  Result:=(FEditNode<>Node) Or FPrinting;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.AllowShowToolTip:Boolean;
Begin
  Result:=Not (FBeginMouseSelect Or FExternalDrag Or IsEditing);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.AlphaSort:Boolean;
Begin
  Result:=CustomSort(Nil,0);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.BeforeScrollUpdate;
Begin
  If FBeginMouseSelect Then
    If Not FSelectFrameCleared Then
      PaintSelectFrame(FOldSelectX,FOldSelectY);
  UpdateDropTarget(-1,-1);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.BeforeSetTopItem(Value:TDCTreeNode);
Begin
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.BeforeUpdateScrollBars;
Begin
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CalcVertPage(PageSize:TSize):Integer;
Var
  Node:TDCTreeNode;
  TreeViewHeight:Integer;
Begin
  Result:=0;
  If FTopItem=Nil Then
    Exit;
  Node:=FTopItem;
  TreeViewHeight:=PageSize.cY;
  While Node<>Nil Do
  Begin
    Dec(TreeViewHeight,Node.GetHeight);
    If TreeViewHeight<0 Then
      Break;
    Inc(Result);
    Node:=Node.GetNextVisibleSimple;
  End;
  If (Node=Nil) And (TreeViewHeight>0) Then
  Begin
    Node:=FTopItem.GetPrevVisibleSimple;
    While Node<>Nil Do
    Begin
      Dec(TreeViewHeight,Node.GetHeight);
      If TreeViewHeight<0 Then
        Break;
      Inc(Result);
      Node:=Node.GetPrevVisibleSimple;
    End;
  End;
  If Result=0 Then
    Result:=1;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CancelEdit;
Begin
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CanChange(Node:TDCTreeNode):Boolean;
Begin
  Result:=True;
  If Assigned(FOnChanging) Then
    FOnChanging(Self,Node,Result);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CanCollapse(Node:TDCTreeNode):Boolean;
Begin
  Result:=True;
  If Assigned(FOnCollapsing) Then
    FOnCollapsing(Self,Node,Result);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CanEdit(Node:TDCTreeNode):Boolean;
Begin
  Result:=Not ReadOnly And Not Node.ReadOnly;
  If Assigned(FOnEditing) Then
    FOnEditing(Self,Node,Result);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CanExpand(Node:TDCTreeNode):Boolean;
Begin
  Result:=True;
  If Assigned(FOnExpanding) Then
    FOnExpanding(Self,Node,Result);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.Change(Node:TDCTreeNode);
Begin
  If (Selected<>Nil) And Not Selected.Focused Then
    Exit;
  If Assigned(FOnChange) Then
    FOnChange(Self,Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CMColorChanged(Var Message:TMessage);
Begin
  Inherited;
  OnColorChanged;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CMCtl3DChanged(Var Message:TMessage);
Begin
  Inherited;
  UpdateBorder;
End;

{----------------------------------------------------------}

Procedure TDCCustomTreeView.CMDrag(Var Message:TCMDrag);
Begin
  With Message Do
    If DragMessage=dmDragDrop Then
      FLastDropTargetFinally:=FLastDropTarget;
  Inherited;
  With Message.DragRec^ Do
    FDragObject:=Source;
  With Message Do
    If DragMessage In [dmDragDrop,dmDragLeave,dmDragCancel] Then
      FDragObject:=Nil;
  With Message Do
    If DragMessage=dmDragDrop Then
      FLastDropTargetFinally:=Nil;
end;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CMFontChanged(Var Message:TMessage);
Begin
  Inherited;
  OnFontChanged;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CMMouseLeave(Var Message:TMessage);
Begin
  Inherited;
  UpdateHotTrack;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CreateNode:TDCTreeNode;
Begin
  Result:=FDefaultNodeClass.Create(Items);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CreateParams(var Params: TCreateParams);
Const
  BorderStyles:Array[TBorderStyle] Of DWORD=(0,WS_BORDER);
Begin
  Inherited CreateParams(Params);
  With Params do
  Begin
    Style:=(Style Or BorderStyles[FBorderStyle]);
    WindowClass.Style:=WindowClass.Style And Not (CS_HREDRAW Or CS_VREDRAW);
    If Ctl3D And NewStyleControls And (FBorderStyle=bsSingle) Then
    Begin
      Style:=Style And Not WS_BORDER;
      ExStyle:=Params.ExStyle Or GetExStyle;
    End;
 End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CreateRootNode:TDCTreeNode;
Begin
  Result:=TDCTreeNode.Create(Items);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CreateScrollTimer;
Begin
  SetTimer(ScrollTimerID,ScrollDragDelaySlow,FScrollTimerCreated);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CreateToolTips;
Begin
  If (FToolTip <> nil) and FToolTips And Not (csDesigning In ComponentState) And HandleAllocated Then
  Begin
    FToolTip.CreateToolTipWindow;
    FToolTip.SetInitialTime(0);
    UpdateToolTip;
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.CreateWnd;
Begin
  Inherited;
  If FNeedRecalc Then
  Begin
    RecalcAll;
    FNeedRecalc:=False;
  End;
  {$IFDEF D4}
  If FScrollBarsStyle<>ssRegular Then
    SetScrollBarsStyleInternal(FScrollBarsStyle);
  {$ENDIF}
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.CustomSort(SortProc:TDTVCompare;Data:Longint):Boolean;
  Procedure _Sort(Node:TDCTreeNode);
  Begin
    Node.CustomSort(SortProc,Data);
    Node:=Node.GetFirstChild;
    While Node<>Nil Do
    Begin
      If Node.HasChildren Then
        _Sort(Node);
      Node:=Node.GetNextSibling;
    End;
  End;
Begin
  Result:=True;
  If IsSortLocked Then
    Exit;
  FNodes.BeginLock;
  Try
    _Sort(FRootNode);
  Finally
    FNodes.ClearCache;
    FNodes.EndLock;
  End;
  TopItemChanged;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DefineProperties(Filer:TFiler);
Begin
  Inherited;
  Filer.DefineProperty('CheckBoxes',ReadCheckBoxes,Nil,False);
  Filer.DefineBinaryProperty('DrawData',ReadDrawData,Nil,False);
  Filer.DefineProperty('SelectDelay',ReadSelectDelay,Nil,False);
  If StoreDrawData Then
    Filer.DefineBinaryProperty('Data',ReadData,WriteData,True);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.Delete(Node:TDCTreeNode);
Begin
  Node.Delete;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DeselectPrevious(Exclude:TDCTreeNode);
Var
  I:Integer;
  Node:TDCTreeNode;
Begin
  For I:=FSelectedItems.Count-1 DownTo 0 Do
  Begin
    Node:=FSelectedItems[I];
    If Node<>Exclude Then
      Node.Selected:=False;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DestroyEditControls;
Begin
  If FEditControls=Nil Then
    Exit;
  FEditControls.Free;
  FEditControls:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DestroyToolTips;
Begin
  If FToolTips And (FToolTip<>Nil) Then
  Begin
    TDCTreeToolTip(FToolTip).TreeNode:=Nil;
    FToolTip.DestroyToolTipWindow;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DeleteSelectedItems;
Begin
  Items.BeginUpdate;
  Try
    While FSelectedItems.Count>0 Do
      TDCTreeNode(FSelectedItems[0]).Free;
  Finally
    Items.EndUpdate;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DMCancelChanges(Var Message:TMessage);
Begin
  EndEditNode(True);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DMHideEditor(Var Message:TMessage);
Begin
  FEditControl.Perform(DM_HIDEEDITOR,0,0);
  FEditControl:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DMKillFocus(Var Message:TMessage);
Begin
  InvalidateSelected;
  FSkipSetFocus:=True;
  Try
    EndEditNode(False);
  Finally
    FSkipSetFocus:=False;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DMSaveChanges(Var Message:TMessage);
Begin
  EndEditNode(False);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoAfterEditing(Node:TDCTreeNode;Cancel:Boolean);
Begin
  If Assigned(OnAfterEditing) Then
    OnAfterEditing(Self,Node,Cancel);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoAfterInsert(Node:TDCTreeNode);
  Procedure _UpdateScreen;
  Var
    ParentNode,Next,Prev:TDCTreeNode;
  Begin
    ParentNode:=Node.Parent;
    If ParentNode<>Nil Then
      ParentNode.HasChildren:=True;
    If Not Items.Locked Then
    Begin
      If (ParentNode<>Nil) And (ParentNode.HasChildren) And
          Not ParentNode.Expanded Then
        ParentNode.Invalidate([npButton]);
      Prev:=Node.GetPrevSibling;
      Next:=Node.GetNextSibling;
      If (Next=Nil) And (Prev<>Nil) Then
      Begin
        Prev.InvalidateChild([npLines]);
        Prev.Invalidate([npButton]);
      End;
      If (Next<>Nil) And (Prev=Nil) Then
        Next.Invalidate([npButton]);
      Node.InvalidateBelow(True);
    End;
  End;
Begin
  If FTopItem=Nil Then
    FTopItem:=Node;

  Node.FDCParent.IncItemCount(1);
  Inc(Node.FDCParent.FChildInfo.ChildCount);
  Node.FDCParent.IncExpandedCount(1);
  If Node.IsVisible Then
  Begin
    Node.ReSortNode;
    If Not FNodes.Locked And HandleAllocated Then
    Begin
      AfterInsert(Node);
      UpdateScroll(False,False);
    End
    Else
      FNeedRecalc:=True;
  End;
  MouseSelectUpdate(Node);
  _UpdateScreen;
  If FCheckBoxesType=ctAll Then
    Node.NodeType:=ntCheckBox;
  If Assigned(FOnAfterInsert) Then
    FOnAfterInsert(Self,Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoBeforeDelete1(Node:TDCTreeNode);
Var
  Next,Prev:TDCTreeNode;
Begin
  If FNodes.Locked Then
    Exit;
  Prev:=Node.GetPrevSibling;
  Next:=Node.GetNextSibling;
  If (Next=Nil) And (Prev<>Nil) Then
  Begin
    Prev.InvalidateChild([npLines]);
    Prev.Invalidate([npButton]);
  End;
  Node.InvalidateBelow(True);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoBeforeDelete2(Node:TDCTreeNode);
Var
  IsVisible:Boolean;
Begin
  Node.FDCParent.IncExpandedCount(-Node.FChildInfo.ExpandedCount-1);
  Node.FDCParent.IncItemCount(-Node.FChildInfo.ItemCount-1);
  If (Node.FDCParent.FChildInfo.ItemCount=0) And (Node.FDCParent<>FRootNode) Then
    Exclude(Node.FDCParent.FNodeState,nsExpanded);
  Dec(Node.FDCParent.FChildInfo.ChildCount,1);
  IsVisible:=Not FNodes.Locked And Not (csDestroying In ComponentState);
  If IsVisible Then
  Begin
    AfterDelete(Node);
    UpdateScroll(True,True);
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoCancelMode;
Begin
  If FBeginMouseSelect Then
    MouseSelectCancel;
  If FDragged Then
    ProcessCancelDrag;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoCheckClick(Node:TDCTreeNode);
Begin
  If Assigned(FOnCheckClick) Then
    FOnCheckClick(Self,Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoCollapsed(Node:TDCTreeNode);
Begin
  If Assigned(FOnCollapsed) Then
    FOnCollapsed(Self,Node);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.DoCompare(Node1,Node2:TDCTreeNode):Integer;
Begin
  Result:=AnsiCompareText(Node1.Text,Node2.Text);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoDeletion(Node:TDCTreeNode);
Begin
  If Assigned(FOnDeletion) Then
    FOnDeletion(Self,Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoEdit(Node:TDCTreeNode;Var NewText:String);
Begin
  If Assigned(FOnEdited) Then
    FOnEdited(Self,Node,NewText);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoExpanded(Node:TDCTreeNode);
Begin
  If Assigned(FOnExpanded) Then
    FOnExpanded(Self,Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoExpandNode(Node:TDCTreeNode);
Begin
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoRightClickNode(Node:TDCTreeNode;Var Action:TRightClickAction);
Begin
  If Assigned(FOnRightClickNode) Then
    FOnRightClickNode(Self,Node,Action);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoSelectionChanged;
Begin
  If FSelectionChangedLock=0 Then
    If (FChangeDelay>0) And HandleAllocated Then
    Begin
      KillTimer(SelectionTimerID,FSelectionTimerCreated);
      SetTimer(SelectionTimerID,FChangeDelay,FSelectionTimerCreated)
    End
    Else
      SelectionChanged;
  FNeedSelectionChanged:=FSelectionChangedLock<>0;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoStartDrag(Var DragObject:TDragObject);
Var
  Image,Mask:TBitmap;
  Index:Integer;
  ARect:TRect;
Begin
  FDragged:=True;
  Inherited DoStartDrag(DragObject);
  KillEditTimer;
  UpdateToolTip;
  RemoveHotTrackNode;
  SetKeyboardHook;
  FLastDropTarget:=Nil;
  If (FDragNode<>Nil) And (Images<>Nil) And (FDragNode.ImageIndex>=0) And
     (FDragNode.ImageIndex<Images.Count) Then
  Begin
    Index:=FDragNode.ImageIndex;
    TImageList(FDragImages).Width:=TImageList(Images).Width;
    TImageList(FDragImages).Height:=TImageList(Images).Height;
    Image:=Nil;
    Mask:=Nil;
    Try
      Image:=TBitmap.Create;
      With Image do
      Begin
        Width:=TImageList(Images).Width;
        Height:=TImageList(Images).Height;
      End;
      Mask:=TBitmap.Create;
      With Mask Do
      Begin
        Monochrome:=True;
        Width:=Image.Width;
        Height:=Image.Height;
      End;
      With Image.Canvas Do
      Begin
        ARect:=Rect(0,0,Image.Width,Image.Height);
        FillRect(ARect);
        ImageList_Draw(Images.Handle,Index,Handle,0,0,ILD_NORMAL);
      End;
      With Mask.Canvas Do
      Begin
        FillRect(ARect);
        ImageList_Draw(Images.Handle,Index,Handle,0,0,ILD_MASK);
      End;
      FDragImages.Add(Image,Mask);
    Finally
      Mask.Free;
      Image.Free;
    End;
  End;
end;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoEndDrag(Target:TObject;X,Y:Integer);
Begin
  FMouseButtonPressed:=False;
  FDragged:=False;
  FLastDropTarget:=Nil;
  Inherited DoEndDrag(Target,X,Y);
  RemoveKeyboardHook;
  FDragImages.Clear;
end;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoGetEditorClass(Node:TDCTreeNode;Var ControlClass:TControlClass);
Begin
  If Assigned(FOnGetEditorClass) Then
    FOnGetEditorClass(Self,Node,ControlClass);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoGetImageIndex(Node:TDCTreeNode);
Begin
  If Assigned(OnGetImageIndex) Then
    OnGetImageIndex(Self,Node)
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoGetSelectedIndex(Node:TDCTreeNode);
Begin
  If Assigned(OnGetSelectedIndex) Then
    OnGetSelectedIndex(Self,Node)
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoGetToolTipInfo(Node:TDCTreeNode;
                                             Var ToolTipText:String;
                                             Var ToolTipRect:TRect);
Begin
  If Assigned(OnGetToolTipInfo) Then
    OnGetToolTipInfo(Self,Node,ToolTipText,ToolTipRect);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoStateChanged(Node:TDCTreeNode);
Begin
  If Assigned(OnStateChanged) Then
    OnStateChanged(Self,Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoStateChanging(Node:TDCTreeNode;Var State:TCheckBoxState);
Begin
  If Assigned(OnStateChanging) Then
    OnStateChanging(Self,Node,State);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoValidateEditText(Node:TDCTreeNode;Var Text:String;
                                               Var ValidateCode:TDCValidateCode);
Begin
  ValidateCode:=vcOk;
  If Assigned(FOnValidateEditText) Then
    FOnValidateEditText(Self,Node,Text,ValidateCode);
  If csDestroying In ComponentState Then
    ValidateCode:=vcCancel;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DoUnHighlightNode;
Begin
  If FHighlightNode<>Nil Then
  Begin
    If Selected<>Nil Then
      Selected.Selected:=True;
    FHighlightNode.InternalSetSelected(False);
    FHighlightNode:=Nil;
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DragOver(Source:TObject;X,Y:Integer;State:TDragState;
                                     Var Accept:Boolean);
Var
  Pt:TPoint;
Begin
  Pt:=Point(X,Y);
  X:=Pt.X;
  Y:=Pt.Y;
  Case State Of
    dsDragEnter:
    Begin
      FExternalDrag:=True;
      UpdateDropTarget(X,Y);
    End;
    dsDragLeave:
      Begin
        If FDropTarget<>Nil Then
        Begin
          FLastDropTarget:=FDropTarget;
          Inherited;//to allow DropTarget<>Nil in event call
          FDropTarget.DropTarget:=False;
        End;
        FExternalDrag:=False;
      End;
    dsDragMove:
      UpdateDropTarget(X,Y);
  End;
  If State In [dsDragMove,dsDragEnter] Then
  Begin
    With ClientRect Do
    If FAutoScroll And PtInRect(ClientRect,Pt) And
       ((Pt.X<Left+DragScrollSpace) Or (Pt.X>Right-DragScrollSpace) Or
        (Pt.Y<Top+DragScrollSpace) Or (Pt.Y>Bottom-DragScrollSpace)) Then
      SetTimer(ScrollTimerID,ScrollDragDelaySlow,FScrollTimerCreated);
    If (DropTarget<>Nil) And DropTarget.HasChildren And FExpandOnDrag Then
    Begin
      FDragExpandNode:=DropTarget;
      SetTimer(ExpandTimerID,FDragExpandDelay,FExpandTimerCreated);
    End;
    Inherited;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawBackground(Node:TDCTreeNode;Const ARect:TRect);
Begin
  If IsRectEmpty(ARect) Then
    Exit;
  FCanvas.Brush.Color:=GetNodeBackgroundColor(Node);
  FCanvas.FillRect(ARect);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawEditor(Node:TDCTreeNode;Const AText:String;Const ADrawRect:TRect;AColumn:Integer);
Var
  DrawRec:TDrawRec;
  ARect:TRect;
Begin
  DrawRec.Text:=PChar(AText);
  DrawRec.DrawRect:=@ADrawRect;
  DrawRec.WordWrap:=IsWordWrap;
  if GetEditor(Node,AColumn).Perform(DM_DRAW,Integer(@DrawRec),Integer(Canvas))=0 Then
  Begin
    ARect:=Bounds(ADrawRect.Left,ADrawRect.Top,
                  ADrawRect.Right-ADrawRect.Left,GetEditorHeight(Node,AText,AColumn));
    VCenterRect(ARect,ADrawRect);
    OffsetRect(ARect,TextSpace,0);
    InflateRect(ARect,0,-TextSpace);
    If IsWordWrap Then
      DrawMultiLineText(Canvas,PChar(AText),ARect,True)
    Else
      ExtTextOut(Canvas.Handle,ARect.Left,ARect.Top,ETO_OPAQUE Or ETO_CLIPPED,
                 @ARect,PChar(AText),Length(AText),Nil);
    Canvas.FillRectExclude(ADrawRect,ARect);
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawNode(Node:TDCTreeNode;const ARect:TRect);
Var
  DispInfo:TDCNodeDispInfo;
Begin
  Node.GetNodeDispInfo(DispInfo);
  InternalDrawNode(Node,DispInfo,ARect);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawNodeButton(Node:TDCTreeNode;Const ARect:TRect);
Var
  Y,TopY1,TopY2:Integer;
  BottomY1,BottomY2:Integer;
  X,X1,X2:Integer;
  ButtonRect,SymbolRect:TRect;

  Procedure PaintButton;
  Var
    SymX,SymY:Integer;
  Begin
    With Canvas Do
    Begin
      If Node.HasChildren Then
      Begin
        Pen.Color:=clBlack;
        Brush.Color:=FLinesColor;
        FrameRect(ButtonRect);
        SymX:=MiddlePoint(SymbolRect.Right,SymbolRect.Left);
        SymY:=MiddlePoint(SymbolRect.Bottom,SymbolRect.Top);
        Pattern:=SolidPattern;
        DrawHorzDotLine(SymbolRect.Left,SymY,SymbolRect.Right);
        If Not Node.Expanded And Not FPrinting Then
          DrawVertDotLine(SymX,SymbolRect.Top,SymbolRect.Bottom);
      End;
    End;
  End;
Begin
  If Not FPrinting Then
    DrawBackground(Node,ARect);

  If Node.HasChildren And ShowButtons Then
  Begin
    ButtonRect:=Node.GetButtonRect;
    HCenterRect(ButtonRect,ARect);
    VCenterRectEven(ButtonRect,ARect);
    Y:=MiddlePoint(ButtonRect.Bottom,ButtonRect.Top)
  End
  Else
    Y:=MiddlePoint(ARect.Bottom,ARect.Top) And Not 1;//clear last bit
  X:=CenterPoint(ARect.Left,ARect.Right);
  TopY1:=ARect.Top;
  TopY2:=Y;
  BottomY2:=ARect.Bottom;
  BottomY1:=Y;
  X1:=X;
  X2:=ARect.Right;
  If Node.GetPrev=Nil Then
    TopY1:=TopY2;
  If Node.GetNextSibling=Nil Then
    BottomY2:=BottomY1;
  If Node.HasChildren And ShowButtons Then
  Begin
    SymbolRect:=Node.GetSymbolRect(ButtonRect);
    HCenterRect(SymbolRect,ButtonRect);
    VCenterRect(SymbolRect,ButtonRect);
    TopY2:=ButtonRect.Top;
    BottomY1:=ButtonRect.Bottom-1;
    X1:=ButtonRect.Right+1;
  End;
  With Canvas Do
  Begin
    If ShowButtons Then
      PaintButton;
    If ShowLines Then
    Begin
      Pattern:=DotedPattern;
      Pen.Color:=FLinesColor;
      Brush.Color:=Color;
      If TopY1<TopY2 Then
        DrawVertDotLine(X,TopY1,TopY2);
      If BottomY1<BottomY2 Then
        DrawVertDotLine(X,BottomY1,BottomY2);
      DrawHorzDotLine(X1,Y,X2);
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawNodeLines(Node:TDCTreeNode;const ARect:TRect);
Var
  DrawRect:TRect;
  Pos:Integer;
  NextNode:TDCTreeNode;
Begin
  Pos:=Node.GetPositionX;
  DrawRect:=ARect;
  NextNode:=Node;
  While True Do
  Begin
    NextNode:=NextNode.Parent;
    If NextNode=Nil Then
      Break;
    DrawNodeLineSection(NextNode,Node,Rect(Pos-NextNode.GetIndent,DrawRect.Top,Pos,DrawRect.Bottom));
    Dec(Pos,NextNode.GetIndent);
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawNodeLineSection(Node,SourceNode:TDCTreeNode;const ARect:TRect);
Begin
  If Not FPrinting Then
    DrawBackground(SourceNode,ARect);
  If Not ShowLines Then
    Exit;
  If Node.GetNextSibling<>Nil Then
  With FCanvas Do
  Begin
    Pattern:=DotedPattern;
    Pen.Color:=FLinesColor;
    Brush.Color:=Color;
    DrawVertDotLine(CenterPoint(ARect.Left,ARect.Right),ARect.Top,ARect.Bottom);
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawNodeText(Node:TDCTreeNode;Const ARect:TRect);
Var
  DrawRect:TRect;
  tm:TTextMetric;
  TopPos:Integer;
  ATextRect:TRect;
Begin
  If AllowDrawText(Node) Then
  Begin
    With FCanvas Do
    Begin
      ATextRect:=ARect;
      DrawRect:=ARect;
      Font:=Node.InternalFont;
      If Not FPrinting Then
      Begin
        If FHotTrackNode=Node Then
          Font.Color:=ActiveSelectedColor;
        Brush.Color:=GetNodeBrushColor(Node,GetDefaultNodeBrushColor(Node));
        Font.Color:=GetNodeFontColor(Node,Font.Color);
      End;
      If AllowDrawFocusRect(Node) Then
        ShrinkRectInRect(DrawRect,GetFocusRect);
      InflateRect(ATextRect,-FocusSpace,-FocusSpace);
      If Not FPrinting Then
        FillRectExclude(DrawRect,ATextRect);
      DrawRect:=ATextRect;
      DrawEditor(Node,Node.Text,DrawRect,0);
      If Not FPrinting Then
      Begin
        If FHotTrackNode=Node Then
        Begin
          Pen.Color:=Font.Color;
          GetTextMetrics(Handle,tm);
          TopPos:=DrawRect.Top+tm.tmAscent+FocusSpace+1;
          MoveTo(DrawRect.Left,TopPos);
          LineTo(DrawRect.Right,TopPos);
        End;
      End;
    End;
  End
  Else
    DrawBackground(Node,ARect);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.DrawTreeView(const DrawRect:TRect);
Var
  FirstNode,
  NextNode:TDCTreeNode;
  BackRect:TRect;
  SelectFrameCleared:Boolean;

  Procedure _BeforePaint;
  Begin
    If FBeginMouseSelect Then
      If Not FSelectFrameCleared Then
      Begin
        PaintSelectFrame(FOldSelectX,FOldSelectY);
        SelectFrameCleared:=True
      End
      Else
        SelectFrameCleared:=False
    Else
      SelectFrameCleared:=False;
    HideDragImage;
  End;

  Procedure _AfterPaint;
  Begin
    ShowDragImage;
    If SelectFrameCleared Then
      PaintSelectFrame(FOldSelectX,FOldSelectY);
  End;

  Function _FocusedVisibleInTreeView:Boolean;
  Var
    Y:Integer;
  Begin
    Y:=FFocused.GetPositionYSmart;
    With GetDrawRect Do
      Result:=(Y>=Top) And (Y<Bottom);
  End;

  Procedure _DrawNodeLine;
  Var
    tm:TTextMetric;
    TopPos:Integer;
    ARect:TRect;
  Begin
    With Canvas Do
      If (FDropTarget<>Nil) And (DropTargetKind In [tkUp,tkDown]) Then
      Begin
        ARect:=GetNodeFocusRect(FDropTarget);
        Pen.Color:=GetNodeFontColor(FDropTarget,FDropTarget.InternalFont.Color);
        GetTextMetrics(Handle,tm);
        If FDropTargetKind=tkUp Then
          TopPos:=ARect.Top+1
        Else
          TopPos:=ARect.Bottom-2;

        MoveTo(ARect.Left-1,TopPos);
        LineTo(ARect.Right,TopPos);

        MoveTo(ARect.Left,TopPos-1);
        LineTo(ARect.Left,TopPos+2);
        MoveTo(ARect.Right-1,TopPos-1);
        LineTo(ARect.Right-1,TopPos+2);
      End;
  End;

Begin
  _BeforePaint;
  FirstNode:=FNodes.GetFirstVisibleRect(DrawRect);
  NextNode:=FirstNode;
  If FirstNode=Nil Then
    DrawBackground(Nil,DrawRect)
  Else
  Begin
    Canvas.CopyMode:=cmSrcCopy;
    While FirstNode<>Nil Do
    Begin
      DrawNode(FirstNode,DrawRect);
      NextNode:=FirstNode;
      FirstNode:=FirstNode.GetNextVisibleRect(True,DrawRect);
    End;
    BackRect:=Rect(DrawRect.Left,NextNode.DisplayRectPart(npText,npText,True).Bottom,DrawRect.Right,
                   DrawRect.Bottom);
    With Canvas Do
      If (IsRowSelect Or AllowDrawText(FFocused)) And AllowDrawFocusRect(FFocused) And _FocusedVisibleInTreeView Then
      Begin
        Pen.Color:=ColorToRGB(GetFocusPenColor) Xor ColorToRGB(clHighlight);
        Brush.Color:=ColorToRGB(GetFocusBrushColor) Xor clWhite;
        DrawFocusRect(GetFocusRect);
      End;
    If Not IsRectEmpty(BackRect) Then
      DrawBackground(Nil,BackRect);
    _DrawNodeLine;
  End;
  _AfterPaint;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.Edit(Node:TDCTreeNode;Var NewText:String);
Begin
  Node.Text:=NewText;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.EditNode(Node:TDCTreeNode):Boolean;
Begin
  KillEditTimer;
  ProcessCancelDrag;
  Result:=False;
  If Visible And HandleAllocated Then
  Begin
    Result:=Not FBeginMouseSelect And CanEdit(Node);
    If Not Result Then
      Exit;
    HideToolTip;
    Selected:=Node;

    If IsEditing And (FEditNode<>Node) And (FEditNode<>Nil) Then
      FEditNode.EndEdit(False);
    MakeEditNodeVisible(Node);
    FEditControl:=GetNodeEditor(Node);
    if Assigned(OnAssignEditorProps) then
      OnAssignEditorProps(Self,Node,FEditControl);
    FEditNode:=Node;
    SetEditInfo;
    SetEditParent;
    SetEditorRectAndText(Node);
    FIsEditing:=True;
    ShowEditor;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.EndEditNode(Cancel:Boolean);
Var
  AText:String;
  Node:TDCTreeNode;
  ValidateCode:TDCValidateCode;
  OldText:String;
Begin
  If FIsValidating Or Not IsEditing Or (FEditNode=Nil) Then
    Exit;
  FIsValidating:=True;
  Try
    If Not Cancel Then
    Begin
      FEditControl.Perform(DM_SAVECHANGES,Integer(@AText),0);
      OldText:=AText;
      DoValidateEditText(FEditNode,AText,ValidateCode);
      Case ValidateCode Of
        vcCancel:Cancel:=True;
        vcContinueEditing:
          Begin
            If OldText<>AText Then
              FEditControl.Perform(WM_SETTEXT,0,Integer(Pointer(PChar(AText))));
            Abort;
          End;
      End;
    End;
    Node:=FEditNode;
    FEditNode:=Nil;
    Try
      If Cancel Then
      Begin
        FEditControl.Perform(DM_CANCELCHANGES,0,0);
        CancelEdit;
      End
      Else
      Begin
        If Boolean(FEditControl.Perform(DM_GETMODIFIED,0,0)) Then
        Begin
          DoEdit(Node,AText);
          Edit(Node,AText)
        End
        Else
          CancelEdit;
      End;

      DoAfterEditing(Node,Cancel);
    Finally
      If HandleAllocated Then
      Begin
        FIsEditing:=False;
        If FSkipSetFocus Then
          PostMessage(Handle,DM_HIDEEDITOR,0,0)
        Else
          SendMessage(Handle,DM_HIDEEDITOR,0,0);
        If IsWindowVisible(Handle) And Not FSkipSetFocus Then
          SetFocus;
      End;
      UpdateToolTip;
    End;
  Finally
    FIsValidating:=False;
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.FillRectExclude(Node:TDCTreeNode;Const ARect,ExcludeRect:TRect);
Begin
  DrawBackground(Node,Rect(ARect.Left,ARect.Top,ExcludeRect.Left,ARect.Bottom));//left rect
  DrawBackground(Node,Rect(ExcludeRect.Right,ARect.Top,ARect.Right,ARect.Bottom));//right rect
  DrawBackground(Node,Rect(ExcludeRect.Left,ARect.Top,ExcludeRect.Right,ExcludeRect.Top));//top rect
  DrawBackground(Node,Rect(ExcludeRect.Left,ExcludeRect.Bottom,ExcludeRect.Right,ARect.Bottom));//bottom rect
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.FindEditor(EditorClass:TControlClass):TControl;
Var
  I:Integer;
Begin
  If FEditControls<>Nil Then
    For I:=0 To FEditControls.Count-1 Do
    Begin
      Result:=TControl(FEditControls[I]);
      If Result.ClassType = EditorClass Then
        Exit;
    End;  
  Result:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.FlushDelayedSelection;
Begin
  If FSelectionTimerCreated Then
  Begin
    KillTimer(SelectionTimerID,FSelectionTimerCreated);
    SelectionChanged;
  End;
End;

{---------------------------------------------------------}

{Procedure TDCCustomTreeView.ForceHideDragImage;
Begin
  If FDragObject<>Nil Then
    FDragObject.HideDragImage
  Else
    If GetDragImages<>Nil Then
      GetDragImages.HideDragImage;
End;}

{---------------------------------------------------------}

{Procedure TDCCustomTreeView.ForceShowDragImage;
Begin
  If FDragObject<>Nil Then
    FDragObject.ShowDragImage
  Else
    If GetDragImages<>Nil Then
      GetDragImages.ShowDragImage;
End;}

{---------------------------------------------------------}

Procedure TDCCustomTreeView.FullCollapse;
Var
  Node:TDCTreeNode;
Begin
  Items.BeginUpdate;
  Try
    Node:=FRootNode.GetFirstChild;
    While Node<>Nil Do
    Begin
      Node.Collapse(True);
      Node:=Node.GetNextSibling;
    End;
  Finally
    Items.EndUpdate;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.FullExpand;
Var
  Node:TDCTreeNode;
Begin
  Items.BeginUpdate;
  Try
    Node:=FRootNode.GetFirstChild;
    While Node<>Nil Do
    Begin
      Node.Expand(True);
      Node:=Node.GetNextSibling;
    End;
  Finally
    Items.EndUpdate;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetAnotherHitTest(Pt:TPoint;Const DispInfo:TDCNodeDispInfo):TDCHitTests;
Begin
  Result:=[];
End;  

{---------------------------------------------------------}

Function TDCCustomTreeView.GetCursorPos:TPoint;
Begin
  Windows.GetCursorPos(Result);
  Result:=ScreenToClient(Result);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetDefaultNodeBrushColor(Node:TDCTreeNode):TColor;
Begin
  Result:=Node.Color;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetDragImages:{$IFDEF D4}TDragImageList{$ELSE}TCustomImageList{$ENDIF};
Begin
  If FDragImages.Count=0 Then
    Result:=Nil
  Else
    Result:=FDragImages;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetDrawRect:TRect;
Begin
  Result:=ClientRect;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetDropTarget:TDCTreeNode;
Begin
  Result:=FDropTarget;
  If Not Dragging And (Result=Nil) Then
    Result:=FLastDropTargetFinally;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetDefaultEditorHeight(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
Begin
  If MultiLineNodes Then
    With GetNodeWordWrapRect(Node,AColumn) Do
     Result:=GetMultiLineTextHeight(Canvas,AText,Right-Left,IsColumnWordWrap(AColumn))
  Else
    Result:=GetFontHeight(Canvas.Font)
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetDefaultEditorWidth(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
Var
  tm:TTextMetric;
Begin
  If MultiLineNodes Then
    With GetNodeWordWrapRect(Node,AColumn) Do
      Result:=GetMultiLineTextWidth(Canvas,AText,Right-Left,IsColumnWordWrap(AColumn))
  Else
  Begin
    GetTextMetrics(Canvas.Handle,tm);
    Result:=Canvas.TextWidth(AText)+tm.tmOverhang;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetEditor(Node:TDCTreeNode;AColumn:Integer):TControl;
Var
  EditorClass:TControlClass;
Begin
  EditorClass:=GetEditorClass(Node,AColumn);
  Result:=FindEditor(EditorClass);
  If Result=Nil Then
  Begin
    Result:=EditorClass.Create(Self);
    Result.Perform(DM_SETCANVAS,Integer(Canvas),0);
    Result.Hide;
    Result.Parent:=Self;
    AddEditControl(Result);
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetEditorClass(Node:TDCTreeNode;AColumn:Integer):TControlClass;
Begin
  If MultiLineNodes Then
    Result:=TDCTreeMemoEditor
  Else
    Result:=TDCTreeSimpleEditor;
  DoGetEditorClass(Node,Result);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetEditorHeight(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
Var
  MeasureRec:TMeasureRec;
Begin
  MeasureRec.Text:=PChar(AText);
  MeasureRec.IsCalcWidth:=False;
  MeasureRec.WordWrapSize:=GetNodeWordWrapRect(Node,AColumn);
  MeasureRec.IsWordWrap:=IsWordWrap;
  MeasureRec.Result:=@Result;
  If GetEditor(Node,AColumn).Perform(DM_MEASURE,Integer(@MeasureRec),0)=0 Then
    Result:=GetDefaultEditorHeight(Node,AText,AColumn)+TextSpace*2;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetEditorWidth(Node:TDCTreeNode;Const AText:String;AColumn:Integer):Integer;
Var
  MeasureRec:TMeasureRec;
Begin
  MeasureRec.Text:=PChar(AText);
  MeasureRec.IsCalcWidth:=True;
  MeasureRec.WordWrapSize:=GetNodeWordWrapRect(Node,AColumn);
  MeasureRec.IsWordWrap:=IsWordWrap;
  MeasureRec.Result:=@Result;
  If GetEditor(Node,AColumn).Perform(DM_MEASURE,Integer(@MeasureRec),0)=0 Then
    Result:=GetDefaultEditorWidth(Node,AText,AColumn)+TextSpace*2;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetExStyle:DWord;
Begin
  If FlatBorder Then
    Result:=WS_EX_STATICEDGE
  Else
    Result:=WS_EX_CLIENTEDGE;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetFirstVisibleNode:TDCTreeNode;
Begin
  Result:=FNodes.GetFirstNode;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetFocusBrushColor:TColor;
Begin
  If (FFocused=Nil) Or (Not FFocused.Selected) Then
    Result:=clBlack
  Else
    Result:=ActiveSelectedColor;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetFocusPenColor:TColor;
Begin
  If (FFocused=Nil) Or (Not FFocused.Selected) Then
    Result:=clHighlight
  Else
    Result:=ActiveSelectedColor;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetFocusRect:TRect;
Begin
  Result:=GetNodeFocusRect(FFocused);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetHitTestRect:TRect;
Begin
  Result:=GetClientRect;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.GetItemsInAbsRect(List:TList;const ARect:TRect);
Var
  TextRect:TRect;
  Y:Integer;
  NodeTextWidth:Integer;
  NodeLeft:Integer;
  NodeHeight:Integer;
  Procedure _ProcessNode(Node:TDCTreeNode);
  Var
    ClientRight:Integer;
  Begin
    NodeTextWidth:=Node.GetTextWidth;
    NodeLeft:=Node.Width-NodeTextWidth;
    NodeHeight:=Node.GetHeight;
    TextRect:=Rect(NodeLeft,Y,NodeLeft+NodeTextWidth,Y+NodeHeight);
    If IsRowSelect Then
    Begin
      ClientRight:=ClientRect.Right;
      With TextRect Do
        If Right<ClientRight Then
          Right:=ClientRight;
    End;      

    If IsInSelectRect(ARect,TextRect) Then
      List.Add(Node)
    Else
    Begin
      IntersectRect(TextRect,TextRect,ARect);
      If Not IsRectEmpty(TextRect) Then
        List.Add(Node);
    End;
    Inc(Y,NodeHeight);
  End;
Var
  NextNode:TDCTreeNode;
Begin
  Y:=GetDrawRect.Top;
  NextNode:=FNodes.GetFirstNode;
  While NextNode<>Nil Do
  Begin
    _ProcessNode(NextNode);
    NextNode:=NextNode.GetNextVisibleSimple;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetHitTest(X,Y:Integer):TDCPosInfo;
Var
  NodeDispInfo:TDCNodeDispInfo;
  Node:TDCTreeNode;

  Function FindHitTests(const Pt:TPoint;const NodeDispInfo:TDCNodeDispInfo):TDCHitTests;
  Const
    HitTestInfo:Array[npLines..npText] Of TDCHitTest=
     (dhtOnIndent,dhtOnButton,dhtOnCheckBox,dhtOnStateIcon,dhtOnIcon,dhtOnLabel);
  Var
    I:TNodePart;
    ButtonRect:TRect;
    DrawRect:TRect;
  Begin
    DrawRect:=GetDrawRect;
    For I:=npLines To npText Do
      If PtInRect(NodeDispInfo[I],Pt) And PtInRect(DrawRect,Pt) Then
      Begin
        Result:=[HitTestInfo[I]];
        If (Result=[dhtOnButton]) And Not Node.HasChildren Then
          Result:=[dhtOnIndent]
        Else
          If Result=[dhtOnCheckBox] Then // check click on check box  
          Begin
            ButtonRect:=Rect(0,0,GetSystemCheckBoxWidth-1,GetSystemCheckBoxHeight-1);
            CenterRect(ButtonRect,NodeDispInfo[I]);
            If Not PtInRect(ButtonRect,Pt) Then
              Result:=[]
          End;
        Exit;
      End;
    Result:=GetAnotherHitTest(Pt,NodeDispInfo);  
  End;
Begin
  Result.Node:=Nil;
  With GetHitTestRect Do
  Begin
    Result.HitTests:=[];
    If Y<Top Then
      Result.HitTests:=[dhtAbove]
    Else If Y>=Bottom Then
      Result.HitTests:=[dhtBelow];
    If X<Left Then
      Include(Result.HitTests,dhtToLeft)
    Else If X>Right Then
      Include(Result.HitTests,dhtToRight);
    If Result.HitTests=[] Then
    Begin
      If Not (csDestroying In ComponentState) Then
      Begin
        Node:=FTopItem;
        While Node<>Nil Do
        Begin
          Node.GetNodeDispInfo(NodeDispInfo);
          With  NodeDispInfo[npLines] Do
           If (Top<=Y) And (Y<Bottom) Then
           Begin
             Result.Node:=Node;
             Result.HitTests:=FindHitTests(Point(X,Y),NodeDispInfo);
             If ItemHitTest*Result.HitTests<>[] Then
                Include(Result.HitTests,dhtOnItem);
             Exit;
           End;
          Node:=Node.GetNextVisibleSimple;
        End;
      End;
      Result.Node:=Nil;
      Result.HitTests:=[dhtNoWhere];
    End;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetHitTestAtCursor:TDCPosInfo;
Begin
  With GetCursorPos Do
    Result:=GetHitTest(X,Y);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetHitTestInfoAt(X,Y:Integer):THitTests;
Var
  HitTests:TDCHitTests;
Begin
  HitTests:=GetHitTest(X,Y).HitTests;
  Result:=[];
  If dhtNowhere In HitTests Then
    Include(Result,htNoWhere);
  If dhtAbove In HitTests Then
    Include(Result,htAbove);
  If dhtBelow In HitTests Then
    Include(Result,htBelow);
  If dhtToLeft In HitTests Then
    Include(Result,htToLeft);
  If dhtToRight In HitTests Then
    Include(Result,htToRight);
   If dhtOnItem In HitTests Then
    Include(Result,htOnItem);
  If dhtOnIndent In HitTests Then
    Include(Result,htOnIndent);
  If dhtOnButton In HitTests Then
    Include(Result,htOnButton);
  If dhtOnStateIcon In HitTests Then
    Include(Result,htOnStateIcon);
  If dhtOnIcon In HitTests Then
    Include(Result,htOnIcon);
  If dhtOnLabel In HitTests Then
    Include(Result,htOnLabel);
  If dhtOnRight In HitTests Then
    Include(Result,htOnRight);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetHitTestInfoAtCursor:THitTests;
Begin
  With GetCursorPos Do
    GetHitTestInfoAt(X,Y);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetLastVisibleNode:TDCTreeNode;
Begin
  Result:=FNodes.GetLastVisibleNode;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetMaxWidth:Integer;
Begin
  Result:=FRootNode.FChildInfo.MaxWidth
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNewTopItem(Value:TDCTreeNode;Var Delta:Integer):TDCTreeNode;
Var
  NextNode:TDCTreeNode;
  Node:TDCTreeNode;
  WindowHeight:Integer;
Begin
  If Value=Nil Then
  Begin
    Result:=Nil;
    Exit;
  End;
  With GetDrawRect Do
    WindowHeight:=Bottom-Top-Value.GetHeight;
  NextNode:=Value;
  Delta:=0;
  If WindowHeight>0 Then
    While NextNode<>Nil Do
    Begin
      Node:=NextNode.GetNextVisibleExternal;
      If Node=Nil Then
      Begin
        Delta:=0;
        NextNode:=Value;
        While NextNode<>Nil Do
        Begin
          Node:=NextNode.GetPrevVisibleExternal;
          If Node=Nil Then
          Begin
            Value:=NextNode;
            Break;
          End;
          Dec(WindowHeight,Node.GetHeight);
          If WindowHeight<0 Then
          Begin
            Value:=NextNode;
            Break;
          End;
          Dec(Delta);
          NextNode:=Node;
        End;
        Break;
      End;
      Dec(WindowHeight,Node.GetHeight);
      If WindowHeight<=0 Then
        Break;
      NextNode:=Node;
    End;
  Result:=Value;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeBackgroundColor(Node:TDCTreeNode):TColor;
Begin
  Result:=GetSelectedColor(Node,Color);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeBrushColor(Node:TDCTreeNode;Default:TColor):TColor;
Begin
  Result:=Default;
  If (Node=FDropTarget) And (DropTargetKind=tkStandard) Then
    Result:=ActiveSelectedColor
  Else
    If Node.Selected Then
      If IsFocused  Then
        Result:=ActiveSelectedColor
      Else
        If Not HideSelection And Not (csDesigning In ComponentState) Then
          Result:=InactiveSelectedColor;
End;

{---------------------------------------------------------}

function TDCCustomTreeView.GetNodeEditor(Node : TDCTreeNode) : TControl;
begin
  result := GetEditor(Node,0);
end;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeFocusRect(Node:TDCTreeNode):TRect;
Var
  DispInfo:TDCNodeDispInfo;
  DrawRect:TRect;
Begin
  Node.GetNodeDispInfo(DispInfo);
  DrawRect:=GetDrawRect;
  If RowSelect And (RowSelectType=rtFull) Then
    With DispInfo[npLines] Do
      Result:=Rect(0,Top,DrawRect.Right,Bottom)
  Else
    Result:=DispInfo[npText];
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeFontColor(Node:TDCTreeNode;Default:TColor):TColor;
Begin
  Result:=Default;
  If (Node=FDropTarget) And (DropTargetKind=tkStandard) Then
    Result:=ActiveSelectedFontColor
  Else
    If Node.Selected Then
      If IsFocused Then
        Result:=ActiveSelectedFontColor
      Else
        If Not HideSelection And Not (csDesigning In ComponentState) Then
          Result:=InactiveSelectedFontColor;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeWordWrapRect(Node:TDCTreeNode;AColumn:Integer):TWordWrapSize;
Begin
  With Node Do
  Begin
    Result.Left:=GetPositionX+GetIndent+GetCheckBoxWidth+GetStateImageWidth+GetImageWidth+TextSpace+FocusSpace;
    Result.Right:=GetDrawRect.Right-TextSpace-FocusSpace;
  End;
  If (Result.Right-Result.Left) And 1<>0 Then
    Dec(Result.Right);               
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeAt(X,Y:Integer):TDCTreeNode;
Begin
  With GetHitTest(X,Y) Do
    With GetDrawRect Do
      If (dhtOnItem In HitTests) And (Left<=X) And (X<Right) Then
        Result:=Node
      Else
        Result:=Nil;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetNodeAtCursor:TDCTreeNode;
Begin
  With GetCursorPos Do
    Result:=GetNodeAt(X,Y);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetPageSize:TSize;
Begin
  With GetDrawRect Do
  Begin
    Result.cX:=Right-Left;
    Result.cY:=Bottom-Top;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetPrintWidth:Integer;
Var
  NextWidth:Integer;
  NextNode:TDCTreeNode;
  OldFont:TFont;
Begin
  Result:=0;
  OldFont:=Nil;
  NextNode:=FRootNode.GetFirstChild;
  While NextNode<>Nil Do
  Begin
    If NextNode.ParentFont Then
    Begin
      Exclude(NextNode.FNodeState,nsWidthCalculated);
      OldFont:=NextNode.FFont;
      NextNode.FFont:=FPrintOptions.PrintFont;
    End;
    NextWidth:=NextNode.Width;
    If NextWidth>Result Then
      Result:=NextWidth;
    If NextNode.ParentFont Then
    Begin
      NextNode.FFont:=OldFont;
      Exclude(NextNode.FNodeState,nsWidthCalculated);
    End;
    NextNode:=NextNode.GetNext;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetRealPageSize:TSize;
Var
  Style:DWord;
Begin
  Result:=GetPageSize;
  Style:=GetWindowLong(Handle,GWL_STYLE);
  If Style And WS_HSCROLL<>0 Then
    Inc(Result.cY,GetSystemMetrics(SM_CYHSCROLL));
  If Style And WS_VSCROLL<>0 Then
    Inc(Result.cX,GetSystemMetrics(SM_CXVSCROLL));
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetScrollPos(fnBar:Integer;IsTrack:Boolean):Integer;
Var
  ScrollInfo:TScrollInfo;
Begin
  FillChar(ScrollInfo,SizeOf(ScrollInfo),0);
  ScrollInfo.cbSize:=SizeOf(ScrollInfo);
  If IsTrack Then
    ScrollInfo.fMask:=SIF_TRACKPOS
  Else
    ScrollInfo.fMask:=SIF_POS;
  {$IFDEF D4}
  If FAllowFlatScrollBars Then
    FlatSB_GetScrollInfo(Handle,fnBar,ScrollInfo)
  Else
  {$ENDIF}
    GetScrollInfo(Handle,fnBar,ScrollInfo);
  If IsTrack Then
    Result:=ScrollInfo.nTrackPos
  Else
    Result:=ScrollInfo.nPos;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetScrollRect(DelatX,DeltaY:Integer):TRect;
Begin
  Result:=GetDrawRect;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetSelected:TDCTreeNode;
Begin
  Result:=FFocused;
  If FFocused=Nil Then
    Result:=FNewFocused;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetSelectedColor(Node:TDCTreeNode;DefaultColor:TColor):TColor;
Begin
  If (Node<>Nil) And RowSelect And (FRowSelectType=rtFull) And (IsFocused Or Not HideSelection) And
     (Node.Selected Or ((Node=FDropTarget) And (DropTargetKind=tkStandard))) Then
    If IsFocused Then
      Result:=ActiveSelectedColor
    Else
      Result:=InactiveSelectedColor
  Else
    Result:=DefaultColor;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetSelectedCount:Integer;
Begin
  Result:=FSelectedItems.Count;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetSelectedItems(Index:Integer):TDCTreeNode;
Begin
  Result:=FSelectedItems[Index]
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetTextForEditor(Node:TDCTreeNode):String;
Begin
  Result:=Node.Text;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetTopItemAbsPt:TPoint;
Begin
  If FTopItem<>Nil Then
  Begin
    Result.X:=FOffsetX;
    Result.Y:=FTopItem.GetAbsolutePointY;
  End
  Else
    Result:=Point(0,0);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.GetVisibleItem(Index:Integer):TDCTreeNode;
Begin
  Result:=FNodes.GetVisibleItem(Index);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.HideDragImage;
Begin
  If FShowDragImage=0 Then
    If FDragObject<>Nil Then
      FDragObject.HideDragImage
    Else
      If GetDragImages<>Nil Then
        GetDragImages.HideDragImage;
  Inc(FShowDragImage);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.HideToolTip;
Begin
  If FToolTip<>Nil Then
    TDCTreeToolTip(FToolTip).TreeNode:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.HighlightNode;
Var
  Action:TRightClickAction;
Begin
  FHighLightPos:=GetCursorPos;
  With FHighLightPos Do
    FHighlightNode:=FNodes.GetHitTest(X,Y).Node;
  If FHighlightNode=Nil Then
    Exit;
  Action:=raSelect;
  DoRightClickNode(FHighlightNode,Action);
  If FHighlightNode=Nil Then
    Exit;
  If Action=raMakeSelected Then
    Selected:=FHighlightNode;
  If (FHighlightNode.Selected) Or (FHighlightNode=Selected) Or (Action=raNothing) Then
    FHighlightNode:=Nil
  Else
  Begin
    DeselectPrevious(Nil);
    If FHighlightNode<>Nil Then
    Begin
      FHighlightNode.InternalSetSelected(True);
      If Selected<>Nil Then
        Selected.Selected:=False;
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.InternalDrawNode(Node:TDCTreeNode;
                                             Const DispInfo:TDCNodeDispInfo;
                                             Const ARect:TRect);
  Function IsDraw(NodePart:TNodePart):Boolean;
  Begin
    With DispInfo[NodePart] Do
      Result:=(((ARect.Left<=Left) And (Left<ARect.Right)) Or
               ((Left<=ARect.Left) And (ARect.Left<Right))) And
              (Left<Right);
  End;
Var
  ALeft:Integer;
Begin
  If IsDraw(npLines) Then
    DrawNodeLines(Node,DispInfo[npLines]);
  If IsDraw(npButton) Then
    DrawNodeButton(Node,DispInfo[npButton]);
  If IsDraw(npCheckBox) Then
    Node.DrawCheckBox(DispInfo[npCheckBox]);
  If IsDraw(npStateImage) Then
    Node.DrawStateImage(DispInfo[npStateImage]);
  If IsDraw(npImage) Then
    Node.DrawImage(DispInfo[npImage]);
  If IsDraw(npText) Then
    DrawNodeText(Node,DispInfo[npText]);
  If DispInfo[npText].Right<ARect.Right Then
    With DispInfo[npText] Do
    Begin
      If Right>ARect.Left Then
        ALeft:=Right
      Else
        ALeft:=ARect.Left;
      DrawBackground(Node,Rect(ALeft,Top,ARect.Right,Bottom));
    End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.InvalidateRect(ARect:TRect);
Begin
  If FNodes.Locked Or HandleAllocated Then
    With GetClientRect Do
    Begin
      If (ARect.Right<Left) Or (ARect.Bottom<Top) Or
         (ARect.Left>Right) Or (ARect.Top>Bottom) Then
        Exit;
      If ARect.Left<Left Then
        ARect.Left:=Left;
      If ARect.Top<Top Then
        ARect.Top:=Top;
      If ARect.Right>Right Then
        ARect.Right:=Right;
      If ARect.Bottom>Bottom Then
        ARect.Bottom:=Bottom;
      Windows.InvalidateRect(Handle,@ARect,False);
    End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.InvalidateSelected;
Var
  I:Integer;
Begin
  For I:=0 To FSelectedItems.Count-1 Do
    NodeSelectionChanged(TDCTreeNode(FSelectedItems[I]));
  If FDropTarget<>Nil Then
    NodeSelectionChanged(FDropTarget);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsColumnWordWrap(AColumn:Integer):Boolean;
Begin
  Result:=IsWordWrap;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsDownAndUpEqual(X,Y:Integer):Boolean;
Begin
  Result:=GetHitTest(X,Y).Node=GetHitTest(FMouseDownX,FMouseDownY).Node;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsEditing:Boolean;
Begin
  Result:=FIsEditing;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsFocused:Boolean;
Begin
  Result:=Focused Or IsEditing
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsOnItem(X,Y:Integer):Boolean;
Begin
  Result:=dhtOnLabel In GetHitTest(X,Y).HitTests;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsSameAsPrev:Boolean;
Begin
  Result:=GetHitTest(FMouseDownX,FMouseDownY).Node=FPrevClickItem;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsRowSelect:Boolean;
Begin
  Result:=RowSelect;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsSortLocked:Boolean;
Begin
  Result:=Items.Locked Or (csDestroying In ComponentState);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsSorted:Boolean;
Begin
  Result:=((SortType In [stData,stBoth]) And Assigned(OnCompare)) Or
          (SortType In [stText,stBoth]);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.IsWordWrap:Boolean;
Begin
  Result:=MultiLineNodes Or WordWrap;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ImagesChanged(Sender:TObject);
Begin
  ResetCache;
  RecalcAll;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.KeyDown(Var Key:Word;Shift:TShiftState);

Var
  ASelected:TDCTreeNode;
  NewSelected:TDCTreeNode;
Begin
  If Not FNodes.Locked Then
  Begin
    If Key=VK_ESCAPE Then
      OnEscapeKey;
    if (not(ssCtrl in shift)) and (not(ssShift in shift)) then
        Begin
          ASelected:=Selected;
          FTopItemNewIndex:=-1;
          If ASelected<>Nil Then
            Case Key Of
              VK_HOME  : SetSelectedKey(GetFirstVisibleNode);
              VK_END   : SetSelectedKey(GetLastVisibleNode);
              VK_RIGHT : If ASelected.HasChildren Then
                           If ASelected.Expanded Then
                             SetSelectedKey(ASelected.GetFirstChild)
                           Else
                             ASelected.Expand(False);
              VK_LEFT  : If ASelected.HasChildren And ASelected.Expanded Then
                           ASelected.Collapse(False)
                         Else
                           If ASelected.Parent<>Nil Then
                             SetSelectedKey(ASelected.Parent);
              VK_UP    : SetSelectedKey(ASelected.GetPrevVisibleExternal);
              VK_DOWN  : SetSelectedKey(ASelected.GetNextVisibleExternal);
              VK_PRIOR : SetSelectedKey(PageUpItem(ASelected));
              VK_NEXT  : SetSelectedKey(PageDownItem(ASelected));

            End;
        End else
       if ((ssShift in shift)) then
       begin
   //   1 Shl Ord(ssShift):
        If FMultiSelect And (Selected<>Nil) Then
        Begin
          ASelected:=Selected;
          Case Key Of
            VK_UP,
            VK_DOWN  :Begin
                          If Key=VK_UP Then
                            NewSelected:=Selected.GetPrevVisibleSimple
                          Else
                            NewSelected:=Selected.GetNextVisibleSimple;
                          If NewSelected<>Nil Then
                          Begin
                            DeselectPrevious(FShiftSelectNode);
                            ProcessShiftSelect(NewSelected);
                          End;
                        End;
            VK_PRIOR :Begin
                        DeselectPrevious(FShiftSelectNode);
                        ASelected.MakeVisibleVert;
                        TopItem:=PageUpItem(ASelected);
                        NewSelected:=TopItem;
                        ProcessShiftSelect(NewSelected);
                      End;
            VK_NEXT  :Begin
                        DeselectPrevious(FShiftSelectNode);
                        ASelected.MakeVisibleVert;
                        TopItem:=ASelected;
                        NewSelected:=PageDownItem(ASelected);
                        ProcessShiftSelect(NewSelected);
                      End;
            VK_HOME,
            VK_END   :Begin
                        DeselectPrevious(FShiftSelectNode);
                        If Key=VK_HOME Then
                        Begin
                          FTopItemNewIndex:=0;
                          NewSelected:=FNodes.GetFirstNode
                        End
                        Else
                        Begin
                          FTopItemNewIndex:=FRootNode.FChildInfo.ExpandedCount-1;
                          NewSelected:=FNodes.GetLastNode;
                        End;
                        TopItem:=NewSelected;
                        ProcessShiftSelect(NewSelected);
                      End;
          End;
      end else
       if ((ssCtrl in shift)) then
        Case Key Of
          VK_MULTIPLY : FullExpand;
          VK_HOME     : Scroll(smToLeft);
          VK_END      : Scroll(smToRight);
          VK_RIGHT    : Scroll(smLineRight);
          VK_LEFT     : Scroll(smLineLeft);
          VK_UP       : Scroll(smLineUp);
          VK_DOWN     : Scroll(smLineDown);
          VK_PRIOR    : Scroll(smPageUp);
          VK_NEXT     : Scroll(smPageDown);
        End;

    End;
  End;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.KeyPress(Var Key:Char);
Var
  ASelected:TDCTreeNode;
Begin
  If Not FIsEditing And Not FNodes.Locked Then
  Begin
    ASelected:=Selected;
    If ASelected<>Nil Then
      Case Key Of
        ' ' : If ASelected.NodeType<>ntNone Then
              Begin
                ASelected.SwitchToNextState;
                DoCheckClick(ASelected);
              End
              Else
                ProcessQuickSearch(' ');  
        '+' : ASelected.Expand(False);
        '-' : ASelected.Collapse(False);
        '*' : ASelected.Expand(True);
        '.'..#255:
          ProcessQuickSearch(Key);
      End;
  End;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.KillEditTimer;
Begin
  KillTimer(EditTimerID,FEditTimerCreated);
  FPrevClickItem:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.KillScrollTimer;
Begin
  KillTimer(ScrollTimerID,FScrollTimerCreated);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.KillTimer(TimerID:Integer;Var Flag:Boolean);
Begin
  If Flag Then
  Begin
    Windows.KillTimer(Handle,TimerID);
    Flag:=False;
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.LoadFromFile(const FileName:String);
Var
  Stream:TStream;
Begin
  Stream:=TFileStream.Create(FileName,fmOpenRead Or fmShareDenyWrite);
  Try
    LoadFromStream(Stream);
  Finally
    Stream.Free;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.LoadFromStream(Stream:TStream);
Begin
  Items.Clear;
  ReadData(Stream);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.LockSelectionChanged;
Begin
  Inc(FSelectionChangedLock);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MakeEditNodeVisible(Node:TDCTreeNode);
Begin
  Node.MakeVisible;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MouseMove(Shift:TShiftState;X,Y:Integer);
Begin
  UnHighlightNode;
  UpdateHotTrack;
  UpdateToolTip;
  If (Abs(FMouseDownX-X)>=DragHorzSpace) Or (Abs(FMouseDownY-Y)>=DragVertSpace) Then
  Begin
    If FBeginMouseSelect Then
      MouseSelectProcess
    Else
      If DragMode=dmAutomatic Then
      Begin
        If Not FDragged Then
        Begin
          If FMouseButtonPressed And (FDragNode<>Nil)  Then
          Begin
            FMouseDownX:=MaxInt;//To prevent enter in edit mode
            FMouseDownY:=MaxInt;
            BeginDrag(True);
          End;  
        End
      End;
  End;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MouseSelectBegin(X,Y:Integer);
Var
  Pt:TPoint;
Begin
  KillEditTimer;
  FBeginMouseSelect:=True;
  Pt:=GetTopItemAbsPt;
  FSelectX:=X+Pt.X;
  FSelectY:=Y+Pt.Y;
  FOldSelectX:=X;
  FOldSelectY:=Y;
  FSelectFrameCleared:=True;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MouseSelectCancel;
Begin
  If FBeginMouseSelect Then
  Begin
    If Not FSelectFrameCleared Then
      PaintSelectFrame(FOldSelectX,FOldSelectY);
    FBeginMouseSelect:=False;
  End;
  KillScrollTimer;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MouseSelectProcess;
Var
  NewSelected:TList;
  Pt:TPoint;
  NodePt:TPoint;
Begin
  Pt:=GetCursorPos;
  If FAutoScroll And Not PtInRect(GetDrawRect,Pt) Then
    SetTimer(ScrollTimerID,ScrollDelay,FScrollTimerCreated);
  With GetClientRect Do
  Begin
    If Pt.X<Left Then
      Pt.X:=Left;
    If Pt.X>Right Then
      Pt.X:=Right;
    If Pt.Y<Top Then
      Pt.Y:=Top;
    If Pt.Y>Bottom Then
      Pt.Y:=Bottom;
  End;    
  NewSelected:=TList.Create;
  Try
    NodePt:=GetTopItemAbsPt;
    Inc(Pt.X,NodePt.X);
    Inc(Pt.Y,NodePt.Y);
    If (FOldSelectX=Pt.X) And (FOldSelectY=Pt.Y) And Not FSelectFrameCleared Then
      Exit;
    GetItemsInAbsRect(NewSelected,NormalizeRect(Rect(FSelectX,FSelectY,Pt.X,Pt.Y)));
    If Not FSelectFrameCleared Then
      PaintSelectFrame(FOldSelectX,FOldSelectY);
    FOldSelectX:=Pt.X;
    FOldSelectY:=Pt.Y;
    SelectNewList(FSelectedItems,NewSelected);
  Finally
    NewSelected.Free;
  End;
  If FSelectFrameCleared Then
    PaintSelectFrame(FOldSelectX,FOldSelectY);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MouseSelectUpdate(Node:TDCTreeNode);
Var
  PosY:Integer;
Begin
  If Not FBeginMouseSelect Then
    Exit;
  PosY:=Node.GetAbsolutePointY;
  If PosY<FSelectY Then
    Inc(FSelectY,Node.GetHeight);
  If PosY<FSelectY Then
    Inc(FOldSelectY,Node.GetHeight);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MouseUp(Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
Begin
  DoUnHighlightNode;
  FMouseButtonPressed:=False;
  Inherited;
  If FBeginMouseSelect Then
    MouseSelectCancel
  Else
    If (Button=mbLeft) And (Shift=[]) And (FDragNode<>Nil) And Not FDragged Then
    Begin
      If Not FDisableEdit And IsOnItem(X,Y) And IsSameAsPrev And IsDownAndUpEqual(X,Y) Then
        TryEditNode
      Else
        KillEditTimer
    End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.MultiSelectChanged;
Begin
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.NodeHeight(Node:TDCTreeNode; AColumn : integer):Integer;
Begin
  Canvas.Font:=Node.InternalFont;
  Result:=(GetEditorHeight(Node,Node.Text,AColumn)+1) And Not 1+FocusSpace*2;
  If FImages<>Nil Then
    Result:=Max(Result,(TImageList(FImages).Height+1) And Not 1);
  If Result<MinHeight Then
    Result:=MinHeight;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.NodeSelectionChanged(Node:TDCTreeNode);
Begin
  Node.Invalidate([npText]);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.NodeWidth(Node:TDCTreeNode;AColumn:Integer):Integer;
Begin
  Canvas.Font:=Node.InternalFont;
  Result:=(GetEditorWidth(Node,Node.Text,AColumn)+1) And Not 1+FocusSpace*2;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.NormalizeRect(const ARect:TRect):TRect;
Begin
  If ARect.Left>ARect.Right Then
  Begin
    Result.Left:=ARect.Right;
    Result.Right:=ARect.Left
  End
  Else
  Begin
    Result.Left:=ARect.Left;
    Result.Right:=ARect.Right
  End;
  If ARect.Top>ARect.Bottom Then
  Begin
    Result.Top:=ARect.Bottom;
    Result.Bottom:=ARect.Top
  End
  Else
  Begin
    Result.Top:=ARect.Top;
    Result.Bottom:=ARect.Bottom
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.Notification(Component:TComponent;Operation:TOperation);
Begin
  Inherited;
  If (Component=FImages) And (Operation=opRemove) Then
    Images:=Nil;
  If (Component=FStateImages) And (Operation=opRemove) Then
    StateImages:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.OnColorChanged;
Var
  Node:TDCTreeNode;
Begin
  Node:=FRootNode;
  While Node<>Nil Do
  Begin
    If nsParentColor In Node.FNodeState Then
      Node.FColor:=Color;
    Node:=Node.GetNext;
  End;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.OnEscapeKey;
Begin
  MouseSelectCancel;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.OnFontChanged;
Begin
  ResetTextCache;
  If FPrintOptions.FParentHeaderFont Then
    FPrintOptions.FHeaderFont.Assign(Font);
  SetIndentInternal(FIndent);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.OnTimer(TimerID:Integer);
Begin
  Case TimerID Of
    SelectionTimerID:
      SelectionChanged;
    ScrollTimerID:
      ProcessScrollTimer;
    ExpandTimerID:
      Begin
        KillTimer(ExpandTimerID,FExpandTimerCreated);
        If FExternalDrag And (DropTarget=FDragExpandNode) Then
          DropTarget.Expand(False);
      End;
    EditTimerID:
      FFocused.EditText;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.PageDownItem(Node:TDCTreeNode):TDCTreeNode;
Var
  NextNode:TDCTreeNode;
  TreeViewHeight:Integer;
  ANode:TDCTreeNode;
Begin
  With GetDrawRect Do
    TreeViewHeight:=Bottom-Top-Node.GetHeight;
  NextNode:=Node;
  While True Do
  Begin
    ANode:=NextNode.GetNextVisibleExternal;
    If ANode=Nil Then
    Begin
      Result:=NextNode;
      Exit;
    End;
    Dec(TreeViewHeight,ANode.GetHeight);
    If TreeViewHeight<0 Then
    Begin
      If Node=NextNode Then
        Result:=ANode
      Else
        Result:=NextNode;
      Exit;
    End;
    NextNode:=ANode;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.PageUpItem(Node:TDCTreeNode):TDCTreeNode;
Var
  NextNode:TDCTreeNode;
  TreeViewHeight:Integer;
  ANode:TDCTreeNode;
Begin
  With GetDrawRect Do
    TreeViewHeight:=Bottom-Top-Node.GetHeight;
  NextNode:=Node;
  While True Do
  Begin
    ANode:=NextNode.GetPrevVisibleExternal;
    If ANode=Nil Then
    Begin
      Result:=NextNode;
      Exit;
    End;
    Dec(TreeViewHeight,ANode.GetHeight);
    If TreeViewHeight<0 Then
    Begin
      If Node=NextNode Then
        Result:=ANode
      Else
        Result:=NextNode;
      Exit;
    End;
    NextNode:=ANode;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.PaintSelectFrame(X,Y:Integer);
Var
  Pt:TPoint;
Begin
  Pt:=GetTopItemAbsPt;
  With FCanvas Do
  Begin
    Brush.Color:=clBlack;
    Font.Color:=clWhite;
    Windows.DrawFocusRect(Canvas.Handle,NormalizeRect(Rect(FSelectX-Pt.X,FSelectY-Pt.Y,X-Pt.X,Y-Pt.Y)));
  End;
  FSelectFrameCleared:=Not FSelectFrameCleared;
End;

{---------------------------------------------------------}

procedure TDCCustomTreeView.Popup(X,Y:Integer);
begin
  SizeablePopup(Self,Parent,X,Y{$IFNDEF D4},True{$ENDIF});
end;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.Print(ExpandAll:Boolean);

Var
  DispInfo:TDCNodeDispInfo;
  Pos:TPoint;
  RightMargin:Integer;
  PageWidth:Integer;
  PageHeight:Integer;
  PagesTops:TList;
  LeftMargin,
  TopMargin:Integer;
  FooterHeight:Integer;
  HeaderHeight:Integer;
  XPages:Integer;
  YPages:Integer;
  Pages:Integer;
  PrintProgress:TMemoPrintProgress;
  PrinterPageWidth:Integer;
  PrinterPageHeight:Integer;

  Procedure _CalcBaseInfo;
  Var
    PX,PY,CX,CY:Integer;
    DevOffsetX,DevOffsetY:Integer;
    tm:TTextMetric;
  Begin
    PX := GetDeviceCaps(Printer.Handle,LOGPIXELSX);
    PY := GetDeviceCaps(Printer.Handle,LOGPIXELSY);
    CX := GetDeviceCaps(Canvas.Handle,LOGPIXELSX);
    CY := GetDeviceCaps(Canvas.Handle,LOGPIXELSY);

    DevOffsetX:=GetDeviceCaps(Printer.Handle,PHYSICALOFFSETX);
    DevOffsetY:=GetDeviceCaps(Printer.Handle,PHYSICALOFFSETY);
    LeftMargin:=(GetDeviceCaps(Printer.Handle,PHYSICALWIDTH)-Printer.PageWidth) Div 2+
                 DevOffsetX;
    TopMargin:=(GetDeviceCaps(Printer.Handle,PHYSICALHEIGHT)-Printer.PageHeight) Div 2+
                DevOffsetY;
    PrinterPageWidth:=Printer.PageWidth-DevOffsetX*2;
    PrinterPageHeight:=Printer.PageHeight-DevOffsetY*2;
    PageWidth:=(PrinterPageWidth*CX) Div PX;
    PageHeight:=(PrinterPageHeight*CY) Div PY;
    If poHeader In FPrintOptions.Options Then
    Begin
      Canvas.Font:=FPrintOptions.FHeaderFont;
      GetTextMetrics(Canvas.Handle,tm);
      HeaderHeight:=tm.tmHeight;
      Dec(PageHeight,HeaderHeight);
    End;
    If poFooter In FPrintOptions.Options Then
    Begin
      Canvas.Font:=FPrintOptions.FFooterFont;
      GetTextMetrics(Canvas.Handle,tm);
      Dec(PageHeight,tm.tmHeight*2);
    End;
  End;

  Procedure _CalcHeightInfo;
  Var
    NextNode:TDCTreeNode;
    RestHeight:Integer;
    NextHeight:Integer;
    OldFont:TFont;
  Begin
    RestHeight:=PageHeight;
    NextNode:=FRootNode.GetFirstChild;
    If NextNode<>Nil Then
      PagesTops.Add(NextNode);
    OldFont:=Nil;  
    While NextNode<>Nil Do
    Begin
      If NextNode.ParentFont Then
      Begin
        Exclude(NextNode.FNodeState,nsHeightCalculated);
        OldFont:=NextNode.FFont;
        NextNode.FFont:=FPrintOptions.PrintFont;
      End;  
      NextHeight:=NextNode.GetHeight;
      Dec(RestHeight,NextHeight);
      If RestHeight<0 Then
      Begin
        PagesTops.Add(NextNode);
        RestHeight:=PageHeight-NextHeight;
      End;
      If NextNode.ParentFont Then
      Begin
        NextNode.FFont:=OldFont;
        Exclude(NextNode.FNodeState,nsHeightCalculated);
      End;  
      If ExpandAll And NextNode.HasChildren Then
        DoExpandNode(NextNode);
      If ExpandAll Then
        NextNode:=NextNode.GetNext
      Else
        NextNode:=NextNode.GetNextVisibleSimple;
    End;
  End;

  Procedure _DrawNode(Node:TDCTreeNode);
  Begin
    InternalDrawNode(Node,DispInfo,Rect(0,0,PageWidth,PageHeight));
  End;

  Procedure _ProcessNode(StartNode,EndNode:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
    OldFont:TFont;
  Begin
    If StartNode=Nil Then
      Exit;
    NextNode:=StartNode;
    OldFont:=Nil;
    While NextNode<>EndNode Do
    Begin
      If NextNode.ParentFont Then
      Begin
        OldFont:=NextNode.FFont;
        NextNode.FFont:=FPrintOptions.PrintFont;
        Exclude(NextNode.FNodeState,nsWidthCalculated);
        Exclude(NextNode.FNodeState,nsHeightCalculated);
      End;
      Pos.X:=NextNode.GetPositionX;
      NextNode.GetNodeDispInfoByPos(Pos,DispInfo);
      _DrawNode(NextNode);
      With DispInfo[npLines] Do
        Inc(Pos.Y,Bottom-Top);
      If NextNode.ParentFont Then
      Begin
        NextNode.FFont:=OldFont;
        Exclude(NextNode.FNodeState,nsWidthCalculated);
        Exclude(NextNode.FNodeState,nsHeightCalculated);
      End;
      If ExpandAll Then
        NextNode:=NextNode.GetNext
      Else
        NextNode:=NextNode.GetNextVisibleSimple;
    End;
  End;

  Procedure Step;
  Begin
    If poShowProgress In FPrintOptions.Options Then
      PrintProgress.ProgressBar.StepIt;
    Application.ProcessMessages;
  End;

  Procedure _PrintPage(X,Y:Integer);
  Var
    StartNode,
    EndNode:TDCTreeNode;
    PageNo,PageNoLen:Integer;
    PageNoStr:String;
  Begin
    PageNo:=Y*XPages+X+1;
    If poShowProgress In FPrintOptions.Options then
      PrintProgress.lblProgress.Caption:=Format(SPrintingPage,[PageNo,IntToStr(Pages)]);
    FOffsetX:=X*PageWidth;
    Pos.Y:=0;
    If poHeader In FPrintOptions.Options Then
    Begin
      Printer.Canvas.Font:=FPrintOptions.FHeaderFont;
      Printer.Canvas.TextOut(LeftMargin,TopMargin,FPrintOptions.FHeader);
      PageNoStr:=IntToStr(PageNo)+'/'+IntToStr(Pages);
      PageNoLen:=Printer.Canvas.TextWidth(PageNoStr);
      Printer.Canvas.TextOut(PrinterPageWidth-PageNoLen,TopMargin,PageNoStr);
    End;
    If PagesTops.Count=0 Then
      StartNode:=Nil
    Else
      StartNode:=PagesTops[Y];
    If PagesTops.Count<=Y+1 Then
      EndNode:=Nil
    Else
      EndNode:=PagesTops[Y+1];
    Canvas.Brush.Color:=Color;
    Canvas.FillRect(Rect(0,Pos.Y,PageWidth,PageHeight));
    _ProcessNode(StartNode,EndNode);
    If poFooter In FPrintOptions.Options Then
    Begin
      Printer.Canvas.Font:=FPrintOptions.FFooterFont;
      Printer.Canvas.TextOut(LeftMargin,PrinterPageHeight+FooterHeight Div 2,FPrintOptions.FFooter);
    End;
  End;

  Procedure _PrintPages;
  Var
    I,J:Integer;
    MetaFile:TMetaFile;
    MetaFileCanvas:TMetaFileCanvas;
    ClipRect:TRect;
    Rgn:THandle;
    tm:TTextMetric;
    OutTopMargin:Integer;
  Begin
    FSavedOffsetX:=FOffsetX;
    XPages:=(RightMargin+PageWidth-1) Div PageWidth;
    YPages:=PagesTops.Count;
    Pages:=XPages*YPages;
    If poShowProgress In FPrintOptions.Options Then
      PrintProgress.ProgressBar.Max:=Pages;
    Printer.Title:=FPrintOptions.Title;
    MetaFile:=TMetaFile.Create;
    MetaFile.Width:=PageWidth;
    MetaFile.Height:=PageHeight;
    OutTopMargin:=TopMargin;
    Try
      Printer.BeginDoc;
      SelectClipRgn(Printer.Canvas.Handle,0);
      ClipRect:=Rect(LeftMargin,TopMargin,PrinterPageWidth,PrinterPageHeight);
      Rgn:=CreateRectRgnIndirect(ClipRect);
      SelectClipRgn(Printer.Canvas.Handle,Rgn);
      If poHeader In FPrintOptions.Options Then
      Begin
        Printer.Canvas.Font:=FPrintOptions.FHeaderFont;
        GetTextMetrics(Printer.Canvas.Handle,tm);
        Dec(PrinterPageWidth,tm.tmHeight);
        Inc(OutTopMargin,tm.tmHeight);
      End;
      If poFooter In FPrintOptions.Options Then
      Begin
        Printer.Canvas.Font:=FPrintOptions.FFooterFont;
        GetTextMetrics(Printer.Canvas.Handle,tm);
        FooterHeight:=tm.tmHeight*2;
        Dec(PrinterPageHeight,FooterHeight);
      End;
      Try
        For I:=0 To YPages-1 Do
          For J:=0 To XPages-1 Do
          Begin
            If poShowProgress in FPrintOptions.Options Then
              If PrintProgress.ModalResult=mrCancel Then
                Exit;
            If (I<>0) Or (J<>0) Then
              Printer.NewPage;
            MetaFileCanvas:=TMetaFileCanvas.Create(MetaFile,0);
            Canvas.Handle:=MetaFileCanvas.Handle;
            Try
              _PrintPage(J,I);
            Finally
              Canvas.Handle:=0;
              MetaFileCanvas.Free;
              Step;
            End;
            ClipRect:=Rect(LeftMargin,OutTopMargin,PrinterPageWidth,PrinterPageHeight);
            Printer.Canvas.StretchDraw(ClipRect,MetaFile);
//            MetaFile.SaveToFile('C:\'+IntToStr(J)+IntToStr(I));
          End;
      Finally
        DeleteObject(Rgn);
        Printer.EndDoc;
      End;
    Finally
      MetaFile.Free;
      FOffsetX:=FSavedOffsetX;
    End;
  End;

  Procedure _CreateProgressDialog;
  Begin
    If poShowProgress In FPrintOptions.Options Then
    Begin
      PrintProgress:=TMemoPrintProgress.Create(Application);
      With PrintProgress Do
      Begin
        Show;
        Application.ProcessMessages;
        lblPrinter.Caption:=Format(SPrintingOnPrinter,[Printer.Printers[Printer.PrinterIndex]]);
        lblFileName.Caption:=FPrintOptions.Header;
        lblProgress.Caption:=Format(SPrintingPage,[1,SMultiDot]);
        ProgressBar.Position:=0;
        Application.ProcessMessages;
      End;
    End
    Else
      PrintProgress:=Nil;
  End;

  Procedure _CalcRightMargin;
  Begin
    If ExpandAll Then
      RightMargin:=GetPrintWidth
    Else
      RightMargin:=GetMaxWidth;
  End;
Var
  CanvasFlags:TDCCanvasFlags;
Begin
  If Items.Locked Then
    RecalcAll;
  FPrinting:=True;
  CanvasFlags:=Canvas.Flags;
  Canvas.Flags:=[cfNoTextFill];
  Try
    PagesTops:=TList.Create;
    Try
      _CreateProgressDialog;
      Try
        _CalcBaseInfo;
        _CalcRightMargin;
        _CalcHeightInfo;
        _PrintPages;
      Finally
        PrintProgress.Free;
      End;
    Finally
      PagesTops.Free;
    End;
  Finally
    Canvas.Flags:=CanvasFlags;
    FPrinting:=False;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.PrintWithDialog(ExpandAll:Boolean);
Var
  SetupDialog:TfrmTreePrintSetup;
  Options:TDCPrintOptions;
Begin
  SetupDialog:=TfrmTreePrintSetup.Create(Self);
  Try
    SetupDialog.chkShowPrintProgress.Checked:=poShowProgress In FPrintOptions.Options;
    SetupDialog.chkHeader.Checked:=poHeader In FPrintOptions.Options;
    SetupDialog.chkFooter.Checked:=poFooter In FPrintOptions.Options;
    SetupDialog.lblFileName.Caption:=FPrintOptions.Header;
    SetupDialog.ShowModal;
    If SetupDialog.ModalResult=mrOk Then
    Begin
      If SetupDialog.chkShowPrintProgress.Checked Then
        Options:=[poShowProgress];
      If SetupDialog.chkHeader.Checked Then
        Include(Options,poHeader);
      If SetupDialog.chkFooter.Checked Then
        Include(Options,poFooter);
      FPrintOptions.Options:=Options;
      Print(ExpandAll);
    End;
  Finally
    SetupDialog.Free;
  End;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ProcessCancelDrag;
Begin
  EndDrag(False);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ProcessHScroll(NewOffset:Integer);
Var
  OldOffset:Integer;
  PageSize:TSize;
Begin
  If NewOffset<0 Then
    NewOffset:=0;
  PageSize:=GetPageSize;
  If NewOffset+PageSize.cX>FScrollHorzMaxWidth Then
  Begin
    NewOffset:=FScrollHorzMaxWidth-PageSize.cX;
    If NewOffset<0 Then
      NewOffset:=0;
  End;
  OldOffset:=FOffsetX;
  If OldOffset<>NewOffset Then
  Begin
    BeforeScrollUpdate;
    FOffsetX:=NewOffset;
    ScrollAbs(OldOffset-NewOffset,0);
    SetScrollPos(SB_HORZ,NewOffset);
    Update;
    AfterScrollUpdate;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ProcessQuickSearch(AChar:Char);
Var
  Ticks:Integer;
  NewSearchText:String;
  ASelected:TDCTreeNode;
  Function ApplySearch(Item:TDCTreeNode):Boolean;
  Var
    AText:String;
    I:Integer;
  Begin
    Result:=False;
    AText:=Item.Text;
    If Length(AText)<Length(NewSearchText) Then
      Exit;
    For I:=1 To Length(NewSearchText) Do
      If UpCase(AText[I])<>UpCase(NewSearchText[I]) Then
        Exit;
    Result:=True;
  End;
  Function ProcessSearch(StartItem,StopItem:TDCTreeNode):Boolean;
  Begin
    While StartItem<>StopItem Do
    Begin
      If ApplySearch(StartItem) Then
      Begin
        FQuickSearchText:=NewSearchText;
        Selected:=StartItem;
        Result:=True;
        Exit;
      End;
      StartItem:=StartItem.GetNextVisibleSimple;
    End;
    Result:=False;
  End;

Begin
  If FRootNode.Count=0 Then
    Exit;
  Ticks:=GetTickCount;
  If Ticks-FQuickSearchTicks>QuickSearchTickCount Then
    NewSearchText:=AChar
  Else
    NewSearchText:=FQuickSearchText+AChar;
  FQuickSearchTicks:=Ticks;
  ASelected:=Selected;
  If Not ProcessSearch(ASelected,Nil) Then
    ProcessSearch(FNodes.GetFirstNode,ASelected);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ProcessScrollTimer;
Var
  Pt:TPoint;
  Delta:Integer;
  DeltaX,DeltaY:Integer;
  ARect:TRect;
  FSavedTopItem:TDCTreeNode;
  FSavedOffsetX:Integer;
Begin
  Pt:=GetCursorPos;
  Delta:=0;
  With GetDrawRect Do
    If FBeginMouseSelect Then
    Begin
      If Pt.X<Left Then
      Begin
        Scroll(smLineLeft);
        Delta:=Left-Pt.X;
      End;
      If Pt.X>Right Then
      Begin
        Scroll(smLineRight);
        Delta:=Pt.X-Right;
      End;
      If Pt.Y<Top Then
      Begin
        Scroll(smLineUp);
        Delta:=Top-Pt.Y;
      End;
      If Pt.Y>Bottom Then
      Begin
        Scroll(smLineDown);
        Delta:=Pt.Y-Bottom;
      End;
      If Not FAutoScroll And (Delta=0) Then
        KillScrollTimer
      Else
      Begin
        Delta:=MaxDelta-Delta;
        If Delta<1 Then
          Delta:=1;
        SetTimer(ScrollTimerID,Delta,FScrollTimerCreated);
      End;
    End;
  If (DropTarget<>Nil) Or FExternalDrag Then
  Begin
    DeltaX:=DragScrollSpace;
    DeltaY:=DragScrollSpace;
    If Not PtInRect(ClientRect,Pt) Then
    Begin
      KillScrollTimer;
      Exit;
    End;
    With ClientRect Do
    Begin
      If Right-Left<DeltaX*2 Then
       DeltaX:=(Right-Left) Div 2;
      If Bottom-Top<DeltaY*2 Then
       DeltaY:=(Bottom-Top) Div 2;
      FSavedTopItem:=FTopItem;
      FSavedOffsetX:=FOffsetX;
      If Pt.X<Left+DeltaX Then
      Begin
        Scroll(smLineLeft);
        Delta:=1;
      End;
      If Pt.X>Right-DeltaX Then
      Begin
        Scroll(smLineRight);
        Delta:=1;
      End;
      If Pt.Y<Top+DeltaY Then
      Begin
        Scroll(smLineUp);
        Delta:=1;
      End;
      If Pt.Y>Bottom-DeltaY Then
      Begin
        Scroll(smLineDown);
        Delta:=1;
      End;
    End;
    If (Not PtInRect(ClientRect,Pt)) Or ((FSavedTopItem=FTopItem) And (FSavedOffsetX=FOffsetX)) Then
      Delta:=0;
    If Not FAutoScroll Or (Delta=0) Then
      KillScrollTimer
    Else
    Begin
      ARect:=ClientRect;
      InflateRect(ARect,-5,-5);
      If PtInRect(ARect,Pt) Then
        Delta:=ScrollDragDelaySlow
      Else
        Delta:=ScrollDragDelayFast;
      SetTimer(ScrollTimerID,Delta,FScrollTimerCreated);
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ProcessShiftSelect(Node:TDCTreeNode);
Var
  StartNode,
  EndNode:TDCTreeNode;
  IsForward:Boolean;
Begin
  If FShiftSelectNode=Nil Then
    FShiftSelectNode:=FFocused;
  Node.Focused:=True;
  IsForward:=CompareVisiblePos(FShiftSelectNode,Node)<0;
  If IsForward Then
  Begin
    StartNode:=FShiftSelectNode;
    EndNode:=Node;
  End
  Else
  Begin
    StartNode:=Node;
    EndNode:=FShiftSelectNode;
  End;
  If IsForward Then
    Node:=EndNode
  Else
    Node:=StartNode;
  Repeat
    Node.Selected:=True;
    If IsForward Then
    Begin
      If Node=StartNode Then
        Break;
      Node:=Node.GetPrevVisibleSimple
    End
    Else
    Begin
      If Node=EndNode Then
        Break;
      Node:=Node.GetNextVisibleSimple;
    End;
  Until False;
  If SelectOnlySiblings Then
  Begin
    If IsForward Then
      Node:=StartNode
    Else
      Node:=EndNode;
    While True Do
    Begin
      If IsForward Then
      Begin
        If Node.Selected Then
        Begin
          FShiftSelectNode:=Node;
          Break;
        End;
        If Node=EndNode Then
          Break;
        Node:=Node.GetNextVisibleSimple
      End
      Else
      Begin
        If Node.Selected Then
        Begin
          FShiftSelectNode:=Node;
          Break;
        End;
        If Node=StartNode Then
          Break;
        Node:=Node.GetPrevVisibleSimple;
      End;  
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ReadCheckBoxes(Reader:TReader);
Begin
  If Reader.ReadBoolean Then
    CheckBoxesType:=ctAll
  Else
    CheckBoxesType:=ctNone;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ReadData(Stream:TStream);

  Function _ReadPropNum:Byte;
  Begin
    Stream.Read(Result,SizeOf(Result));
  End;

  Function _ReadSet(PropInfo:PPropInfo):Integer;
  Var
    BaseType:PTypeInfo;
    EnumName:String;
    EnumValue:Integer;
  Begin
    If PropInfo<>Nil Then
      {$IFDEF D3}
      BaseType:=GetTypeData(PropInfo.PropType^)^.CompType^
      {$ELSE}
      BaseType:=GetTypeData(PropInfo.PropType^)^.CompType
      {$ENDIF}
    Else
      baseType:=Nil;
    Result:=0;
    While True Do
    Begin
      EnumName:=ReadStrFromStream(Stream);
      If EnumName='' Then
        Break;
      If PropInfo<>Nil Then
      Begin
        EnumValue:=GetEnumValue(BaseType,EnumName);
        If EnumValue>=0 Then
          Result:=Result Or (1 Shl EnumValue);
      End;
    End;
  End;

  Procedure _ReadOrdProp(Instance:TObject;PropInfo:PPropInfo;Kind:TTypeKind);
  Var
    Value:Integer;
    BoolVal:Boolean;
    EnumName:String;
  Begin
    If Kind=tkBoolean Then
    Begin
      Stream.Read(BoolVal,SizeOf(BoolVal));
      Value:=Integer(BoolVal);
    End
    Else
      Case Kind Of
        tkInteger     : Stream.Read(Value,SizeOf(Value));
        tkSet         : Value:=_ReadSet(PropInfo);
        tkEnumeration :
        Begin
          Value:=0;
          EnumName:=ReadStrFromStream(Stream);
          If PropInfo<>Nil Then
            Value:=GetEnumValue(PropInfo.PropType^,EnumName);
        End;
      End;
    If PropInfo<>Nil Then
      SetOrdProp(Instance,PropInfo,Value);
  End;

  Procedure _ReadStrProp(Instance:TObject;PropInfo:PPropInfo);
  Var
    Value:String;
  Begin
    Value:=ReadStrFromStream(Stream);
    If PropInfo<>Nil Then
      SetStrProp(Instance,PropInfo,Value)
  End;

  Procedure _ReadProperty(Instance:TObject;PropInfo:PPropInfo);forward;

  Procedure _ReadObjectProp(Instance:TObject;PropInfo:PPropInfo);
  Var
    Obj:TObject;
    PropName:String;
  Begin
    If PropInfo<>Nil Then
      Obj:=TObject(GetOrdProp(Instance,PropInfo))
    Else
      Obj:=Nil;
    While True Do
    Begin
      PropName:=ReadStrFromStream(Stream);
      If PropName='' Then
        Break;
      If Obj<>Nil Then
        PropInfo:=GetPropInfo(Obj.ClassInfo,PropName)
      Else
        PropInfo:=Nil;
      _ReadProperty(Obj,PropInfo);
    End;
  End;

  Procedure _ReadProperty(Instance:TObject;PropInfo:PPropInfo);
  Var
    Kind:TTypeKind;
  Begin
    Stream.Read(Kind,SizeOf(Kind));
    If Kind=tkBoolean Then
      _ReadOrdProp(Instance,PropInfo,Kind)
    Else
      Case Kind Of
        tkInteger,tkEnumeration,
         tkSet     : _ReadOrdProp(Instance,PropInfo,Kind);
        tkString, tkUString, 
         tkLString : _ReadStrProp(Instance,PropInfo);
        tkClass    : _ReadObjectProp(Instance,PropInfo);
      Else
        If PropInfo<>Nil Then
          Error(SErrInvalidPropertyType);
      End;
  End;

  Procedure _ReadNode(const Node:TDCTreeNode);
  Var
    PropInfo:PPropInfo;
    ChildCount:Integer;
    PropNum:Byte;
    ClassName:String;
    I:Integer;
    NextNode:TDCTreeNode;
  Begin
    Stream.Read(ChildCount,SizeOf(ChildCount));
    For I:=0 To ChildCount-1 Do
    Begin
      ClassName:=ReadStrFromStream(Stream);
      If ClassName='' Then
        DefaultNodeClass:=FBaseNodeClass
      Else
        DefaultNodeClass:=TDCTreeNodeClass(FindClass(ClassName));
      NextNode:=Items.AddChild(Node,'');
      _ReadNode(NextNode);
      While True Do
      Begin
        PropNum:=_ReadPropNum;
        If PropNum=pnEndOfData Then
          Break;
        If PropNum>High(PropertyNames) Then
          PropInfo:=Nil
        Else
          PropInfo:=TypInfo.GetPropInfo(NextNode.ClassInfo,PropertyNames[PropNum]);
        _ReadProperty(NextNode,PropInfo);
      End;
      NextNode.ReadCustomData(Stream);
    End;
  End;
Var
  Version:Word;
Begin
  If Stream.Size=0 Then
    Exit;
  Stream.Read(Version,SizeOf(Version));
  FNodes.BeginUpdate;
  Try
    FNodes.Clear;
    _ReadNode(Nil);
  Finally
    FNodes.EndUpdate;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ReadDrawData(Sream:TStream);
Begin
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ReadSelectDelay(Reader:TReader);
Begin
  FChangeDelay:=Reader.ReadInteger;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.RecalcAll;
Begin
  RecalcHorzInfo(False);
  RecalcExpandedCount(FRootNode);
  UpdateScroll(True,True);
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.RecalcExpandedCount(Node:TDCTreeNode):Integer;
Var
  NextNode:TDCTreeNode;
Begin
  Result:=0;
  NextNode:=Node.GetFirstChild;
  While NextNode<>Nil Do
  Begin
    If NextNode.Expanded Then
      Inc(Result,RecalcExpandedCount(NextNode));
    Inc(Result);
    NextNode:=NextNode.GetNextSibling;
  End;
  Node.FChildInfo.ExpandedCount:=Result;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.RecalcHorzInfo(RecalcWidth:Boolean);
Begin
  If RecalcWidth Then
    RecalcLevel(FRootNode);
  FRootNode.CalcMaxWidthInfo;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.RemoveFromMultiSelect(Node:TDCTreeNode);
Begin
  If FShiftSelectNode=Node Then
  Begin
    If FSelectedItems.Count>1 Then
      If CompareVisiblePos(FShiftSelectNode,FFocused)<0 Then
        FShiftSelectNode:=FShiftSelectNode.GetNextVisibleSimple
      Else
        FShiftSelectNode:=FShiftSelectNode.GetPrevVisibleSimple
    Else
      FShiftSelectNode:=Nil;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.RemoveKeyboardHook;
Begin
  UnhookWindowsHookEx(FKeyboardHook);
  HookTreeView:=Nil;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.RemoveHotTrackNode;
Begin
  If FHotTrackNode<>Nil Then
  Begin
    FHotTrackNode.Invalidate([npText]);
    FHotTrackNode:=Nil;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ResetCache;
  Procedure _ResetCache(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
  Begin
    With Node Do
    Begin
      Exclude(FNodeState,nsHeightCalculated);
      Exclude(FNodeState,nsWidthCalculated);
    End;
    NextNode:=Node.GetFirstChild;
    While NextNode<>Nil Do
    Begin
      _ResetCache(NextNode);
      NextNode:=NextNode.GetNextSibling;
    End;
  End;
Begin
  _ResetCache(FRootNode);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ResetTextCache;
  Procedure _ResetTextCache(Node:TDCTreeNode);
  Var
    NextNode:TDCTreeNode;
  Begin
    With Node Do
      If nsParentFont In FNodeState Then
      Begin
        Exclude(FNodeState,nsHeightCalculated);
        Exclude(FNodeState,nsWidthCalculated);
      End;
    NextNode:=Node.GetFirstChild;
    While NextNode<>Nil Do
    Begin
      _ResetTextCache(NextNode);
      NextNode:=NextNode.GetNextSibling;
    End;
  End;
Begin
  _ResetTextCache(FRootNode);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SaveToFile(const FileName:String);
Var
  Stream:TStream;
Begin
  Stream:=TFileStream.Create(FileName,fmCreate);
  Try
    SaveToStream(Stream);
  Finally
    Stream.Free;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SaveToStream(Stream:TStream);
Begin
  WriteData(Stream);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.Scroll(ScrollMode:TDCScrollMode);
Var
  Message:TMessage;
Begin
  HideToolTip;
  With Message Do
  Begin
    Case ScrollMode Of
      smLineLeft  : Begin
                      Msg:=WM_HSCROLL;
                      wParamLo:=SB_LINELEFT;
                    End;
      smPageLeft  : Begin
                      Msg:=WM_HSCROLL;
                      wParamLo:=SB_PAGELEFT;
                    End;
      smToLeft    : Begin
                      Msg:=WM_HSCROLL;
                      wParamLo:=SB_TOP;
                    End;
      smLineUp    : Begin
                      Msg:=WM_VSCROLL;
                      wParamLo:=SB_LINELEFT;
                    End;
      smPageUp    : Begin
                      Msg:=WM_VSCROLL;
                      wParamLo:=SB_PAGELEFT;
                    End;
      smToTop     : Begin
                      Msg:=WM_VSCROLL;
                      wParamLo:=SB_TOP;
                    End;
      smLineRight : Begin
                      Msg:=WM_HSCROLL;
                      wParamLo:=SB_LINERIGHT;
                    End;
      smPageRight : Begin
                      Msg:=WM_HSCROLL;
                      wParamLo:=SB_PAGERIGHT;
                    End;
      smToRight   : Begin
                      Msg:=WM_HSCROLL;
                      wParamLo:=SB_BOTTOM;
                    End;
      smLineDown  : Begin
                      Msg:=WM_VSCROLL;
                      wParamLo:=SB_LINERIGHT;
                    End;
      smPageDown  : Begin
                      Msg:=WM_VSCROLL;
                      wParamLo:=SB_PAGERIGHT;
                    End;
      smToBottom  : Begin
                      Msg:=WM_VSCROLL;
                      wParamLo:=SB_BOTTOM;
                    End;
    End;
    If Msg=WM_HSCROLL Then
      WMHScroll(TWMScroll(Message))
    Else
      WMVScroll(TWMScroll(Message))
  End;
  UpdateToolTip;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ScrollAbs(DeltaX,DeltaY:Integer);
Var
  ARect:TRect;
  ClipRect:TRect;
  Rgn:THandle;
  Rgn2:THandle;
  ClientWidth,
  ClientHeight:Integer;
  ScrollRect:TRect;
Begin
  HideToolTip;
  Inc(FScrollXSum,DeltaX);
  Inc(FScrollYSum,DeltaY);
  ScrollRect:=GetScrollRect(DeltaX,DeltaY);
  With ScrollRect Do
  Begin
    ClientWidth:=Right-Left;
    ClientHeight:=Bottom-Top
  End;
  If (Abs(FScrollXSum)>ClientWidth) Or (Abs(FScrollYSum)>ClientHeight) Or (Abs(DeltaX)>ClientWidth) Or (Abs(DeltaY)>ClientHeight) Then
    Invalidate
  Else
  Begin
    HideDragImage;
    Try
      Rgn2:=CreateRectRgn(0,0,0,0);
      GetUpdateRgn(Handle,Rgn2,False);
      ExtSelectClipRgn(Canvas.Handle,Rgn2,RGN_DIFF);
      If Win32Platform<>VER_PLATFORM_WIN32_NT Then
      Begin
        Rgn:=CreateRectRgn(0,0,0,0);
        GetUpdateRgn(Handle,Rgn,False);
        ValidateRgn(Handle,Rgn);
        OffsetRgn(Rgn,DeltaX,DeltaY);
        InvalidateRgn(Handle,Rgn,False);
        DeleteObject(Rgn);
      End;
      ARect:=ScrollRect;
      ClipRect:=ScrollRect;
      Rgn:=CreateRectRgn(0,0,0,0);
      ScrollDC(FCanvas.Handle,DeltaX,DeltaY,ARect,ClipRect,Rgn,Nil);

      //invalidate invalid area
      CombineRgn(Rgn,Rgn,Rgn2,RGN_OR);
      DeleteObject(Rgn2);

      InvalidateRgn(Handle,Rgn,False);
      DeleteObject(Rgn);
    Finally
      ShowDragImage;
    End;
  End;
  If FEditControl<>Nil Then
  Begin
    FEditControl.Left:=FEditControl.Left+DeltaX;
    FEditControl.Top:=FEditControl.Top+DeltaY;
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.ScrollDelta(ATopItem,ADownItem:TDCTreeNode):Integer;
Var
  AHeight:Integer;
  Item:TDCTreeNode;
  AItemHeight:Integer;
Begin
  AHeight:=Height;
  Result:=0;
  Item:=ATopItem;
  While (Item<>Nil) And (Item<>ADownItem) Do
  Begin
    AItemHeight:=Item.GetHeight;
    Dec(AHeight,AItemHeight);
    Inc(Result,AItemHeight);
    If AHeight<0 Then
      Exit;
    Item:=Item.GetNextVisibleSimple;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ScrollByLines(LinesCount:Integer);
Var
  NextItem:TDCTreeNode;
  NewTopItem:TDCTreeNode;
Begin
  NextItem:=FTopItem;
  NewTopItem:=FTopItem;
  While (NextItem<>Nil) And (LinesCount<>0) Do
  Begin
    NewTopItem:=NextItem;
    If LinesCount>0 Then
    Begin
      NextItem:=NextItem.GetNextVisibleSimple;
      Dec(LinesCount);
    End
    Else
    Begin
      NextItem:=NextItem.GetPrevVisibleSimple;
      Inc(LinesCount);
    End;
  End;
  If NextItem<>Nil Then
    TopItem:=NextItem
  Else
    TopItem:=NewTopItem;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SelectionChanged;
Begin
  KillTimer(SelectionTimerID,FSelectionTimerCreated);
  If Assigned(FOnSelectionChanged) Then
    FOnSelectionChanged(Self,Selected);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetActiveSelectedColor(Value:TColor);
Begin
  If FActiveSelectedColor=Value Then
    Exit;
  FActiveSelectedColor:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetActiveSelectedFontColor(Value:TColor);
Begin
  If FActiveSelectedFontColor=Value Then
    Exit;
  FActiveSelectedFontColor:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetAutoCheck(Value:Boolean);

  Procedure _SetAutoCheck(ParentNode:TDCTreeNode);
  Var
    Node:TDCTreeNode;
    AState:TCheckBoxState;
    IsStateSet:Boolean;
  Begin
    IsStateSet:=False;
    Node:=ParentNode.GetFirstChild;
    AState:=cbUnchecked;
    While Node<>Nil Do
    Begin
      If Node.Count>0 Then
        _SetAutoCheck(Node);
      If Node.NodeType=ntCheckBox Then
        If IsStateSet Then
        Begin
          If AState<>cbGrayed Then
          Begin
            If AState<>Node.State Then
              AState:=cbGrayed
          End
        End
        Else
        Begin
          AState:=Node.State;
          IsStateSet:=True
        End;
      Node:=Node.GetNextSibling;
    End;
    If IsStateSet Then
      ParentNode.State:=AState;
  End;

Var
  Node:TDCTreeNode;
Begin
  If FAutoCheck=Value Then
    Exit;
  FAutoCheck:=Value;
  Try
    Inc(FAutoCheckParentLock);
    Inc(FAutoCheckChildLock);
    If FAutoCheck And (FCheckBoxesType<>ctNone) Then
    Begin
      Node:=FNodes.GetFirstNode;
      While Node<>Nil Do
      Begin
        If Node.Count>0 Then
          _SetAutoCheck(Node);
        Node:=Node.GetNextSibling;
      End;
    End;
  Finally
    Dec(FAutoCheckParentLock);
    Dec(FAutoCheckChildLock);
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetBorderStyle(Value:TBorderStyle);
Begin
  If BorderStyle=Value Then
    Exit;
  FBorderStyle:=Value;
  UpdateBorder;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetChangeDelay(Value:Integer);
Begin
  If Value<0 Then
    InvalidOperation(SErrInvalidValue);
  FChangeDelay:=Value;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetDefaultNodeClass(Value:TDCTreeNodeClass);
Begin
  If (FDefaultNodeClass=Value) Or (Value=Nil) Then
    Exit;
  FDefaultNodeClass:=Value;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetDragExpandDelay(Value:Integer);
Begin
  If Value<0 Then
    InvalidOperation(SErrInvalidValue);
  FDragExpandDelay:=Value;
End;

{-----------------------------------------------------------}

Procedure TDCCustomTreeView.SetDropTarget(Value:TDCTreeNode);
Begin
  If FDropTarget<>Nil Then
    FDropTarget.DropTarget:=False;
  If Value<>Nil Then
    Value.DropTarget:=True;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetDropTargetKind(Value:TDCDropTargetKind);
Begin
  If FDropTargetKind=Value Then
    Exit;
  FDropTargetKind:=Value;
  If FDropTarget<>Nil Then
    NodeSelectionChanged(FDropTarget);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetEditInfo;
Var
  Info:TOtherInfoRec;
Begin
  Info.WordWrap:=IsWordWrap;
  FEditControl.Perform(DM_SETOTHERINFO,Integer(@Info),0);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetEditorRectAndText(Node:TDCTreeNode);
Begin
  Canvas.Font:=Node.InternalFont;
  Canvas.Brush.Color:=Node.Color;
  SetEditRect(Node.DisplayRect(True),True);
  SetEditText(GetTextForEditor(Node),True);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetEditParent;
Begin
  FEditControl.Perform(DM_SETPARENT,Integer(Self),0);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetEditRect(Const ARect:TRect;Bordered:Boolean);
Begin
  FEditControl.Perform(DM_SETRECT,Integer(@ARect),Integer(LongBool(Bordered)));
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetEditText(Const Text:String;SelectAll:Boolean);
Begin
  FEditControl.Perform(DM_SETTEXT,Integer(PChar(Text)),Integer(LongBool(SelectAll)));
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetFlatBorder(Value:Boolean);
Begin
  If FFlatBorder=Value Then
    Exit;
  FFlatBorder:=Value;
  UpdateBorder;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetFlatChecks(Value:Boolean);
Begin
  If FFlatChecks=Value Then
    Exit;
  FFlatChecks:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetHideSelection(Value:Boolean);
Var
  I:Integer;
Begin
  If FHideSelection=Value Then
    Exit;
  FHideSelection:=Value;
  For I:=0 To SelectedCount-1 Do
    SelectedItems[I].Invalidate([npText]);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetHorzScrollInfo(PageWidth,MaxWidth:Integer);
Var
  ScrollInfo:TScrollInfo;
Begin
  If Not HandleAllocated Then
    Exit;
  HideDragImage;
  ScrollInfo.cbSize:=SizeOf(TScrollInfo);
  With ScrollInfo Do
  Begin
    fMask:=SIF_PAGE Or SIF_RANGE;
    nMin:=0;
    nMax:=MaxWidth-1;
    nPage:=PageWidth;
    FScrollBarHorzVisible:=Integer(nPage)<=nMax;
  End;
  {$IFDEF D4}
  If FAllowFlatScrollBars Then
    FlatSB_SetScrollInfo(Handle,SB_HORZ,ScrollInfo,True)
  Else
  {$ENDIF}
    SetScrollInfo(Handle,SB_HORZ,ScrollInfo,True);
  ShowDragImage;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetHotTrack(Value:Boolean);
Begin
  If FHotTrack=Value Then
    Exit;
  FHotTrack:=Value;
  If Not FHotTrack And (FHotTrackNode<>Nil) Then
  Begin
    FHotTrackNode.Invalidate([npText]);
    FHotTrackNode:=Nil;
    Windows.SetCursor(Screen.Cursors[Cursor])
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetImageList(AImageList:TCustomImageList;var Link:TChangeLink);
Begin
  UpdateImageListLink(AImageList,Link,ImagesChanged);
  If AImageList<>Nil Then
    AImageList.FreeNotification(Self);
  If Not (csDestroying In ComponentState) Then
    ImagesChanged(Self);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetImages(Value:TCustomImageList);
Begin
  If FImages=Value Then
    Exit;
  If (FImages<>Nil) And (FImagesLink<>Nil) Then
     FImages.UnRegisterChanges(FImagesLink);
  FImages:=Value;
  SetImageList(Value,FImagesLink);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetInactiveSelectedColor(Value:TColor);
Begin
  If FInactiveSelectedColor=Value Then
    Exit;
  FInactiveSelectedColor:=Value;
  Invalidate;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetInactiveSelectedFontColor(Value:TColor);
Begin
  If FInactiveSelectedFontColor=Value Then
    Exit;
  FInactiveSelectedFontColor:=Value;
  Invalidate;  
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetIndent(Value:Integer);
Begin
  If Value<0 Then
    InvalidOperation(SErrInvalidValue);
  If FIndent=Value Then
    Exit;
  SetIndentInternal(Value);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetIndentInternal(Value:Integer);
Begin
  FIndent:=Value;
  RecalcAll;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetItems(Value:TDCTreeNodes);
Begin
  FNodes.Assign(Value);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetKeyboardHook;
Begin
  FKeyboardHook:=SetWindowsHookEx(WH_KEYBOARD,@KeyboardProc,hInstance,GetCurrentThreadID);
  HookTreeView:=Self;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetLinesColor(Value:TColor);
Begin
  If FLinesColor=Value Then
    Exit;
  FLinesColor:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetMultiLineNodes(Value:Boolean);
Begin
  If FMultiLineNodes=Value Then
    Exit;
  FMultiLineNodes:=Value;
  WordWrapTree;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetMultiSelect(Value:Boolean);
Begin
  If FMultiSelect=Value Then
    Exit;
  If Not Value Then
    DeselectPrevious(FFocused);
  FMultiSelect:=Value;
  MultiSelectChanged;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetPrintOptions(Value:TDCTreePrintOptions);
Begin
  FPrintOptions:=Value;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetRowSelect(Value:Boolean);
Begin
  If FRowSelect=Value Then
    Exit;
  FRowSelect:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetRowSelectType(Value:TDCRowSelectType);
Begin
  If FRowSelectType=Value Then
    Exit;
  FRowSelectType:=Value;
  If (FFocused<>Nil) And (FFocused.Selected) Then
    FFocused.Invalidate([npLines..npText]);
End;

{---------------------------------------------------------}
{$IFDEF D4}
Procedure TDCCustomTreeView.SetScrollBarsStyle(Value:TScrollBarStyle);
Begin
  If FScrollBarsStyle=Value Then
    Exit;
  If HandleAllocated Then
    SetScrollBarsStyleInternal(Value)
  Else
    FScrollBarsStyle:=Value;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetScrollBarsStyleInternal(Value:TScrollBarStyle);
Var
  Style:Integer;
Begin
  If Value In [ssFlat,ssHotTrack] Then
  Begin
    FAllowFlatScrollBars:=InitializeFlatSB(Handle);
    If Not FAllowFlatScrollBars Then
      Exit;
    FScrollBarsStyle:=Value;
    Case Value Of
      ssFlat    :Style:=FSB_FLAT_MODE;
      ssHotTrack:Style:=FSB_ENCARTA_MODE
    Else
      Style:=0;
    End;
    FlatSB_SetScrollProp(Handle,WSB_PROP_HSTYLE ,Style,True);
    FlatSB_SetScrollProp(Handle,WSB_PROP_VSTYLE ,Style,True);
  End
  Else
  Begin
    UninitializeFlatSB(Handle);
    FAllowFlatScrollBars:=False;
    FScrollBarsStyle:=Value;
  End;
End;
{$ENDIF}
{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetScrollPos(Code:Integer;Value:Integer);
Var
  ScrollInfo:TScrollInfo;
Begin
  HideDragImage;
  FillChar(ScrollInfo,SizeOf(ScrollInfo),0);
  ScrollInfo.cbSize:=SizeOf(ScrollInfo);
  ScrollInfo.fMask:=SIF_POS;
  ScrollInfo.nPos:=Value;
  {$IFDEF D4}
  If FAllowFlatScrollBars Then
    FlatSB_SetScrollInfo(Handle,Code,ScrollInfo,True)
  Else
  {$ENDIF}
    SetScrollInfo(Handle,Code,ScrollInfo,True);
  ShowDragImage;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetSelected(Node:TDCTreeNode);
Var
  IsDestroying:Boolean;
Begin
  If FFocused=Node Then
  Begin
    If FFocused<>Nil Then
      FFocused.Selected:=True
  End
  Else
  Begin
    IsDestroying:=csDestroying In ComponentState;
    If Not IsDestroying And CanChange(Node) Then
    Try
      LockSelectionChanged;
      Try
        DeselectPrevious(Node);
        If Node<>Nil Then
        Begin
          Node.Focused:=True;//first set focus and then set selected
          Node.Selected:=True;
        End
        Else
          If FFocused<>Nil Then
          Begin
            FFocused.Focused:=False;
            FFocused.Selected:=False;
            FFocused:=Nil;
            KillEditTimer;
          End;
        EndEditNode(False);
      Finally
        UnlockSelectionChanged;
      End;
    Finally
      If Not IsDestroying Then
          Change(Node);
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetSelectedKey(Node:TDCTreeNode);
Begin
  If Node<>Nil Then
    SetSelected(Node);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetSelectOnlySiblings(Value:Boolean);
Var
  I:Integer;
Begin
  If FSelectOnlySiblings=Value Then
    Exit;
  FSelectOnlySiblings:=Value;
  If Value Then
    For I:=FSelectedItems.Count-1 DownTo 0 Do
      With TDCTreeNode(FSelectedItems[I]) Do
        If Parent<>FFocused.Parent Then
          Selected:=False;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetShowButtons(Value:Boolean);
Begin
  If FShowButtons=Value Then
    Exit;
  FShowButtons:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetCheckBoxesType(Value:TDCCheckBoxesType);
  Procedure _SetNodesType(Node:TDCTreeNode;NodeType:TDCNodeType);
  Begin
    If Node=Nil Then
      Exit;
    Repeat
      _SetNodesType(Node.GetFirstChild,NodeType);
      Node.NodeType:=NodeType;
      Node:=Node.GetNextSibling;
    Until Node=Nil;
  End;
Var
  FirstNode:TDCTreeNode;
Begin
  If FCheckBoxesType=Value Then
    Exit;
  FCheckBoxesType:=Value;
  FirstNode:=Items.GetFirstNode;
  If (FirstNode<>Nil) And (FCheckBoxesType=ctAll) Then
    _SetNodesType(FirstNode,ntCheckBox);
  RecalcAll;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetShowLines(Value:Boolean);
Begin
  If FShowLines=Value Then
    Exit;
  FShowLines:=Value;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetShowRoot(Value:Boolean);
Begin
  If FShowRoot=Value Then
    Exit;
  FShowRoot:=Value;
  RecalcAll;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetSortOrder(Value:TDCSortOrder);
Begin
  If SortOrder=Value Then
    Exit;
  FSortOrder:=Value;
  If FSortType<>stNone Then
    AlphaSort;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetSortType(Value:TSortType);
Begin
  If SortType<>Value Then
  Begin
    FSortType:=Value;
    If IsSorted Then
      AlphaSort;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetStateImages(Value:TCustomImageList);
Begin
  If FStateImages=Value Then
    Exit;
  If (FStateImages<>Nil) And (FStateImagesLink<>Nil) Then
     FStateImages.UnRegisterChanges(FStateImagesLink);
  FStateImages:=Value;
  SetImageList(Value,FStateImagesLink);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetTimer(TimerID:Integer;Delay:Integer;Var Flag:Boolean);
Begin
  If Not Flag Then
  Begin
    Windows.SetTimer(Handle,TimerID,Delay,Nil);
    Flag:=True;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetToolTips(Value:Boolean);
Begin
  If FToolTips=Value Then
    Exit;
  FToolTips:=Value;
  If Not (csDesigning In ComponentState) Then
  Begin
    If Value Then
    Begin
      FToolTip:=TDCTreeToolTip.Create(Self);
      CreateToolTips;
      UpdateToolTip;
    End
    Else
    Begin
      FToolTip.Free;
      FToolTip:=Nil;
    End;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetTopItem(Value:TDCTreeNode);
Begin
  If (FTopItem=Value) Or (Value=Nil) Then
    Exit;
  Value.EnsureExpanded;
  SetTopItemInternal(Value);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetTopItemInternal(Value:TDCTreeNode);
Var
  SaveTopItem:TDCTreeNode;
  Delta:Integer;
  OldValue:TDCTreeNode;
  OldTopItem:TDCTreeNode;
  Pt:TPoint;
Begin
  If (Value=Nil) Or Not HandleAllocated Then
    Exit;
  If Not IsExpanded(Value) Then
    Value:=FNodes.GetFirstVisibleInTreeView;
  OldValue:=Value;
  OldTopItem:=FTopItem;
  Value:=GetNewTopItem(Value,Delta);
  If FTopItem=Value Then
    Exit;
  EndEditNode(False);
  BeforeSetTopItem(Value);
  BeforeScrollUpdate;
  UpdateDropTarget(-1,-1);
  Try
    If (Value=OldValue) And (FTopItemNewIndex>=0) Then
      FTopItemIndex:=FTopItemNewIndex
    Else
      If (OldValue=OldTopItem) And FTopItemIndexCalculated Then
        FTopItemIndex:=FTopItemIndex+Delta
      Else
        FTopItemIndex:=Value.VisibleIndex;
    FTopItemNewIndex:=-1;
    If CompareVisiblePos(Value,FTopItem)<0 Then
    Begin
      SaveTopItem:=FTopItem;
      FTopItem:=Value;
      ScrollAbs(0,ScrollDelta(Value,SaveTopItem))
    End
    Else
    Begin
      ScrollAbs(0,-ScrollDelta(FTopItem,Value));
      FTopItem:=Value;
    End;
    Update;
    FTopItemIndexCalculated:=True;
    UpdateScroll(True,False);
  Finally
    With GetCursorPos Do
      UpdateDropTarget(Pt.X,Pt.Y);
    AfterScrollUpdate;
  End;
  AfterSetTopItem(Value);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetVertScrollInfo(PageHeight,MaxHeight:Integer);
Var
  ScrollInfo:TScrollInfo;
Begin
  If Not HandleAllocated Then
    Exit;
  HideDragImage;
  ScrollInfo.cbSize:=SizeOf(TScrollInfo);
  With ScrollInfo Do
  Begin
    fMask:=SIF_PAGE Or SIF_RANGE Or SIF_POS;
    nMin:=0;
    nMax:=MaxHeight-1;
    nPage:=PageHeight;
    If (MaxHeight>PageHeight) And (FTopItem<>Nil) Then
    Begin
      nPos:=FTopItem.VisibleIndex;
      FTopItemIndex:=nPos;
      FTopItemIndexCalculated:=True;
    End
    Else
      nPos:=0;
    FScrollBarVertVisible:=Integer(nPage)<=nMax;
  End;
  {$IFDEF D4}
  If FAllowFlatScrollBars Then
    FlatSB_SetScrollInfo(Handle,SB_VERT,ScrollInfo,True)
  Else
  {$ENDIF}
    SetScrollInfo(Handle,SB_VERT,ScrollInfo,True);
  ShowDragImage;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.SetWordWrap(Value:Boolean);
Begin
  If FWordWrap=Value Then
    Exit;
  FWordWrap:=Value;
  If MultiLineNodes Then
    WordWrapTree;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ShowDragImage;
Begin
  Dec(FShowDragImage);
  If FShowDragImage=0 Then
    If FDragObject<>Nil Then
      FDragObject.ShowDragImage
    Else
      If GetDragImages<>Nil Then
        GetDragImages.ShowDragImage;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.ShowEditor;
Var
  ShowEditorRec:TShowEditorRec;
Begin
  With ShowEditorRec Do
  Begin
    CellFont          := Canvas.Font;
    Color             := Canvas.Brush.Color;
    SelectedColor     := ActiveSelectedColor;
    SelectedTextColor := ActiveSelectedFontColor;
  End;
  FEditControl.Perform( DM_SHOWEDITOR,Integer(True),Integer(@ShowEditorRec));
End;

{---------------------------------------------------------}

Function  TDCCustomTreeView.StoreDrawData:Boolean;
Begin
  Result:=True;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.TopItemChanged;
Var
  Dummy:Integer;
Begin
  If FTopItem<>Nil Then
  Begin
    FTopItem:=GetNewTopItem(FTopItem,Dummy);
    FTopItemIndex:=FTopItem.GetVisibleIndex;
    FTopItemIndexCalculated:=True;
  End;
  UpdateScroll(True,True);
  UpdateHotTrack;
  UpdateToolTip;
  Invalidate;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.TryEditNode;
Begin
  SetTimer(EditTimerID,EditTimerDelay,FEditTimerCreated)
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UnHighlightNode;
Var
  Pos:TPoint;
Begin
  Pos:=GetCursorPos;
  If (FHighlightNode<>Nil) And
  ((Abs(Pos.X-FHighLightPos.X)>DragHorzSpace) Or (Abs(Pos.Y-FHighLightPos.Y)>DragVertSpace)) Then
    DoUnHighlightNode;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UnlockSelectionChanged;
Begin
  Dec(FSelectionChangedLock);
  If FNeedSelectionChanged Then
    DoSelectionChanged; 
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateBorder;
  Procedure _UpdateCtl3DStyle(Handle:THandle);
  Var
    Style:DWord;
  Begin
    Style:=GetWindowLong(Handle,GWL_STYLE);
    Style:=Style And Not WS_BORDER;
    SetWindowLong(Handle,GWL_STYLE,Style);
    Style:=GetWindowLong(Handle,GWL_EXSTYLE);
    Style:=Style And Not WS_EX_CLIENTEDGE And Not WS_EX_STATICEDGE;
    If BorderStyle=bsSingle Then
      Style:=Style Or GetExStyle;
    SetWindowLong(Handle,GWL_EXSTYLE,Style);
  End;

  Procedure _UpdateNonCtl3DStyle(Handle:THandle);
  Var
    Style:Integer;
  Begin
    Style:=GetWindowLong(Handle,GWL_EXSTYLE);
    Style:=Style And Not WS_EX_CLIENTEDGE And Not WS_EX_STATICEDGE;
    SetWindowLong(Handle,GWL_EXSTYLE,Style);
    Style:=GetWindowLong(Handle,GWL_STYLE);
    If BorderStyle=bsSingle Then
      Style:=Style Or WS_BORDER
    Else
      Style:=Style And Not WS_BORDER;
    SetWindowLong(Handle,GWL_STYLE,Style);
  End;
Begin
  If HandleAllocated Then
  Begin
    If Ctl3D Then
      _UpdateCtl3DStyle(Handle)
    Else
      _UpdateNonCtl3DStyle(Handle);
    SetWindowPos(Handle,0,0,0,0,0,SWP_DRAWFRAME Or SWP_NOACTIVATE Or SWP_NOMOVE Or
                                  SWP_NOSIZE Or SWP_NOZORDER);
  End;
End;

{---------------------------------------------------------}

Function TDCCustomTreeView.UpdateCursorAt(X,Y:Integer):Boolean;
Begin
  Result:=Not (csDesigning In ComponentState) And FHotTrack And (GetNodeAt(X,Y)<>Nil) And Not MultiLineNodes;
  If Result Then
    Windows.SetCursor(Screen.Cursors[crHandPoint])
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateDropTarget(X,Y:Integer);
Var
  Node:TDCTreeNode;
Begin
  If FExternalDrag Then
  Begin
    Node:=FNodes.GetHitTest(X,Y).Node;
    If Node<>FDropTarget Then
      If Node<>Nil Then
        Node.DropTarget:=True;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateHotTrack;
Var
  Node:TDCTreeNode;
Begin
  If FHotTrack And Not MultiLineNodes And Not Dragging And HandleAllocated And
     Not (csDesigning In ComponentState) Then
  Begin
    Node:=GetNodeAtCursor;
    If FHotTrackNode=Node Then
      Exit;
    If FHotTrackNode<>Nil Then
      FHotTrackNode.Invalidate([npText]);
    FHotTrackNode:=Node;
    If FHotTrackNode<>Nil Then
      FHotTrackNode.Invalidate([npText]);
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateImageListLink(AImageList:TCustomImageList;Var Link:TChangeLink;OnChange:TNotifyEvent);
Begin
  If AImageList<>Nil Then
  Begin
   If Link=Nil Then
   Begin
     Link:=TChangeLink.Create;
     Link.OnChange:=OnChange;
     If AImageList<>Nil Then
       AImageList.RegisterChanges(Link)
   End;
  End
  Else
  Begin
    Link.Free;
    Link:=Nil;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateScroll(IsUpdateScrollBars:Boolean;IsSetTopItem:Boolean);
Var
  PageSize:TSize;
  HorzScrollVisible:Boolean;
  VertScrollVisible:Boolean;
  PageHeight:Integer;
Begin
  If (csDestroying In ComponentState) Or Not HandleAllocated Or FNodes.Locked Then
    Exit;

  BeforeUpdateScrollbars;
  PageSize:=GetRealPageSize;
  If FRootNode<>Nil Then
    FScrollHorzMaxWidth:=GetMaxWidth
  Else
    FScrollHorzMaxWidth:=0;
  HorzScrollVisible:=PageSize.cX<FScrollHorzMaxWidth;
  PageHeight:=CalcVertPage(PageSize);
  If HorzScrollVisible Then
  Begin
    Dec(PageSize.cY,GetSystemMetrics(SM_CYHSCROLL));
    PageHeight:=CalcVertPage(PageSize);
  End;

  VertScrollVisible:=PageHeight<FRootNode.FChildInfo.ExpandedCount;
  If VertScrollVisible Then
  begin
    Dec(PageSize.cX,GetSystemMetrics(SM_CXVSCROLL));
    If Not HorzScrollVisible Then
    Begin
      HorzScrollVisible:=PageSize.cX<FScrollHorzMaxWidth;
      If HorzScrollVisible Then
      Begin
        Dec(PageSize.cY,GetSystemMetrics(SM_CYHSCROLL));
        PageHeight:=CalcVertPage(PageSize);
      End;
    End;
  End;
  SetHorzScrollInfo(PageSize.cX,FScrollHorzMaxWidth);
  SetVertScrollInfo(PageHeight,FRootNode.FChildInfo.ExpandedCount);
  UpdateToolTip;
  UpdateHotTrack;
  If IsUpdateScrollBars Then
    ProcessHScroll(GetScrollPos(SB_HORZ,False));
  If IsSetTopItem Then
    SetTopItemInternal(TopItem);//re-set topitem
  AfterUpdateScrollBars;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateSelected;
Begin
  If (FFocused=Nil) And (FTopItem<>Nil) Then
    Selected:=FTopItem;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.UpdateToolTip;
Var
  PosInfo:TDCPosInfo;
  tnode : TDCTreeNode;
  ttip  : TDCToolTip;
Begin
  ttip := FToolTip;
  If (ttip <> nil) And FToolTips And Not WordWrap And HandleAllocated And ttip.HandleAllocated Then
  Begin
    tnode := nil;
    If AllowShowToolTip Then
      Begin
        PosInfo:=GetHitTestAtCursor;
        If dhtOnItem In PosInfo.HitTests Then
          tnode := PosInfo.Node;
      End;
    TDCTreeToolTip(ttip).TreeNode := tnode;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMCancelMode(Var Message:TMessage);
Begin
  DoCancelMode;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMCaptureChanged(Var Message:TMessage);
Begin
  Inherited;
  DoCancelMode;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMChar(Var Message:TMessage);
Begin
  If Not (FBeginMouseSelect And (Message.wParam<>VK_ESCAPE)) Then
    Inherited
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMDestroy(Var Message:TMessage);
Begin
  {$IFDEF D4}
  If FAllowFlatScrollBars Then
    UninitializeFlatSB(Handle);
  {$ENDIF}
  DestroyToolTips;  
  KillEditTimer;
  KillTimer(SelectionTimerID,FSelectionTimerCreated);
  KillScrollTimer;
  KillTimer(ExpandTimerID,FExpandTimerCreated);
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMEraseBkgnd(Var Message:TMessage);
Begin
  Message.Result:=1;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMHScroll(Var Message:TWMScroll);
Var
  NewOffset:Integer;
Begin
  EndEditNode(False);
  Message.Result:=1;
  NewOffset:=FOffsetX;
  Case Message.ScrollCode Of
    SB_LINELEFT  :Dec(NewOffset,HorzScrollSpace);
    SB_LINERIGHT :Inc(NewOffset,HorzScrollSpace);
    SB_PAGELEFT  :Dec(NewOffset,GetPageSize.cX-HorzScrollSpace);
    SB_PAGERIGHT :Inc(NewOffset,GetPageSize.cX-HorzScrollSpace);
    SB_TOP:
        NewOffset:=0;
    SB_BOTTOM:
        NewOffset:=GetMaxWidth;
    SB_THUMBTRACK,SB_THUMBPOSITION:
        NewOffset:=GetScrollPos(SB_HORZ,True);
    SB_ENDSCROLL:
        Exit;
  End;
  HideDragImage;
  ProcessHScroll(NewOffset);
  If RowSelect And (FFocused<>Nil) Then
    FFocused.Invalidate([npText]);
  Update;
  ShowDragImage;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMGetDlgCode(Var Message:TMessage);
Begin
  Inherited;
  Message.Result:=Message.Result Or DLGC_WANTARROWS Or DLGC_WANTCHARS;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMLButtonDblClk(Var Message:TWMMouse);
Var
  Pos:TPoint;
  X,X1,X2:Integer;
  ParentNode:TDCTreeNode;
  HitTest:TDCPosInfo;
Begin
  Pos:=GetCursorPos;
  With Pos Do
    HitTest:=GetHitTest(X,Y);
  Inherited;
  EndEditNode(False);
  If dhtOnItem In HitTest.HitTests Then
    HitTest.Node.Expanded:=Not HitTest.Node.Expanded
  Else
  Begin
    If dhtOnIndent In HitTest.HitTests Then
    Begin
      ParentNode:=HitTest.Node.Parent;
      If ParentNode<>Nil Then
      Begin
        X:=ParentNode.GetPositionX;
        While ParentNode<>Nil Do
        Begin
          X1:=X;
          X2:=X+ParentNode.GetIndent;
          If X2<Pos.X Then
            Break;
          If (X1<=Pos.X) And (Pos.X<=X2) Then
          Begin
            ParentNode.Collapse(False);
            Break;
          End;
          ParentNode:=ParentNode.Parent;
          X:=X2;
        End;
      End;  
    End
    Else
      WMLButtonDown(Message);
  End;  
  FDisableEdit:=True;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMKeyDown(Var Message:TMessage);
Begin
  If Not (FBeginMouseSelect And (Message.wParam<>VK_ESCAPE)) Then
    Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMKillFocus(Var Message:TMessage);
Begin
  Inherited;    
  DoCancelMode;
  KillEditTimer;
  InvalidateSelected;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMLButtonDown(Var Message:TWMMouse);
Var
  HitTest:TDCPosInfo;
Begin
  EndEditNode(False);
  FDisableEdit:=Not IsFocused;
  If FDragged Then
    ProcessCancelDrag;
  SetFocus;
  Windows.SetFocus(Handle);
  Inherited;
  UnHighlightNode;
  FPrevClickItem:=FFocused;
  HitTest:=FNodes.GetHitTest(Message.XPos,Message.YPos);
  If dhtOnItem In HitTest.HitTests Then
  Begin
    If AutoExpand Then
    With HitTest.Node Do
    Begin
      If (Self.Selected<>Nil) And Not HasAsParent(Self.Selected) Then
        Self.Selected.Collapse(False);
      If Expanded Then
        Collapse(False)
      Else
        Expand(False);
    End;
    If MultiSelect Then
    Begin
      If Message.Keys=MK_CONTROL+MK_LBUTTON Then
        With HitTest.Node Do
          Selected:=Not Selected
      Else
        If Message.Keys=MK_SHIFT+MK_LBUTTON Then
        Begin
          DeselectPrevious(FShiftSelectNode);
          ProcessShiftSelect(HitTest.Node);
        End
        Else
          If AllowMultiDrag And HitTest.Node.Selected Then
            HitTest.Node.Focused:=True
          Else
            Selected:=HitTest.Node;
    End
    Else
      Selected:=HitTest.Node;
  End
  Else
    If dhtOnButton In HitTest.HitTests Then
      HitTest.Node.Expanded:=Not HitTest.Node.Expanded
    Else
      If dhtOnCheckBox In HitTest.HitTests Then
      Begin
        If HitTest.Node.NodeType<>ntNone Then
        Begin
          HitTest.Node.SwitchToNextState;
          DoCheckClick(HitTest.Node);
        End
      End
      Else
        If Not (dhtAbove In HitTest.HitTests) And FMultiSelect Then
          MouseSelectBegin(Message.XPos,Message.YPos);
  If GetAsyncKeyState(VK_LBUTTON)>=0 Then
    Exit;
  FMouseDownX:=Message.XPos;
  FMouseDownY:=Message.YPos;
  FDragNode:=HitTest.Node;
  If mbLeft In DragButtons Then
    FMouseButtonPressed:=True;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMLButtonUp(Var Message:TWMLButtonDown);
Begin
  //To prevend WM_CAPTURECHANGECD
  ControlStyle:=ControlStyle-[csCaptureMouse];
  Inherited;
  ControlStyle:=ControlStyle+[csCaptureMouse];
  //Release capture
  MouseCapture:=False;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMRButtonDown(Var Message:TWMRButtonDown);
Begin
  KillEditTimer;
  If FDragged Then
    ProcessCancelDrag;
  SetFocus;
  Inherited;
  If GetAsyncKeyState(VK_RBUTTON)>=0 Then
    Exit;
  UnHighlightNode;
  FMouseDownX:=Message.XPos;
  FMouseDownY:=Message.YPos;
  FDragNode:=GetNodeAt(FMouseDownX,FMouseDownY);
  If mbRight In DragButtons Then
    FMouseButtonPressed:=True;
  If FRightClickSelect And (FDragNode<>Nil) Then
    HighlightNode;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMRButtonUp(Var Message:TWMRButtonDown);
Begin
  RemoveHotTrackNode;
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMMouseWheel(Var Message:TMessage);
Var
  Delta:Integer;
  Lines:Integer;
Begin
  Inc(FWheelDelta,SmallInt(Message.wParamHi));
  Delta:=FWheelDelta Div WHEEL_DELTA;

  If Delta<>0 Then
  Begin
    SystemParametersInfo(SPI_GETWHEELSCROLLLINES,0,@Lines,0);
    ScrollByLines(-Delta*Lines);
    Dec(FWheelDelta,Delta*WHEEL_DELTA);
  End;
  Message.Result:=1;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMSetCursor(Var Message:TMessage);
Var
  Pt:TPoint;
Begin
  Pt:=GetCursorPos;
  If Not PtInRect(ClientRect,Pt) Or Not UpdateCursorAt(Pt.X,Pt.Y) Then
    Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMSetFocus(Var Message:TMessage);
Begin
  Inherited;
  UpdateSelected;
  InvalidateSelected;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMSize(Var Message:TMessage);
Begin
  Inherited;
  If IsRowSelect And EqualRect(GetDrawRect,ClientRect) Then
    InvalidateSelected;
  If IsWordWrap Then
    WordWrapTree
  Else
    UpdateScroll(True,True);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMTimer(Var Message:TMessage);
Begin
  OnTimer(Message.WParam);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMVScroll(Var Message:TWMScroll);
Var
  OldTopItem:TDCTreeNode;
  NewTopItem:TDCTreeNode;
Begin
  Message.Result:=1;
  If FTopItem=Nil Then
    Exit;
  EndEditNode(False);
  OldTopItem:=FTopItem;
  NewTopItem:=OldTopItem;
  FTopItemNewIndex:=-1;
  Case Message.ScrollCode Of
    SB_LINELEFT  : NewTopItem:=FTopItem.GetPrevVisibleSimple;
    SB_LINERIGHT : NewTopItem:=FTopItem.GetNextVisibleSimple;
    SB_PAGELEFT  : NewTopItem:=PageUpItem(FTopItem);
    SB_PAGERIGHT : NewTopItem:=PageDownItem(FTopItem);
    SB_TOP:
      NewTopItem:=GetFirstVisibleNode;
    SB_BOTTOM:
      NewTopItem:=GetLastVisibleNode;
    SB_THUMBTRACK:
      FTopItemNewIndex:=GetScrollPos(SB_VERT,True);
    SB_ENDSCROLL,SB_THUMBPOSITION:
      Exit;
  End;
  If FTopItemNewIndex>=0 Then
    NewTopItem:=GetVisibleItem(FTopItemNewIndex);

  HideDragImage;
  If (NewTopItem<>Nil) And (NewTopItem<>OldTopItem) Then
    SetTopItemInternal(NewTopItem);
  Update;
  ShowDragImage;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMWindowPosChanged(Var Message:TWMWindowPosChanged);
Begin
  If Message.WindowPos.flags And SWP_HIDEWINDOW<>0 Then
    DestroyToolTips;
  Inherited;
  If Message.WindowPos.flags And SWP_SHOWWINDOW<>0 Then
    CreateToolTips;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WMPaint(Var Message:TMessage);
Var
  ARect:TRect;
  SaveFlags:TDCCanvasFlags;
  SaveOffsetX:Integer;
  IsPrinting:Boolean;
  ps:TPaintStruct;
Begin
  BeginPaint(Handle,ps);
  If FNodes.Locked Then
  Begin
    ARect:=Rect(0,0,Width,Height);
    ValidateRect(Handle,@ARect);
  End
  Else
  Begin
    If Message.wParam<>0 Then
    Begin
      FCanvas.Handle:=Message.wParam;
      ARect:=GetDrawRect;
      Windows.InvalidateRect(Handle,@ARect,False);
    End
    Else
      FCanvas.Handle:=ps.hdc;
    SaveOffsetX:=0;
    If FPrinting Then
    Begin
      SaveFlags:=Canvas.Flags;
      SaveOffsetX:=FOffsetX;
      FOffsetX:=FSavedOffsetX;
      FPrinting:=False;
      IsPrinting:=True
    End
    Else
      IsPrinting:=False;
    Canvas.Flags:=[];
    Try
      DrawTreeView(ps.rcPaint);
      FScrollXSum:=0;
      FScrollYSum:=0;
    Finally
      If IsPrinting Then
      Begin
        FPrinting:=True;
        Canvas.Flags:=SaveFlags;
        FOffsetX:=SaveOffsetX;
      End;
      FCanvas.Handle:=0;
    End;
  End;
//  Inherited;
  EndPaint(Handle,ps);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WndProc(Var Message:TMessage);
Begin
  If Not (csDesigning In ComponentState) And
     ((Message.Msg=WM_LBUTTONDOWN) Or (Message.Msg=WM_LBUTTONDBLCLK)) And
      Not Dragging And (DragMode=dmAutomatic) {$IFDEF D4}And (DragKind=dkDrag){$ENDIF} Then
  Begin
    If Not IsControlMouseMsg(TWMMouse(Message)) Then
    Begin
      ControlState:=ControlState+[csLButtonDown];
      Dispatch(Message);
    End;
  End
  Else
    Inherited WndProc(Message);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WriteData(Stream:TStream);
Var
  Position:Integer;
  Procedure _WritePropNum(PropNum:Byte);
  Begin
    Stream.Write(PropNum,SizeOf(PropNum));
  End;

  Procedure _WriteSet(Value:Integer;PropInfo:PPropInfo);
  Var
    I:Integer;
    BaseType:PTypeInfo;
  Begin
    {$IFDEF D3}
    BaseType:=GetTypeData(PropInfo.PropType^)^.CompType^;
    {$ELSE}
    BaseType:=GetTypeData(PropInfo.PropType^)^.CompType;
    {$ENDIF}
    For I:=0 To SizeOf(TIntegerSet)*8-1 Do
      If I In TIntegerSet(Value) Then
        WriteStrToStream(Stream,GetEnumName(BaseType,I));
    WriteStrToStream(Stream,'');
  End;

  Procedure _WriteOrdProp(Instance:TObject;PropInfo:PPropInfo;Kind:TTypeKind);
  Var
    Value:Integer;
    BoolVal:Boolean;
  Begin
    Value:=GetOrdProp(Instance,PropInfo);
    If Value<>PropInfo.Default Then
      If Kind=tkBoolean Then
      Begin
        BoolVal:=Boolean(Value);
        Stream.Write(BoolVal,SizeOf(BoolVal))
      End
      Else
        Case Kind Of
          tkInteger     : Stream.Write(Value,SizeOf(Value));
          tkSet         : _WriteSet(Value,PropInfo);
          tkEnumeration : WriteStrToStream(Stream,GetEnumName(PropInfo.PropType^,Value));
        End
    Else
      Stream.Position:=Position;
  End;

  Procedure _WriteStrProp(Instance:TObject;PropInfo:PPropInfo);
  Begin
    WriteStrToStream(Stream,GetStrProp(Instance,PropInfo));
  End;

  Procedure _WriteProperty(Instance:TObject;PropInfo:PPropInfo);forward;

  Procedure _WriteObjectProp(Instance:TObject;PropInfo:PPropInfo);
  Var
    Obj:TObject;
    PropCount:Integer;
    PropList:PPropList;
    I:Integer;
  Begin
    Obj:=TObject(GetOrdProp(Instance,PropInfo));
    PropCount:=GetTypeData(Obj.ClassInfo)^.PropCount;
    GetMem(PropList,PropCount*SizeOf(Pointer));
    Try
      GetPropInfos(Obj.ClassInfo,PropList);
      For I:=0 To PropCount-1 Do
      Begin
        PropInfo:=PropList^[I];
        If IsStoredProp(Obj,PropInfo) Then
        Begin
          Position:=Stream.Position;
          WriteStrToStream(Stream,PropInfo.Name);
          _WriteProperty(Obj,PropInfo);
        End;
      End;
      WriteStrToStream(Stream,'');
    Finally
      FreeMem(PropList);
    End;
  End;

  Procedure _WriteProperty(Instance:TObject;PropInfo:PPropInfo);
  Var
    Kind:TTypeKind;
  Begin
    If PropInfo.PropType^.Name='Boolean' Then
      Kind:=tkBoolean
    Else
      Kind:=PropInfo.PropType^.Kind;
    Stream.Write(Kind,SizeOf(Kind));
    Case PropInfo.PropType^.Kind Of
      tkInteger,tkEnumeration,
       tkSet     : _WriteOrdProp(Instance,PropInfo,Kind);
      tkString, tkUString, 
       tkLString : _WriteStrProp(Instance,PropInfo);
      tkClass    : _WriteObjectProp(Instance,PropInfo);
    Else
      If PropInfo<>Nil Then
        Error(SErrInvalidPropertyType);
    End;
  End;

  Procedure _WriteTreeProperty(Instance:TDCTreeNode;PropInfo:PPropInfo;PropNum:Byte);
  Begin
    Position:=Stream.Position;
    _WritePropNum(PropNum);
    _WriteProperty(Instance,PropInfo);
  End;

  Procedure _WriteNode(Node:TDCTreeNode);
  Var
    PropInfo:PPropInfo;
    ChildCount:Integer;
    PropNum:Byte;
    AClassName:String;
  Begin
    ChildCount:=Node.Count;
    Stream.Write(ChildCount,SizeOf(ChildCount));
    Node:=Node.GetFirstChild;
    While Node<>Nil Do
    Begin
      If Node.ClassType=FBaseNodeClass Then
        AClassName:=''
      Else
        AClassName:=Node.ClassName;
      WriteStrToStream(Stream,AClassName);
      DoExpandNode(Node);
      _WriteNode(Node);
      For PropNum:=Low(PropertyNames) To High(PropertyNames) Do
      Begin
        PropInfo:=GetPropInfo(Node.ClassInfo,PropertyNames[PropNum]);
        If (PropInfo<>Nil) And IsStoredProp(Node,PropInfo) Then
          _WriteTreeProperty(Node,PropInfo,PropNum);
      End;
      _WritePropNum(pnEndOfData);
      Node.WriteCustomData(Stream);
      Node:=Node.GetNextSibling;
    End;
  End;
Var
  Version:Word;
Begin
  Version:=$100;
  Stream.Write(Version,SizeOf(Version));
  _WriteNode(FRootNode);
  _WritePropNum(pnEndOfData);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeView.WordWrapTree;
Begin
  ResetCache;
  RecalcHorzInfo(True);
  UpdateScroll(True,True);
  Invalidate;
End;

{ TDCCustomTreeSimpleEditor }

Constructor TDCCustomTreeSimpleEditor.Create(AOwner:TComponent);
Begin
  Inherited;
  Ctl3D:=False;
  ParentCtl3D:=False;
  ControlStyle:=ControlStyle+[csNoDesignVisible];
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMCancelChanges(Var Message:TMessage);
Begin
  Modified:=False;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMGetModified(Var Message:TMessage);
Begin
  Message.Result:=Integer(Modified);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMHideEditor(Var Message:TMessage);
Begin
  Hide;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMSetCanvas(Var Message:TMessage);
Begin
  FCanvas:= TCanvas( Message.wParam );
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMSetParent(Var Message:TDMSetParent);
Begin
  FControl:=Message.Parent;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMSetRect(Var Message:TDMSetRect);
Begin
  FRect:=Message.ARect^;
  If Message.Bordered Then
    BorderStyle:=bsSingle
  Else
    BorderStyle:=bsNone;  
  UpdateEditorBounds;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMSetText(Var Message:TDMSetText);
Begin
  Text:=Message.Text;
  If Not Message.SelectAll Then
  Begin
    SelStart:=0;//to scroll at begin of text
    SelStart:=Length(Text);//to set cursor at end of text}
  End;
  Modified:=Not Message.SelectAll;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMSaveChanges(Var Message:TMessage);
Begin
  String(Pointer(Message.wParam)^):=Text;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.DMShowEditor(Var Message:TDMShowEditor);
Begin
  With Message.ShowEditorRec^ Do
  begin
    Self.Font := CellFont;
    Self.Color := Color;
  end;
  Show;
  UpdateEditorBounds;
  SetFocus;
End;

{---------------------------------------------------------}

Function TDCCustomTreeSimpleEditor.GetBaseRect(AText:PChar;Const ARect:TRect):TRect;
Begin
  Result:=Bounds(ARect.Left,ARect.Top,ARect.Right-ARect.Left,
                 GetEditorHeight(FCanvas,AText));
  If Result.Bottom<ARect.Bottom Then
    VCenterRect(Result,ARect);
End;

{---------------------------------------------------------}

Function TDCCustomTreeSimpleEditor.GetEditorBounds(Const ARect:TRect):TRect;
Begin
  Result:=GetBaseRect(PChar(Text),ARect);
  If BorderStyle=bsSingle Then
    InflateRect(Result,0,TextSpace+GetSystemMetrics(SM_CYBORDER))
  Else
    InflateRect(Result,-TextSpace-GetSystemMetrics(SM_CXBORDER),0);
  CorrectRectInRect(Result,FControl.ClientRect);
End;

{---------------------------------------------------------}

Function TDCCustomTreeSimpleEditor.GetEditorHeight(Canvas:TCanvas;AText:PChar):Integer;
Begin
  Result:=GetFontHeight(Canvas.Font)
End;

{---------------------------------------------------------}

Function TDCCustomTreeSimpleEditor.GetEditorWidth(Canvas:TCanvas;AText:PChar):Integer;
Var
  tm:TTextMetric;
Begin
  GetTextMetrics(Canvas.Handle,tm);
  Result:=Canvas.TextWidth(AText)+tm.tmOverhang;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.ParentSendMessage(Msg:Cardinal);
Begin
  FControl.Perform(Msg,0,0);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.UpdateEditorBounds;
Begin
  BoundsRect:=GetEditorBounds(FRect);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.WMGetDlgCode(Var Message:TMessage);
Begin
  Message.Result:=DLGC_WANTALLKEYS Or DLGC_WANTARROWS Or DLGC_WANTCHARS;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.WMKeyDown(Var Message:TMessage);
Begin
  Case Message.wParam Of
    VK_ESCAPE:
      ParentSendMessage(DM_CANCELCHANGES);
    VK_RETURN:
      ParentSendMessage(DM_SAVECHANGES);
    Else
      Inherited;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.WMKeyPress(Var Message:TWMKey);
Begin
  If (Message.CharCode=VK_ESCAPE) Or (Message.CharCode=VK_RETURN) Then
    Exit;//to ignore beep
  If FControl Is TWinControl Then
    _TWinControl(FControl).DoKeyPress(Message);
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeSimpleEditor.WMKillFocus(Var Message:TMessage);
Begin
  ParentSendMessage(DM_KILLFOCUS);
  Inherited;
End;

{ TDCTreeSimpleEditor }

Procedure TDCTreeSimpleEditor.Change;
Begin
  Inherited;
  UpdateEditorBounds;
End;

{---------------------------------------------------------}

Function TDCTreeSimpleEditor.GetBaseRect(AText:PChar;Const ARect:TRect):TRect;
Begin
  Result:=Inherited GetBaseRect(AText,ARect);
  Result.Right:=Result.Left+GetEditorWidth(FCanvas,AText);
End;

{---------------------------------------------------------}

Function TDCTreeSimpleEditor.GetEditorBounds(Const ARect:TRect):TRect;
Var
  tm:TTextMetric;
Begin
  GetTextMetrics(FCanvas.Handle,tm);
  Result:=Inherited GetEditorBounds(ARect);
  Inc(Result.Right,TextSpace*2+GetSystemMetrics(SM_CXBORDER)*2+tm.tmMaxCharWidth);
  CorrectRectInRect(Result,FControl.ClientRect);
End;

{ TDCCustomTreeMemoEditor }

Constructor TDCCustomTreeMemoEditor.Create(AOwner:TComponent);
Begin
  Inherited;
  Ctl3D:=False;
  ParentCtl3D:=False;
  WordWrap:=False;
  ControlStyle:=ControlStyle+[csNoDesignVisible];
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMCancelChanges(Var Message:TMessage);
Begin
  Modified:=False;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMDraw(Var Message:TDMDraw);
Var
  ARect:TRect;
Begin
  With Message.DrawRec^ Do
  Begin
    FWordWrap:=WordWrap;
    ARect:=DrawRect^;
    InflateRect(ARect,-TextSpace,-TextSpace);
    ARect:=GetBaseRect(Text,ARect);
    DrawMultiLineText(Message.Canvas,Text,ARect,FWordWrap);
    Message.Canvas.FillRectExclude(DrawRect^,ARect);
    Message.Result:=-1;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMGetModified(Var Message:TMessage);
Begin
  Message.Result:=Integer(Modified);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMHideEditor(Var Message:TMessage);
Begin
  Hide;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMSetCanvas(Var Message:TMessage);
Begin
  FCanvas:= TCanvas( Message.wParam );
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMSetOtherInfo(Var Message:TDMSetOtherInfo);
Begin
  With Message.Info^ Do
  Begin
    Self.WordWrap:=WordWrap;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMSetParent(Var Message:TDMSetParent);
Begin
  FControl:=Message.Parent;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMSetRect(Var Message:TDMSetRect);
Begin
  FRect:=Message.ARect^;
  If Message.Bordered Then
    BorderStyle:=bsSingle
  Else
    BorderStyle:=bsNone;
  UpdateEditorBounds;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMSetText(Var Message:TDMSetText);
Begin
  Lines.Text:=Message.Text;
  If Not Message.SelectAll Then
  Begin
    SelStart:=0;//to scroll at begin of text
    SelStart:=Length(Text);//to set cursor at end of text}
  End;
  Modified:=Not Message.SelectAll;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMSaveChanges(Var Message:TMessage);
Begin
  String(Pointer(Message.wParam)^):=Lines.Text;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.DMShowEditor(Var Message:TDMShowEditor);
Var
  ARect:TRect;
Begin
  With Message.ShowEditorRec^ Do
  begin
    Self.Font := CellFont;
    Self.Color := Color;
    ARect:=ClientRect;
    SendMessage(Handle,EM_SETRECTNP,0,Integer(@ARect));//to avoid problem with font.size>16
  end;

  Show;
  UpdateEditorBounds;
  SelectAll;
  SendMessage(Handle,EM_SCROLLCARET,0,0);
  SetFocus;
End;

{---------------------------------------------------------}

Function TDCCustomTreeMemoEditor.GetBaseRect(AText:PChar;Const ARect:TRect):TRect;
Begin
  Result:=Bounds(ARect.Left,ARect.Top,ARect.Right-ARect.Left,
                 GetEditorHeight(FCanvas,AText,ARect));
  If Result.Bottom<ARect.Bottom Then
    VCenterRect(Result,ARect);
End;

{---------------------------------------------------------}

Function TDCCustomTreeMemoEditor.GetEditorBounds(Const ARect:TRect):TRect;
Begin
  Result:=GetBaseRect(PChar(Text),ARect);
  If BorderStyle=bsSingle Then
    InflateRect(Result,0,TextSpace+GetSystemMetrics(SM_CYBORDER))
  Else
    InflateRect(Result,-TextSpace-GetSystemMetrics(SM_CXBORDER),0);
  CorrectRectInRect(Result,FControl.ClientRect);
End;

{---------------------------------------------------------}

Function TDCCustomTreeMemoEditor.GetEditorHeight(Canvas:TCanvas;AText:PChar;ARect:TRect):Integer;
Begin
  Result:=(GetMultiLineTextHeight(Canvas,AText,ARect.Right-ARect.Left,FWordWrap)+1) And Not 1;
End;

{---------------------------------------------------------}

Function TDCCustomTreeMemoEditor.GetEditorWidth(Canvas:TCanvas;AText:PChar;ARect:TRect):Integer;
Begin
  Result:=GetMultiLineTextWidth(Canvas,AText,ARect.Right-ARect.Left,FWordWrap);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.ParentSendMessage(Msg:Cardinal);
Begin
  FControl.Perform(Msg,0,0);
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.UpdateEditorBounds;
Var
  ARect:TRect;
Begin
  ARect:=FRect;
  InflateRect(ARect,-FocusSpace-TextSpace,0);
  ARect:=GetEditorBounds(ARect);
  InflateRect(ARect,FocusSpace+TextSpace,0);
  BoundsRect:=ARect;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.WMGetDlgCode(Var Message:TMessage);
Begin
  Message.Result:=DLGC_WANTALLKEYS Or DLGC_WANTARROWS Or DLGC_WANTCHARS;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.WMKeyDown(Var Message:TWMKey);
Begin
  Case Message.CharCode  Of
    VK_ESCAPE:
      ParentSendMessage(DM_CANCELCHANGES);
    VK_RETURN:
      If Not (ssCtrl In KeyDataToShiftState(Message.KeyData)) Then
        ParentSendMessage(DM_SAVECHANGES);
    Else
      Inherited;
  End;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.WMKeyPress(Var Message:TMessage);
Begin
  If (Message.wParam=VK_ESCAPE) Or (Message.wParam=VK_RETURN) Then
    Exit;//to ignore beep
  FControl.Perform(Message.Msg,Message.wParam,Message.lParam);
  Inherited;
End;

{---------------------------------------------------------}

Procedure TDCCustomTreeMemoEditor.WMKillFocus(Var Message:TMessage);
Begin
  ParentSendMessage(DM_KILLFOCUS);
  Inherited;
End;

{ TDCTreeMemoEditor }

Procedure TDCTreeMemoEditor.Change;
Begin
  Inherited;
  UpdateEditorBounds;
End;

{---------------------------------------------------------}

Function TDCTreeMemoEditor.GetBaseRect(AText:PChar;Const ARect:TRect):TRect;
Begin
  Result:=Inherited GetBaseRect(AText,ARect);
  Result.Right:=Result.Left+GetEditorWidth(FCanvas,AText,ARect);
End;

{---------------------------------------------------------}

Function TDCTreeMemoEditor.GetEditorBounds(Const ARect:TRect):TRect;
Var
  tm:TTextMetric;
Begin
  GetTextMetrics(FCanvas.Handle,tm);
  Result:=Inherited GetEditorBounds(ARect);
  Inc(Result.Right,TextSpace*2+GetSystemMetrics(SM_CXBORDER)*2+tm.tmMaxCharWidth);
  Inc(Result.Bottom,tm.tmHeight);
  CorrectRectInRect(Result,FControl.ClientRect);
End;

Procedure RegisterClass(AClass:TPersistentClass);
Begin
  If GetClass(AClass.ClassName)=Nil Then
    RegisterClasses([AClass]);
End;

Initialization
  RegisterClass(TFont);
  RegisterClass(TDCTreeNode);

end.



