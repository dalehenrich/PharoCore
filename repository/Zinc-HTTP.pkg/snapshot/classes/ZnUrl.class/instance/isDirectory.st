
!ZnUrl methodsFor: 'testing'!
isDirectory
	^ self hasPath 
		ifTrue: [ segments last = #/ ]
		ifFalse: [ true ]
	! !
