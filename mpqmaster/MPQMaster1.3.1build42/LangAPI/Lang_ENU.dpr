library Lang_ENU;

{$R *.res}

uses
  Windows,
  LangAPI;

var
  Language: TLangStruct;

Exports
  Language;

begin
  with Language do
  begin
  //Global Settings
    LanguageID := $409;
    FontName := 'Courier New';
    BtnOK := 'OK';
    BtnCancel := 'Cancel';
    TxtBytes := ' Bytes';
    TxtDir := 'Directory';

  //Main Form Settings
    //Main Menu Strings
    MenuFile := '&File';
    MenuNew := '&New'#9'Ctrl+N';
    MenuOpen := '&Open'#9'Ctrl+O';
    MenuReopen := '&Reopen';
    MenuClose := '&Close';
    MenuHistory := 'History';
    MenuInfo := '&Info';
    MenuQuit := '&Quit'#9'Alt+Q';
    MenuView := '&View';
    MenuToolbar := '&Toolbar';
    MenuPreview := '&Preview';
    MenuLargeIcon := 'Lar&ge Icon';
    MenuSmallIcon := 'S&mall Icon';
    MenuList := '&List';
    MenuDetail := '&Detail';
    MenuOperation := '&Operation';
    MenuOpenFile := '&Open';
    MenuOpenWith := 'Open &With...';
    MenuExtract := '&Extract'#9'Ctrl+E';
    MenuRename := '&Rename'#9'F2';
    MenuDelete := '&Delete'#9'Delete';
    MenuProperty := '&Property'#9'Alt+Enter';
    MenuNewFolder := '&New Folder';
    MenuAddFile := '&Add File(s)';
    MenuAddDir := 'Add Direc&tory';
    MenuListfile := 'Select &Listfile';
    MenuExtractAll := 'E&xtract all';
    MenuCompact := '&Compact(Flush)';
    MenuOption := 'O&ption';
    MenuFTOptions := 'File Type &Options'#9'F6';
    MenuLanguage := 'Language';
    MenuHelp := '&Help';
    MenuAbout := '&About';

    //Popup Menu Strings
    PopOpenFile := '&Open';
    PopOpenWith := 'Open &With...';
    PopExtract := '&Extract';
    PopRename := '&Rename';
    PopDelete := '&Delete';
    PopProperty := '&Property';
    PopNewFolder := '&New Folder';
    PopAddFile := '&Add File(s)';
    PopAddDir := 'Add Direc&tory';

    //Dialog Titles
    DialogAdd := 'Add File(s)';
    DialogOpen := 'Open Archive';
    DialogNew := 'New Archive';
    DialogAddFilter := 'Any Files|*.*';
    DialogOpenFilter := 'All Supported Types|*.mpq;*.sv*.hsv;*.scm;*.scx;*.snp;*.w3m;*.w3x;*.w3n;*.exe|MPQ Archives (*.mpq)|*.mpq|Diablo Saves (*.sv)|*.sv|Hellfire Saves (*.hsv)|*.hsv|Starcraft Maps (*.scm)|*.scm|Brood War Maps (*.scx)|*.scx|Warcraft III Maps (*.w3m)|*.w3m|Frozen' + ' Throne Maps (*.w3x)|*.w3x|Warcraft III Campaigns (*.w3n)|*.w3n|Executable Files (*.exe)|*.exe|Starcraft Battle.net Protocols (*.snp)|*.snp|All Files (*.*)|*.*';
    DialogNewFilter := 'MPQ Archives (*.mpq)|*.mpq';

    //File List Titles
    ListFilename := 'Filename';
    ListOrgSize := 'Origin Size';
    ListCompSize := 'Compressed';
    ListRatio := 'Ratio';
    ListAttr := 'Attributes';

    //Label strings
    MainFilter := 'Filter';

    //Other Strings
    MainErrorOpen := 'Error opening archive!';
    MainSorting := 'Sorting...';
    MainListing := 'Listing...';
    MainFinish := 'Done. Costs ';
    MainFinish2 := ' ms';
    MainFiles := ' Files';
    MainFolders := ' Folders';
    MainIsFolder := 'This is just a folder!';
    MainErrorCreate := 'Error creating archive!';
    MainChecking := 'Checking file ';
    MainCompacting := 'Compacting file ';
    MainClosing := 'Closing archive...';
    MainExtractTo := 'Extract to ...';
    MainFailExtract := 'Failed to extract file ';
    MainExtracting := 'Extracting file ';
    MainDelete := 'Delete selected files?';
    MainDeleteTitle := 'Delete';
    MainAddFile := ' file(s) added and ';
    MainAddFile2 := ' file(s) replaced. ';
    MainAdded := 'Added file: ';
    MainReplaced := 'Replaced file: ';
    MainFailAdd := 'Failed to add file: ';
    MainRename := 'Confirm to rename ';
    MainRename2 := ' to ';
    MainRenameTitle := 'Rename';
    MainFailRenameDir := 'Failed to rename directory!';
    MainMerged := 'Directory merged!';
    MainDirRenamed := 'Directory renamed!';
    MainFileRenamed := 'File renamed!';
    MainFailRenameFile := 'Failed to rename file!';
    MainNewFolder := 'New Folder';
    MainAddFrom := 'Add from ...';

  //MPQ Info Form Settings
    MPQInfoTitle := 'MPQ Information';

    //Label Strings
    InfoHashTableSize := 'Hashtable Size:';
    InfoArchSize := 'Archive Size:';
    InfoFileCount := 'File Count:';
    InfoArchName := 'Archive Name:';
    InfoBlockTableSize := 'Blocktable Size:';
    InfoBlockSize := 'Block Size:';

  //New Archive Form Settings
    NewArchTitle := 'New Archive';

    //Label Strings
    NewArchHashTableSize := 'Hash Table Size:';
    NewArchBlockSize := 'Block Size:';

  //File Type Options Form Settings
    FTOptionTitle := 'File Type Options';

    //Label Strings
    FTOptionExt := 'File Extension:';
    FTOptionComp := 'Compression:';

    //List Titles
    ListExt := 'File Extension';
    ListComp := 'Compression';
    ListEncrypt := 'Encrypt';
    ListFixSeed := 'Fix Seed';

    //Button Strings
    BtnAddUpdate := '&Add/Update';
    BtnDelete := '&Delete';
    BtnClose := '&Close';

    //Checkbox Strings
    CheckEncrypt := 'Encrypt';
    CheckFixSeed := 'Fix Seed';

    //ComboBox Strings
    ComboNone := 'None';
    ComboPKWare := 'PKWare DCL';
    ComboMulti := 'Multi Type';
    ComboWaveHigh := 'Wave (High)';
    ComboWaveMed := 'Wave (Med)';
    ComboWaveLow := 'Wave (Low)';

    //Other Strings
    FTOptionYes := 'yes';
    FTOptionNo := 'no';

  //Property Form Settings
    PropTitle := 'Property';

    //Tab Strings
    TabGeneral := 'General';
    TabAdv := 'Advance';

    //Label Strings
    PropFilename := 'Filename:';
    PropFileSize := 'File Size:';
    PropCompress := 'Compressed:';
    PropAttr := 'Attributes:';
    PropLocale := 'Locale:';
    PropHashIndex := 'Hash Index:';
    PropBlockIndex := 'Block Index:';
    PropPosition := 'Position:';
    PropHash1 := 'Hash Value1:';
    PropHash2 := 'Hash Value2:';
    PropFileSeed := 'File Seed:';
    PropFixedSeed := 'Fixed Seed:';

    //Other Strings
    PropPKWare := 'PKWare DCL Compressed';
    PropMulti := 'Multi Types Compressed';
    PropNotComp := 'Not compressed';
    PropEncrypt := 'Encrypted';
    PropFixSeed := 'Fixed Seed';
    PropNeutral := 'Neutral';

  //Select Listfile Form Settings
    SelListFileTitle := 'Select Listfile';

    //Text Strings
    TxtNative := '(Use Native Listfile)';
  end;
end.
