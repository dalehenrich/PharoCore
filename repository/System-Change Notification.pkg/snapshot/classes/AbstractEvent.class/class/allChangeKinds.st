
!AbstractEvent class methodsFor: 'accessing'!
allChangeKinds
	"AbstractEvent allChangeKinds"

	^AbstractEvent allSubclasses collect: [:cl | cl changeKind]! !
