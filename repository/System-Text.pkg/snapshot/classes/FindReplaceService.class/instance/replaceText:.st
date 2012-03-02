
!FindReplaceService methodsFor: 'accessing'!
replaceText: aStringOrText
	replaceText := aStringOrText asString.
	self changed: #findPolicy
! !
