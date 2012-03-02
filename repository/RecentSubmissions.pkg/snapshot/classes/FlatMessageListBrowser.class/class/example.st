
!FlatMessageListBrowser class methodsFor: 'example'!
example
	"self example"

	| ml mlb |
	ml := MessageList new.
	(SystemNavigation new allCallsOn: #printOn:) do: [:each | 
		ml addMethodReference: each ].

	mlb := self on: ml named: ('Senders of #printOn: [', ml size printString,']').

	mlb open! !
