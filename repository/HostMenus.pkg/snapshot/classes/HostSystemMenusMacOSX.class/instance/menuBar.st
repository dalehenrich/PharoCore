
!HostSystemMenusMacOSX methodsFor: 'accessing-menuBar'!
menuBar
	menuBar ifNil: 
			[menuBar := self primGetMenuBar].
	^menuBar! !
