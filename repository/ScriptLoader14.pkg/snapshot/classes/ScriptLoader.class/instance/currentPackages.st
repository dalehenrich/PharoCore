
!ScriptLoader methodsFor: 'mc related utils'!
currentPackages
	"self new currentPackages" 
	
	
	| copies |
	copies := MCWorkingCopy allManagers asSortedCollection:
		[ :a :b | a package name <= b package name ].
	^ copies reject: [:each |
		self packagesNotToSavePatternNames
			anySatisfy: [:p | p match: each package name]].
	! !
