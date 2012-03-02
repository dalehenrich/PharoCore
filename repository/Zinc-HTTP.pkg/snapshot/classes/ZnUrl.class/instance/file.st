
!ZnUrl methodsFor: 'accessing-path'!
file
	^ self isDirectory
		ifTrue: [ false ]
		ifFalse: [ segments last ]! !
