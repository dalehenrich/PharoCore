
!ToolRegistry methodsFor: '*deprecated14'!
browseMessageList: messageList name: title autoSelect: autoSelectString
	"Open a message set browser"
	self deprecated: 'Use Smalltalk tools messageList then a specific protocol like openMessageList:name:autoSelect:' on: '18 January 2012' in: 'Pharo1.4'.
	
	^ self using: #messageList do: [:tool |
		tool 
			openMessageList: messageList 
			name: title 
			autoSelect: autoSelectString ]	! !
