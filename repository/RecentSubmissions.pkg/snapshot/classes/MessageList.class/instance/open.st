
!MessageList methodsFor: 'as yet unclassified'!
open
	"opens the system window for recent messages"

	| browser |
	browser := MessageListBrowser on: self.
	browser open.! !
