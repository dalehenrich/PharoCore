
!GoferOperationTest methodsFor: 'utilities'!
hasClass: aSymbol selector: aSelector
	^ (Smalltalk globals classNamed: aSymbol) includesSelector: aSelector! !
