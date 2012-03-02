
!ToolRegistry methodsFor: '*deprecated14'!
browseMessageSet: messageList name: title autoSelect: autoSelectString
	"Open a message set browser"
	self deprecated: 'Use browserMessageList' on:  '17 September 2011' in:  'Pharo1.4'.
	
	^ self using: #messageList do: [:tool |
		tool 
			openMessageList: messageList 
			name: title 
			autoSelect: autoSelectString ]	! !
