
!RGTraitDefinitionTest methodsFor: 'testing'!
testAsTraitDefinition

	| newTrait |
	newTrait:= TPureBehavior asRingDefinition.
	self assert: (newTrait isRingObject).
	self assert: (newTrait isTrait).  
	self assert: (newTrait name == #TPureBehavior).  
	self assert: (newTrait category notNil).
	self assert: (newTrait superclassName notNil).
	
	
	self assert: (newTrait theMetaClass isRingObject).
	self assert: (newTrait theMetaClass isTrait).
	self assert: (newTrait theMetaClass traitCompositionSource = '{}').! !
