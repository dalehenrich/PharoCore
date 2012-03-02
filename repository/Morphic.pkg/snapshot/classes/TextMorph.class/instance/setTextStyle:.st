
!TextMorph methodsFor: 'initialization'!
setTextStyle: aTextStyle

	textStyle := aTextStyle.
	self releaseCachedState; changed! !
