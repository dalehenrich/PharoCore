
!DefaultSettingStyle methodsFor: 'loading'!
load
	SystemBrowser default: Browser.
	CodeHolder browseWithPrettyPrint: false.
	CodeHolder showAnnotationPane: false.
	ChangeSet mustCheckForSlips: true.
	CodeHolder diffsInChangeList: true.
	CodeHolder diffsWithPrettyPrint: false.
	TextEditor caseSensitiveFinds: false.
	Editor blinkingCursor: true.
	Editor dumbbellCursor: false.
	TextEditor walkAlongDisplayedLine: true.
	CodeHolder smartUpdating: true.
	Parser warningAllowed: false.
	Parser allowBlockArgumentAssignment: false.
	Scanner allowUnderscoreAsAssignment: false.
	Deprecation raiseWarning: true.
	Deprecation showWarning: true.
	UserInterruptHandler cmdDotEnabled: true.
	CPUWatcher cpuWatcherEnabled: false.
	WorldState debugShowDamage: false.
	Debugger logDebuggerStackToFile: true.
	Debugger restartAlsoProceeds: false.
	Debugger alwaysOpenFullDebugger: false.
	ObjectExplorer showIcons: true.
	Debugger logFileName: 'PharoDebug.log'.
	DialogItemsChooserUI alreadySearchedUnselectedItemsListMaxSize: 15.
	DialogItemsChooserUI alreadySearchedSelectedItemsListMaxSize: 15.
	TextDiffBuilder ignoreLineEndings: true.
	Display fullscreen: false.
	FinderUI searchedTextListMaxSize: 15.
	FreeTypeSettings current monitorType: #LCD.
	FreeTypeSettings updateFontsAtImageStartup: false.
	FreeTypeCache current cacheSize: 5000.
	FreeTypeSettings current hintingSymbol: #Light.
	FreeTypeSettings current glyphContrast: 50.0.
	InputEventSensor controlAltKeyDecodePolicy: #FullMatching.
	LongTestCase shouldRun: true.
	MCCodeTool showAnnotationPane: false.
	NetworkSystemSettings useHTTPProxy: false.
	NonInteractiveUIManager snapshotErrorImage: false.
	PSMCPatchMorph usedByDefault: true.
	RealEstateAgent usedStrategy: #staggerFor:initialExtent:world:.
	SystemWindow fullscreenMargin: 25.
	TextEntryDialogWindow minimumWidth: 450.
	HaloMorph haloEnclosesFullBounds: false.
	HaloMorph showBoundsInHalo: false.
	UITheme currentAnimationSettings useAnimation: false.
	UITheme currentAnimationSettings animateClosing: false.
	UITheme currentAnimationSettings delay: 8.
	UITheme currentAnimationSettings numberOfSteps: 20.
	MorphicModel keyboardFocusOnMouseDown: true.
	MorphicModel mouseOverForKeyboardFocus: false.
	PluggableTextMorph showTextEditingState: true.
	StringMorph editableStringMorph: false.
	Morph defaultYellowButtonMenuEnabled: false.
	WorldState easySelectingWorld: false.
	PolymorphSystemSettings usePolymorphDiffMorph: true.
	PolymorphSystemSettings showDesktopLogo: true.
	PolymorphSystemSettings desktopLogoFileName: ''.
	PolymorphSystemSettings desktopColor: (Color r: 0.937 g: 0.937 b: 0.937).
	PolymorphSystemSettings useDesktopGradientFill: false.
	SoundService soundEnabled: false.
	RBProgramNode formatterClass: RBConfigurableFormatter.
	RecentMessageList uniqueInstance maxListSize: 0.
	RecentMessageList uniqueInstance useAsASet: false.
	RefactoryChangeManager undoSize: 20.
	SHPreferences enabled: true.
	WorldState serverMode: false.
	SmalltalkImage checkSourcesFileAvailability: true.
	SmalltalkImage checkChangesFileAvailability: true.
	Locale activated: false.
	TasklistMorph keepOpen: false.
	TaskbarMorph showTaskbar: true.
	TaskbarMorph showWindowPreview: true.
	
	StandardFonts setFontsToSmall.
	UITheme standardThemeClass beCurrent.
	UITheme current resetDefaultSettings.

	super load.
! !
