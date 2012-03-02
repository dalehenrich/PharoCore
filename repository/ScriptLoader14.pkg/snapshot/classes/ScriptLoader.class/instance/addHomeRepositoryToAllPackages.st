
!ScriptLoader methodsFor: 'mc related utils'!
addHomeRepositoryToAllPackages
	"self new addHomeRepositoryToAllPackages"
	
	MCWorkingCopy allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repository;
			 addRepository: self inboxRepository;
			addRepository: self repositoryTreated ].
		
	MCRepositoryGroup default
			 addRepository: self repository;
			 addRepository: self inboxRepository;
			 addRepository: self repositoryTreated.
	
		
	
	
	! !
