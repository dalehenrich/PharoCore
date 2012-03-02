
!FSMemoryHandle methodsFor: 'public'!
close
	self truncateTo: size.
	bytes := nil! !
