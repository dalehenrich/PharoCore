
!FreeTypeFace methodsFor: 'testing'!
isValid
	^valid ifNil:[valid := super isValid]! !
