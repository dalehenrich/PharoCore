
!FSReference methodsFor: 'streams'!
readStreamIfAbsent: absentBlock
	^ self isFile
		ifTrue: [ self readStream ]
		ifFalse: [ absentBlock value ]! !