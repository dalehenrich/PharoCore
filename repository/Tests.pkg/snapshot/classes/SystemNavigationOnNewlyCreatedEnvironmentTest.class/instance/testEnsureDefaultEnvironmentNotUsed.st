
!SystemNavigationOnNewlyCreatedEnvironmentTest methodsFor: 'testing'!
testEnsureDefaultEnvironmentNotUsed
	
	| allClasses orginalProtoObjectClass orginalObjectClass anotherObjectClass |
	allClasses := self systemNavigationToTest allClasses.
	self assert: allClasses isEmpty.
	orginalProtoObjectClass := Smalltalk globals at: #ProtoObject.		
	orginalObjectClass := Smalltalk globals at: #Object.
	anotherObjectClass := self classFactory newClassNamed: #Object subclassOf: orginalProtoObjectClass instanceVariableNames: '' classVariableNames:  'DependentsFields'.
	self assert: ((self environmentToTest at: #Object) = anotherObjectClass).
	self assert: ((Smalltalk globals at: #Object) = orginalObjectClass).
	! !
