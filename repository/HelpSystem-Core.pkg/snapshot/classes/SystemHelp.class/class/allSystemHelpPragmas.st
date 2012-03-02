
!SystemHelp class methodsFor: 'private accessing'!
allSystemHelpPragmas
	^(PragmaCollector filter: [:prag | prag keyword = self pragmaKeyword ]) reset collected
! !
