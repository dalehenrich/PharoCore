
!SmalltalkImage methodsFor: 'PharoKernel-private'!
privCleanStartUpList

	#( #NaturalLanguageTranslator 
	 	#ShortIntegerArray #ShortRunArray #PasteUpMorph #SecurityManager 
		 #FreeTypeFontProvider  #UUIDGenerator #ProcessBrowser 
		 #CPUWatcher #DateAndTime #HostSystemMenus #MenuIcons
		 #InternetConfiguration  #CommandHistory #HostWindowProxy #FreeTypeSettings 
		 #UITheme #CodeLoader #ZnServer #MCWorkingCopy #RecentMessageList 
		 #EditorFindReplaceDialogWindow #CodeUpdate) 
	do: [:className |
		Smalltalk removeFromStartUpList: (Smalltalk classNamed: className)].! !
