
!Object methodsFor: 'system primitives'!
instVarNamed: aString
	"Return the value of the instance variable in me with that name.  Slow and unclean, but very useful. "

	^ self instVarAt: (self class
						instVarIndexFor: aString asString
						ifAbsent: [self error: 'no such inst var'])


! !
