
!Object methodsFor: '*Tools-Base'!
updateListsAndCodeIn: aWindow
	self canDiscardEdits ifFalse: [^ self].
	aWindow updatablePanes do: [:aPane | aPane verifyContents]! !
