
!MCVersionSorter methodsFor: 'as yet unclassified'!
registerStepChildrenOf: aVersionInfo seen: aSet
	(aSet includes: aVersionInfo) ifTrue: [^ self].
	aSet add: aVersionInfo.
	aVersionInfo stepChildren do: [:ea | (self stepParentsOf: ea) add: aVersionInfo].
	aVersionInfo ancestors do: [:ea | self registerStepChildrenOf: ea seen: aSet].! !
