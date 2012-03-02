
!ServerDirectory class methodsFor: 'server groups'!
serversInGroupNamed: nameString
	"Return the servers in the group of this name."
	"ServerDirectory serversInGroupNamed: 'Squeak Public Updates' "

	^self servers values select: [:server |
		nameString = server groupName].
! !
