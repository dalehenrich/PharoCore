
!FindReplaceService methodsFor: 'accessing'!
isRegex: aBoolean
	isRegex := aBoolean.
	self changed: #findPolicy
! !
