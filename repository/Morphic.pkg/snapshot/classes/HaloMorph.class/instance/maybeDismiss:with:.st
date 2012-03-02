
!HaloMorph methodsFor: 'private'!
maybeDismiss: evt with: dismissHandle 
	"Ask hand to dismiss my target if mouse comes up
	in it." 

	evt hand obtainHalo: self.
	(dismissHandle containsPoint: evt cursorPoint)
		ifTrue: [target resistsRemoval
				ifTrue: [(self confirm: 'Really throw this away ?' translated)
						ifFalse: [^ self]].
			evt hand removeHalo.
			self delete.
			target dismissViaHalo]
		ifFalse: [self delete.
			target addHalo: evt]! !
