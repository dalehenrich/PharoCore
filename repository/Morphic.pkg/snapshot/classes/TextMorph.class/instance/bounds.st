
!TextMorph methodsFor: 'geometry'!
bounds
	container ifNil: [^ bounds].
	^ container bounds ifNil: [bounds]! !
