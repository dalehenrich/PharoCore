
!Compiler class methodsFor: 'utilities'!
recompileAllFrom: firstName 
	"Recompile all classes, starting with given name."

	Smalltalk allClassesAndTraitsDo: 
		[:class | class name >= firstName
			ifTrue: 
				[Transcript show: class name; cr.
				class compileAll]]

	"Compiler recompileAllFrom: 'AAABodyShop'."
! !
