
!TimeProfiler methodsFor: 'as yet unclassified'!
selectedClass
	^ self selectedNode 
		ifNotNil: [ :currNode | currNode methodClass]! !
