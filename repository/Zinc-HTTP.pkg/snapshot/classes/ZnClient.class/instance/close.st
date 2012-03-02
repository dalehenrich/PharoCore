
!ZnClient methodsFor: 'initialize-release'!
close
	"Close any HTTP network connection that I might have kept open."
	
	connection ifNotNil: [ 
		connection close.
		connection := state := nil ].
	lastUsed := nil! !
