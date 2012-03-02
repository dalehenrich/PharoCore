
!MethodReference methodsFor: 'accessing'!
asMCMethodDefinition
	self flag: 'should be removed as soon as MethodReference is not used anymore'.
	^ MCMethodDefinition forMethodReference: self! !
