
!ParseNode methodsFor: 'visiting'!
nodesDo: aBlock
	self accept: (ParseNodeEnumerator ofBlock: aBlock)! !
