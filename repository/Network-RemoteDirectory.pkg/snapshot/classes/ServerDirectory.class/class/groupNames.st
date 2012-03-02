
!ServerDirectory class methodsFor: 'server groups'!
groupNames
	"Return the names of all registered groups of servers, including individual servers not in any group."
	"ServerDirectory groupNames"
	| names |
	names := Set new.
	self servers do: [:server |
		names add: server groupName].
	^names asArray sort
! !
