
!CompilerNotifyingTest methodsFor: 'testing'!
testUnmatchedCommentQuote
	self setUpForErrorsIn: '1+2   ` Unmatched comment quote ->`"unfinished comment'.
	self enumerateAllSelections! !
