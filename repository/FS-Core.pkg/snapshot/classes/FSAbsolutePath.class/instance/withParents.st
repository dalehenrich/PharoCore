
!FSAbsolutePath methodsFor: 'enumerating'!
withParents
	^ super withParents addFirst: (FSPath root); yourself! !
