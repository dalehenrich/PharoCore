
!MCVersionSorter methodsFor: 'as yet unclassified'!
stepParentsOf: aVersionInfo
	^ (stepparents at: aVersionInfo ifAbsentPut: [Set new])! !
