
!MCClassDefinitionTest methodsFor: 'tests'!
testValidTraitComposition2
	"Related to http://code.google.com/p/pharo/issues/detail?id=2148"
	| d className cls |
	className := 'MCMockClassC'.
	d :=  MCClassDefinition
			name: className
			superclassName: 'Object'
			traitComposition: 'TPureBehavior'
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
	self assert: (cls methodDict includesKey:  #>>).
	self assert: ((Smalltalk at: #MCMockClassC) traitComposition allTraits includes:  TPureBehavior).! !
