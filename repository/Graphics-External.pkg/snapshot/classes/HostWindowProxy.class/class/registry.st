
!HostWindowProxy class methodsFor: 'registry'!
registry
"boilerplate WeakRegistry usage"
	^Registry ifNil: [Registry := WeakRegistry new]! !
