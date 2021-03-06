
!ClassBuilderFormatTests methodsFor: 'testing'!
testChangeToVariableSubclass
	"Ensure that the invariants for superclass/subclass format are preserved"
	baseClass := Object subclass: self baseClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.
	[
		self shouldnt:[baseClass := Object variableSubclass: self baseClassName
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self categoryNameForTemporaryClasses] raise: Error.

	] ensure:[self cleanup].! !
