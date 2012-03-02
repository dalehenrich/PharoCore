
!MCClassDefinitionTest methodsFor: 'tests'!
testNotValidTraitComposition
	"Related to http://code.google.com/p/pharo/issues/detail?id=2148"
	| d className |
	className := 'MCMockClassC'.
	d :=  MCClassDefinition
			name: className
			superclassName: 'Object'
			traitComposition: '{NotExistingTraitName}'
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
	self assert: (Smalltalk hasClassNamed: 'MCMockClassC').! !
