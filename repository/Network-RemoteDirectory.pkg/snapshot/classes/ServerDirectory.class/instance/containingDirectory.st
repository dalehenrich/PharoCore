
!ServerDirectory methodsFor: 'file directory'!
containingDirectory

	^ self copy directory: (self dirPathFor: directory).

! !
