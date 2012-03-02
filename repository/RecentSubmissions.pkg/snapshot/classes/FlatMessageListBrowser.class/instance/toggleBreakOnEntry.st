
!FlatMessageListBrowser methodsFor: 'menus'!
toggleBreakOnEntry
	"Install or uninstall a halt-on-entry breakpoint"

	| selectedMethod |
	self selectedClassOrMetaClass isNil ifTrue: [^self].
	selectedMethod := self selectedClassOrMetaClass >> self selectedSelector.
	selectedMethod hasBreakpoint
		ifTrue: [BreakpointManager unInstall: selectedMethod]
		ifFalse: [BreakpointManager 
					installInClass: self selectedClassOrMetaClass
					selector: self selectedSelector].! !
