
!GoferOperationTest methodsFor: 'testing'!
testReinitialize
	| class |
	gofer package: 'GoferFoo'; load.
	class := Smalltalk classNamed: #GoferFoo.
	class addClassVarNamed: #InstanceSide; addClassVarNamed: #ClassSide.
	class compile: 'initialize InstanceSide := true'.
	class class compile: 'initialize ClassSide := true'.
	self assert: (class classPool at: #InstanceSide) isNil.
	self assert: (class classPool at: #ClassSide) isNil.
	self shouldnt: [ gofer reinitialize ] raise: Error.
	self assert: (class classPool at: #InstanceSide) isNil.
	self assert: (class classPool at: #ClassSide)
! !
