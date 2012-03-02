
!HostSystemMenusProxy class methodsFor: 'registery'!
unregister: anObject
	
	^self registry remove: anObject ifAbsent:[]! !
