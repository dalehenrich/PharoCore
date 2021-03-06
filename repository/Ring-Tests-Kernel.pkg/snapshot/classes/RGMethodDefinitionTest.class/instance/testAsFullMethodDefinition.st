
!RGMethodDefinitionTest methodsFor: 'testing'!
testAsFullMethodDefinition
	"self debug: #testAsFullMethodDefinition"
	
	| rgMethod |
	rgMethod := (Trait >> #asRingDefinition) asRingDefinition.
	self assert: rgMethod parent isNil.
	self assert: rgMethod package isNil.
	
	rgMethod := (Trait >> #asRingDefinition) asFullRingDefinition.
	self assert: rgMethod parent notNil.
	self assert: rgMethod parentName = #Trait.
	self assert: rgMethod parent methods size = 1.
	self assert: rgMethod parent package isNil.	
	self assert: rgMethod package notNil.
	self assert: rgMethod package name = #'Ring-Core-Kernel'.! !
