
!MailAddressParser methodsFor: 'building address list'!
startNewAddress
	"set up data structures to begin a new address"
	(curAddrTokens ~~ nil) ifTrue: [
		self error: 'starting new address before finishing the last one!!' ].

	curAddrTokens := OrderedCollection new.
	! !
