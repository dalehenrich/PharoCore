
!FSHandleTest methodsFor: 'tests'!
testClose
	handle close.
	self deny: handle isOpen
	! !
