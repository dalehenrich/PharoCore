
!CompiledMethod methodsFor: 'source code management'!
tempNames
	self holdsTempNames ifFalse: [^#()].
	^self tempNamesString subStrings: ' '! !
