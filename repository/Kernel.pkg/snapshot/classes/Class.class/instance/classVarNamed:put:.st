
!Class methodsFor: 'class variables'!
classVarNamed: name put: anObject
	"Store anObject in the class variable."
	
	| symbol |
	symbol := name asSymbol.
	(self classPool includesKey: symbol) ifFalse:  [^self error: 'no such lass var'].
	self classPool at: symbol put: anObject.! !
