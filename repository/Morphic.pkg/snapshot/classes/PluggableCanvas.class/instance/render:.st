
!PluggableCanvas methodsFor: 'drawing'!
render: anObject
	self apply: [ :c |
		c render: anObject ]! !
