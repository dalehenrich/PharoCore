
!RGTraitDefinitionTest methodsFor: 'testing'!
testAsFullTraitDefinition
	"self debug: #testAsFullTraitDefinition"
	
	| rgClass |
	rgClass := TPureBehavior asRingDefinition.
	self assert: rgClass methods isEmpty.
	self assert: rgClass superclass isNil.
	self assert: rgClass subclasses isEmpty.
	self assert: rgClass package isNil.

	rgClass := TPureBehavior asFullRingDefinition.
	self assert: rgClass methods notEmpty.
	self assert: (rgClass methodNamed: #allSelectors) package notNil.
	self assert: rgClass superclass notNil.
	self assert: rgClass superclass name = #Trait.
	self assert: rgClass subclasses isEmpty.
	self assert: rgClass package notNil.
	self assert: rgClass package = rgClass theNonMetaClass package.
	self assert: rgClass package name = #Traits.
	self assert: rgClass category = #'Traits-Kernel-Traits'.
	
	self assert: rgClass superclass superclass isNil.
	self assert: rgClass superclass package isNil.
	
	rgClass := TPureBehavior theMetaClass asFullRingDefinition.
	self assert: rgClass package = rgClass theNonMetaClass package.! !
