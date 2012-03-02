
!TextEntryDialogWindow methodsFor: 'accessing'!
minimumWidth
	^ (super minimumWidth max: self class minimumWidth) min: (Display width)! !
