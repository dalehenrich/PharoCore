
!PluggableMenuSpec class methodsFor: 'example'!
withTwoSimpleItemsExample
	"self withTwoSimpleItemsExample"
	| s |
	s := (self withModel: Transcript ) label: 'Hello'. 
	s add: 'Print Hello' action: (MessageSend receiver: [Transcript show: 'Hello', String cr] selector: #value).
	s add: 'Print Hello again' selector: #show: argumentList: {'Hello again', String cr}.
	s asMenuMorph popUpInWorld! !
