
!ObjectExplorer methodsFor: 'monitoring'!
monitorList
	^monitorList ifNil: [ monitorList := WeakIdentityKeyDictionary new ].! !