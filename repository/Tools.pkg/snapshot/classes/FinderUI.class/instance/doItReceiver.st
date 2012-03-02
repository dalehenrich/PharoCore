
!FinderUI methodsFor: 'do it requirements'!
doItReceiver

	^ self selectedClass ifNotNil: [:selectedClass | selectedClass theNonMetaClass].! !
