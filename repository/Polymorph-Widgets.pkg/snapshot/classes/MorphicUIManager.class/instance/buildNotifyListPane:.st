
!MorphicUIManager methodsFor: 'debugger'!
buildNotifyListPane: aDebugger

	^ (PluggableMultiColumnListMorph
		on: aDebugger
		list: #contextStackList
		selected: #contextStackIndex
		changeSelected: #debugAt:
		menu: nil
		keystroke: nil
		wrapSelector: #createColumnsFor:)
		gapSize: 40;
		yourself! !
