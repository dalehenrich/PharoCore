
!Workspace methodsFor: 'binding'!
hasBindingThatBeginsWith: aString

	bindings ifNil:[^false].
	bindings keysDo:[:each | 
		(each beginsWith: aString) 
			ifTrue:[^true]].
	^false
! !
