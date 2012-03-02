
!HostSystemMenusMacOSX methodsFor: 'accessing-menuBar'!
disposeMenuBar: aWindowIndex
	self error: 'Should not be reached right now'
	"(self isVMMenuBar: aWindowIndex) ifTrue: [^self].
	menuBar ifNotNil: [self primDisposeMenuBar: menuBar].
	menuBar := nil"! !
