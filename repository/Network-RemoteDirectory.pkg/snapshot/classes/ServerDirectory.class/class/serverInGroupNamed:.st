
!ServerDirectory class methodsFor: 'server groups'!
serverInGroupNamed: groupName
	"Return the first (available) server in the group of this name."

	| servers |
	servers := self serversInGroupNamed: groupName.
	servers isEmpty
		ifTrue: [self error: 'No server found in group "' , groupName asString , '".'].
	^servers first! !
