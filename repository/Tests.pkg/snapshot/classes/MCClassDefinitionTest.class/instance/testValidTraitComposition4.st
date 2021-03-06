
!MCClassDefinitionTest methodsFor: 'tests'!
testValidTraitComposition4
	"Related to http://code.google.com/p/pharo/issues/detail?id=2598"
	| d className cls |
	className := 'MCMockClassC'.
	d :=  MCClassDefinition
			name: className
			superclassName: 'Object'
			traitComposition: 'TPureBehavior - {#>> . #withAllSubclassesDo:}'
			classTraitComposition: '{}'
			category: self mockCategoryName 
			instVarNames: #()
			classVarNames: #()
			poolDictionaryNames: #()
			classInstVarNames: #()
			type: #normal
			comment: (self commentForClass: className)
			commentStamp: (self commentStampForClass: className).
	
	self shouldnt: [d load] raise: Error.
	self assert: (Smalltalk hasClassNamed: 'MCMockClassC').
	cls := Smalltalk at: #MCMockClassC.
	self assert: (cls selectors includesAllOf: {#withAllSuperclasses . #traits}).
	self deny: (cls selectors includesAnyOf: {#>> . #withAllSubclassesDo:}).! !
