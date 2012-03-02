
!MCVersionInspector methodsFor: 'actions'!
save
	self pickRepository ifNotNil:
		[:ea |
		ea storeVersion: self version]! !
