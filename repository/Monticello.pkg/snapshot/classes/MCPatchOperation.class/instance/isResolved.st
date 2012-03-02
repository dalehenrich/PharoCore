
!MCPatchOperation methodsFor: 'testing'!
isResolved
	^ isConflict and: [ isApplicable notNil ]! !
