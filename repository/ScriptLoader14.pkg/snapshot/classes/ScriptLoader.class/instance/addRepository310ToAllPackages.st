
!ScriptLoader methodsFor: 'private'!
addRepository310ToAllPackages
	"self new addRepository310ToAllPackages"
	
	MCWorkingCopy allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repository310
			].
	
	! !
