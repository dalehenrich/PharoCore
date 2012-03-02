
!ScriptLoader methodsFor: 'mc related utils'!
allCurrentPackages
	"ScriptLoader new allCurrentPackages" 
	
	| copies |
	copies := MCWorkingCopy allManagers asSortedCollection:
		[ :a :b | a package name <= b package name ].
	^ copies! !
