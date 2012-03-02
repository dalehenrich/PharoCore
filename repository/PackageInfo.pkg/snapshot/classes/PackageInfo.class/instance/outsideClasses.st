
!PackageInfo methodsFor: 'testing'!
outsideClasses
	^ProtoObject withAllSubclasses difference: self classesAndMetaClasses! !
