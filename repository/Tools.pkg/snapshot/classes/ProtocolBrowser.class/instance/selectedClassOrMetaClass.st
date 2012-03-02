
!ProtocolBrowser methodsFor: 'class list'!
selectedClassOrMetaClass
	^self selection ifNil:[ selectedClass ] ifNotNil:[ :m| m realClass ]! !
