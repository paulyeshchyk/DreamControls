�
 TFMCUSTVIEW 0�  TPF0TfmCustView
fmCustViewLeftTop_BorderStylebsSingleCaptionCustomers - UnfilteredClientHeightjClientWidth�Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Menu	MainMenu1ScaledPixelsPerInch`
TextHeight TLabelLabel3LeftTop� Width]HeightCaptionOrders QueryFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2LeftTop$WidthJHeightCaption	CustomersFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TSpeedButtonSpeedButton1Left	Top� Width`HeightCaptionFilter &Customers	NumGlyphsOnClickSpeedButton1Click  
TStatusBar
StatusBar1Left TopWWidth�HeightPanels SimplePanel  TDBGridDBGrid2Left� Top� Width^Height� 
DataSourceOrdersSourceTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnEnterDBGrid2EnterColumns	FieldNameOrderNo 	FieldNameCustnoTitle.CaptionCustNoWidth- 	FieldName
AmountPaidTitle.CaptionAmount PaidWidthz 	FieldNameShipDateTitle.Caption	Ship DateWidthS    TDBNavigatorDBNavigator1Left� TopWidthXHeight
DataSourceCustomerSourceVisibleButtonsnbFirstnbPriornbNextnbLast TabOrder  TRadioGroup	rgDataSetLeftTop<WidthaHeight=CaptionDataset	ItemIndexItems.Strings&Query-Based&Table-Based TabOrderOnClickrgDataSetClick  TDBGridDBGrid1Left� Top!Width^Height� 
DataSourceCustomerSourceTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style OnEnterDBGrid1EnterColumns	FieldNameCustNoWidth+ 	FieldNameCompanyWidth�  	FieldNameCountry 	FieldNameLastInvoiceDateTitle.CaptionLast Invoice 	FieldNameContact 	FieldNameCity 	FieldNameState    	TGroupBox	GroupBox1LeftTop� WidthyHeightQCaptionOrders FilterTabOrder TLabelLabel1LeftTop4Width<HeightCaptionAmount &PaidFocusControlEdit1  	TCheckBoxcbFilterOrdersLeftTopWidthmHeightCaption&FilterTabOrder OnClickcbFilterOrdersClick  TEditEdit1LeftDTop0Width1HeightTabOrderText1000OnChangeEdit1Change   	TMainMenu	MainMenu1LefthTop 	TMenuItemAbout1Caption&AboutOnClickAbout1Click   TTableCustomerActive	Filtered	DatabaseNameDBDEMOSIndexFieldNamesCompany	TableNameCUSTOMER.DBLeftTop	  TDataSourceCustomerSourceDataSetCustomerLeft?Top	  TQuerySQLCustomerActive	DatabaseNameDBDEMOSSQL.StringsSELECT * FROM "CUSTOMER.DB"  Left�Top  TQuery	SQLOrdersActive	DatabaseNameDBDEMOS
DataSourceCustomerSourceSQL.Strings,Select * From Orders Where Custno = :CustNo  Params.Data
     CustNo       ��@  Left TFloatFieldSQLOrdersOrderNoDisplayWidth
	FieldNameOrderNo  TFloatFieldSQLOrdersCustnoDisplayWidth	FieldNameCustno  TCurrencyFieldSQLOrdersAmountPaidDisplayWidth	FieldName
AmountPaid  TDateTimeFieldSQLOrdersSaleDate	AlignmenttaRightJustifyDisplayWidth
	FieldNameSaleDate  TDateTimeFieldSQLOrdersShipDate	AlignmenttaRightJustifyDisplayWidth
	FieldNameShipDate  TIntegerFieldSQLOrdersEmpNoDisplayWidth	FieldNameEmpNo   TDataSourceOrdersSourceDataSet	SQLOrdersLeft@   