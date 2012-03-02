
!ScriptLoader methodsFor: 'mc related utils'!
currentVersions
	"ScriptLoader new currentVersions"
	
	| copies |
	copies := MCWorkingCopy allManagers asSortedCollection:
		[ :a :b | a package name <= b package name ].
	^ copies collect:
		[:ea |  ea ancestry ancestorString ]! !
