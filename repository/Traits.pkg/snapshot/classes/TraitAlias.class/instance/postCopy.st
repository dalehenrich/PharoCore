
!TraitAlias methodsFor: 'copying'!
postCopy
	super postCopy.
	aliases := self aliases copy! !
