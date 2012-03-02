
!MCSnapshotBrowser methodsFor: 'accessing'!
extensionClassNames
	^ (self allClassNames difference: self packageClassNames) asSortedCollection! !
