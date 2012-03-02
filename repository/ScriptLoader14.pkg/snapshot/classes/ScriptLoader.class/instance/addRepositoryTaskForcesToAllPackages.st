
!ScriptLoader methodsFor: 'mc related utils'!
addRepositoryTaskForcesToAllPackages
	"self new addRepositoryTaskForcesToAllPackages"
	
	MCWorkingCopy allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repositoryTaskForces
			].
	
	! !
