
!ToolRegistry methodsFor: '*deprecated14'!
browseSendersOf: aSymbol name: titleString autoSelect: autoSelectString
	self deprecated: 'Use Smalltalk tools messageList then a specific protocol like openMessageList:name:autoSelect:' on: '18 January 2012' in: 'Pharo1.4'.
	^self 
		browseMessageList: (SystemNavigation default allCallsOn: aSymbol) asSortedCollection
		name: titleString 
		autoSelect: autoSelectString! !
