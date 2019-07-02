unit LangAPI;

interface

uses Windows;

type
  PLangStruct = ^TLangStruct;
  TLangStruct = record
  //Global Settings
    LanguageID: LANGID;
    FontName: string;
    BtnOK: string;
    BtnCancel: string;
    TxtBytes: string;
    TxtDir: string;

  //Main Form Settings
    //Main Menu Strings
    MenuFile: string;
    MenuNew: string;
    MenuOpen: string;
    MenuReopen: string;
    MenuClose: string;
    MenuHistory: string;
    MenuInfo: string;
    MenuQuit: string;
    MenuView: string;
    MenuToolbar: string;
    MenuPreview: string;
    MenuLargeIcon: string;
    MenuSmallIcon: string;
    MenuList: string;
    MenuDetail: string;
    MenuOperation: string;
    MenuOpenFile: string;
    MenuOpenWith: string;
    MenuExtract: string;
    MenuRename: string;
    MenuDelete: string;
    MenuProperty: string;
    MenuNewFolder: string;
    MenuAddFile: string;
    MenuAddDir: string;
    MenuListfile: string;
    MenuExtractAll: string;
    MenuCompact: string;
    MenuOption: string;
    MenuFTOptions: string;
    MenuLanguage: string;
    MenuHelp: string;
    MenuAbout: string;

    //Popup Menu Strings
    PopOpenFile: string;
    PopOpenWith: string;
    PopExtract: string;
    PopRename: string;
    PopDelete: string;
    PopProperty: string;
    PopNewFolder: string;
    PopAddFile: string;
    PopAddDir: string;

    //Dialog Titles
    DialogAdd: string;
    DialogOpen: string;
    DialogNew: string;
    DialogAddFilter: string;
    DialogOpenFilter: string;
    DialogNewFilter: string;

    //File List Titles
    ListFilename: string;
    ListOrgSize: string;
    ListCompSize: string;
    ListRatio: string;
    ListAttr: string;

    //Label Strings
    MainFilter: string;

    //Other Strings
    MainErrorOpen: string;
    MainSorting: string;
    MainListing: string;
    MainFinish: string;
    MainFinish2: string;
    MainFiles: string;
    MainFolders: string;
    MainIsFolder: string;
    MainErrorCreate: string;
    MainChecking: string;
    MainCompacting: string;
    MainClosing: string;
    MainExtractTo: string;
    MainFailExtract: string;
    MainExtracting: string;
    MainDelete: string;
    MainDeleteTitle: string;
    MainAddFile: string;
    MainAddFile2: string;
    MainAdded: string;
    MainReplaced: string;
    MainFailAdd: string;
    MainRename: string;
    MainRename2: string;
    MainRenameTitle: string;
    MainFailRenameDir: string;
    MainMerged: string;
    MainDirRenamed: string;
    MainFileRenamed: string;
    MainFailRenameFile: string;
    MainNewFolder: string;
    MainAddFrom: string;

  //MPQ Info Form Settings
    MPQInfoTitle: string;

    //Label Strings
    InfoHashTableSize: string;
    InfoArchSize: string;
    InfoFileCount: string;
    InfoArchName: string;
    InfoBlockTableSize: string;
    InfoBlockSize: string;

  //New Archive Form Settings
    NewArchTitle: string;

    //Label Strings
    NewArchHashTableSize: string;
    NewArchBlockSize: string;

  //File Type Options Form Settings
    FTOptionTitle: string;

    //Label Strings
    FTOptionExt: string;
    FTOptionComp: string;

    //List Titles
    ListExt: string;
    ListComp: string;
    ListEncrypt: string;
    ListFixSeed: string;

    //Button Strings
    BtnAddUpdate: string;
    BtnDelete: string;
    BtnClose: string;

    //Checkbox Strings
    CheckEncrypt: string;
    CheckFixSeed: string;

    //ComboBox Strings
    ComboNone: string;
    ComboPKWare: string;
    ComboMulti: string;
    ComboWaveHigh: string;
    ComboWaveMed: string;
    ComboWaveLow: string;

    //Other Strings
    FTOptionYes: string;
    FTOptionNo: string;

  //Property Form Settings
    PropTitle: string;

    //Tab Strings
    TabGeneral: string;
    TabAdv: string;

    //Label Strings
    PropFilename: string;
    PropFileSize: string;
    PropCompress: string;
    PropAttr: string;
    PropLocale: string;
    PropHashIndex: string;
    PropBlockIndex: string;
    PropPosition: string;
    PropHash1: string;
    PropHash2: string;
    PropFileSeed: string;
    PropFixedSeed: string;

    //Other Strings
    PropPKWare: string;
    PropMulti: string;
    PropNotComp: string;
    PropEncrypt: string;
    PropFixSeed: string;
    PropNeutral: string;

  //Select Listfile Form Settings
    SelListFileTitle: string;

    //Text Strings
    TxtNative: string;

  //Replace Form Settings
    BtnYes: string;
    BtnNo: string;
    BtnYesToAll: string;
    BtnNoToAll: string;
    BtnRename: string;

    //Text Strings
    TxtReplace: string;
  end;

implementation

end.

