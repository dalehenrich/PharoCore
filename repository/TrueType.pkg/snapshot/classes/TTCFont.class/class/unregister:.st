
!TTCFont class methodsFor: 'other'!
unregister: symbolName

	self registry removeKey: symbolName ifAbsent: [].
! !
