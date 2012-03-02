
!MessageNames methodsFor: 'selector list'!
selectorList
	"Answer the selectorList"

	selectorList ifNil:
		[self computeSelectorListFromSearchString.
		selectorListIndex :=  selectorList size > 0
			ifTrue:	[1]
			ifFalse: [0].
		messageList := nil].
	^ selectorList! !
