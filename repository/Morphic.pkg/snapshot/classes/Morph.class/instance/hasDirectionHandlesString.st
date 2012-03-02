
!Morph methodsFor: 'menus'!
hasDirectionHandlesString
	^ (self wantsDirectionHandles
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'direction handles' translated! !
