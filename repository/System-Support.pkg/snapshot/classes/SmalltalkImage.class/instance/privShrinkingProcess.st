
!SmalltalkImage methodsFor: 'PharoKernel-private'!
privShrinkingProcess

	[
		| packages |
				
		10 timesRepeat: [
			(Delay forMilliseconds: 100) wait.
			Processor yield ].

		Author fullName: 'Mr.Shrinker'.

		self privCleanMonticello.

		UIManager default: DummyUIManager new.
		UIManager default progressBarEnabled: false.

		self privCleanProcesses.
		self privCleanGlobals.

		5 timesRepeat: [Smalltalk garbageCollect].

		DataStream initialize.

		Beeper instVarNamed: #default put: nil.

		Smalltalk cleanOutUndeclared.

		5 timesRepeat: [Smalltalk garbageCollect].

		Author reset.

		self privShrinkUnicodeTables.

		Display newDepth: 1.

		self privCleanStartUpList.
		self privCleanShutDownList.

		CommandLine removeRegistrationNamed: #CodeLoader.
		SimpleCodeLoader register.

		"move class Model to different category"
		Object subclass: #Model instanceVariableNames: 'dependents' classVariableNames: '' poolDictionaries: '' category: 'Kernel-Objects'.

		self privCleanTextConstants.

		SoundService default: nil.
		SoundService unregister: DummySoundSystem.

		ThreadSafeTranscript install.

		self privCleanUnloadMethods.

		SystemNavigation default removeAllButPackages: self kernelPackageNames.

		Smalltalk flushClassNameCache.
		3 timesRepeat: [
 			Smalltalk garbageCollect.
  			Symbol compactSymbolTable.].

		Undeclared removeUnreferencedKeys.
		self privRecompileAll.
		
		self privCleanChangeSets.
		
		SystemEventManager allInstances do: [:i | i instVarNamed: #actionMap put: IdentityDictionary new].

		FileServices removeObsolete.
		DebuggerMethodMap voidMapCache.

		Object flushEvents.

		DataStream initialize.

		Locale classPool at: #LocaleChangeListeners put: nil.
		SmalltalkImage classPool at: #Tools put: nil.

		Behavior flushObsoleteSubclasses.
		Smalltalk flushClassNameCache.
		Smalltalk organization removeEmptyCategories.

		WeakArray restartFinalizationProcess.

		"UIManager default progressBarEnabled: true."
		"Smalltalk condenseChanges."

		Smalltalk saveImageInNewContext.

	] ifError: [:e |
		| rep |
		rep := FileStream forceNewFileNamed: 'PharoDebug.log'.
		rep nextPutAll: 'PharoKernel shrinking report'; cr.
		rep nextPutAll: 'Error:'; cr.
		rep nextPutAll: e asString; cr.
		rep nextPutAll: thisContext stack size asString.
		thisContext stack copy withIndexDo: [:stck :i |
		[ rep nextPutAll: i asString; space; nextPutAll: stck asString; cr] ifError: []].
		rep close. 
		Smalltalk quitPrimitive ] 



! !
