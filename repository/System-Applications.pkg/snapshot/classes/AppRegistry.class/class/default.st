
!AppRegistry class methodsFor: 'singleton'!
default
	^ default ifNil: [self askForDefault]! !
