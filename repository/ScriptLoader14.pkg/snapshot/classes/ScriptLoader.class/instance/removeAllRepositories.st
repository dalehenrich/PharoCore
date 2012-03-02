
!ScriptLoader methodsFor: 'mc related utils'!
removeAllRepositories
	"self new removeAllRepositories"
	
	MCWorkingCopy allManagers do: [:each |  each  repositoryGroup initialize].
	MCRepositoryGroup default initialize.
	! !
