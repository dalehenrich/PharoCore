
!MorphTreeMorph methodsFor: 'accessing'!
treeLineDashes
	^ treeLineDashes 
		ifNil: [treeLineDashes := self theme treeLineDashes]
	
! !
