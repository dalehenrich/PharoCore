
!RGCommentDefinition methodsFor: 'testing'!
hasAuthorAlias

	^self hasStamp and:[ self authorAlias isEmptyOrNil not ]! !
