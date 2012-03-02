
!MessageListNonInspectableNode methodsFor: 'action'!
removeMe

	self contents do: [:each | each removeMe].! !
