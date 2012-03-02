
!TextMorphForEditView methodsFor: 'private'!
useExtraSelection
	^ self useFindReplaceSelection or: [self useSecondarySelection]
! !
