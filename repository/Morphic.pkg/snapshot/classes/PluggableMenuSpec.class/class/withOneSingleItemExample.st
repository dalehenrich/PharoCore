
!PluggableMenuSpec class methodsFor: 'example'!
withOneSingleItemExample
	"self withOneSingleItemExample"
	
	| s |
	s := (self withModel: nil ) label: 'Hello'. 
	s add: 'Print Hello' action: (MessageSend receiver: [Transcript show: 'Hello', String cr] selector: #value).
	s asMenuMorph popUpInWorld! !
