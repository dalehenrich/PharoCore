
!EntryCompletion methodsFor: 'accessing'!
filterBlock

	^ filterBlock ifNil: [filterBlock := [:currApplicant  :currText | true]]! !
