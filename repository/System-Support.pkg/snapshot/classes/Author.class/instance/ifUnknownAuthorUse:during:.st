
!Author methodsFor: 'compatibility'!
ifUnknownAuthorUse: aString during: aBlock
	"If no author is set use the name aString while executing aBlock."
	"for compatibility with 1.0"
	
	| previous |
	fullName isEmptyOrNil ifFalse: [ ^ aBlock value ].
	fullName := aString.
	^ aBlock ensure: [ self reset ]! !
