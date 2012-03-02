
!EntryCompletion methodsFor: 'accessing'!
dataSourceBlock
	^ dataSourceBlock ifNil: [dataSourceBlock := [:token | #()]]! !
