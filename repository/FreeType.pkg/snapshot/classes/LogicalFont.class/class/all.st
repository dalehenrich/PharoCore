
!LogicalFont class methodsFor: 'accessing'!
all
	^all ifNil:[
		all := WeakSet new
			addAll: self allInstances;
			yourself]! !
