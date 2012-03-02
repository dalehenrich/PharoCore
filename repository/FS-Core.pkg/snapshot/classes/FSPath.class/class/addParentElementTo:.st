
!FSPath class methodsFor: 'private'!
addParentElementTo: result
	result isEmpty
		ifTrue: [result add: '..']
		ifFalse: [result removeLast]
		! !
