
!SystemWindow methodsFor: 'menu'!
makeUnclosable
	mustNotClose := true.
	self deleteCloseBox! !
