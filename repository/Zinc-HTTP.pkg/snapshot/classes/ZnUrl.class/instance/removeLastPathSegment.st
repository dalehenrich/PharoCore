
!ZnUrl methodsFor: 'private'!
removeLastPathSegment
	segments isEmpty 
		ifFalse: [ segments removeLast ]! !
