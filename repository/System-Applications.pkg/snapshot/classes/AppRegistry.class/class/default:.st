
!AppRegistry class methodsFor: 'singleton'!
default: aClassOrNil
	"Sets my default to aClassOrNil. 
	Answers the old default."
	| oldDefault |
	oldDefault := default.
	aClassOrNil ifNotNil: [ self register: aClassOrNil ].
	default := aClassOrNil.
	^ oldDefault! !
