
!ServerDirectory methodsFor: 'server groups'!
openGroup
	"Open all servers in the group.  Don't forget to close later."

	self serversInGroup do: [:aDir | aDir wakeUp].
! !
