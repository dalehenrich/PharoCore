
!TraitComposition methodsFor: 'printing'!
printString
	^String streamContents: [:stream |
		self printOn: stream]! !