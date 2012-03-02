
!FlatMessageListBrowser class methodsFor: 'tool registry'!
openMessageList: messageList name: aString autoSelect: aSelector
	" Tool registry compitibility "

	| ml |
	ml := MessageList new methodReferenceList: messageList.
	(self on: ml named: aString autoSelect: aSelector) open! !
