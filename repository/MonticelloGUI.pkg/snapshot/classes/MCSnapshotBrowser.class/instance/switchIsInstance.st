
!MCSnapshotBrowser methodsFor: 'switch'!
switchIsInstance
	switch ifNil: [switch := #instance].
	^ switch = #instance.! !
