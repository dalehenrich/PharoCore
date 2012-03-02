
!SHRange methodsFor: 'testing'!
isBlockTemporary
	
	^type == #blockPatternTempVar or: [ type == #blockPatternArg ]! !
