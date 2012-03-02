
!MCVersionReader methodsFor: 'accessing'!
definitions
	definitions ifNil: [self loadDefinitions].
	^ definitions! !
