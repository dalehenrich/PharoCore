
!TraitAlias methodsFor: 'composition'!
removeAlias: aSymbol
	self aliases: (self aliases
		reject: [:each | each key = aSymbol])! !
