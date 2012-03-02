
!NonInteractiveUIManager methodsFor: 'utils'!
quit
	[
		self class snapshotErrorImage ifTrue: [
			doNotQuitOnRestart := true.
			"make a new image version snapshot before leaving"
			Smalltalk saveAsNewVersion  ].
	] ensure: [ 
		doNotQuitOnRestart ifFalse: [ Smalltalk snapshot: false andQuit: true ].
		doNotQuitOnRestart := false.	
	 ].
	
	! !
