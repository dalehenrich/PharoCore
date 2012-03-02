
!ServerDirectory methodsFor: 'server groups'!
closeGroup
	"Close connection with all servers in the group."

	self serversInGroup do: [:aDir | aDir quit].
! !
