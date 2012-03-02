
!SHRange methodsFor: 'testing'!
isOpening
	
	^(type beginsWith: 'blockStart') or: [
		type beginsWith: 'leftParenthesis' ]
		! !
