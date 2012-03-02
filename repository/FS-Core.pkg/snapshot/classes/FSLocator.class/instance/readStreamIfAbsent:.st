
!FSLocator methodsFor: 'delegated'!
readStreamIfAbsent: aBlock
	^ self resolve readStream readStreamIfAbsent: aBlock! !
