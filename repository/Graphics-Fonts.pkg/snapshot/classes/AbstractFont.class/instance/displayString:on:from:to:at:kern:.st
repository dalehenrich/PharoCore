
!AbstractFont methodsFor: 'displaying'!
displayString: aString on: aDisplayContext from: startIndex to: stopIndex at: aPoint kern: kernDelta
	"Draw the given string from startIndex to stopIndex 
	at aPoint on the (already prepared) display context."
	^self subclassResponsibility! !
