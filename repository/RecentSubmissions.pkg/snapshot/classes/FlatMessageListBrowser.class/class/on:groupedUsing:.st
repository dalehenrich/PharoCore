
!FlatMessageListBrowser class methodsFor: 'deprecated'!
on: aMessageList groupedUsing: aSelector
	
	| association |
	association := (aMessageList perform: aSelector).
	^self new
		model: aMessageList

	! !
