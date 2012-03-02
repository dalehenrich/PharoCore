
!FlatMessageListBrowser class methodsFor: 'deprecated'!
byDateDescendingOn: aMessageList

	^self 
		on: aMessageList 
		groupedUsing: aMessageList byDateDescendingSelector.! !
