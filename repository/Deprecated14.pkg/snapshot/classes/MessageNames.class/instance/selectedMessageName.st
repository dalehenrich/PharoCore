
!MessageNames methodsFor: 'selection'!
selectedMessageName
	^selectorListIndex = 0 ifFalse: [selectorList at: selectorListIndex]! !
