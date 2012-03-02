
!MorphTreeListManager methodsFor: 'selection change'!
emptySelection 
	self selectedMorphList do: [:n | n unhighlight; setSelectedSilently: false].
	self selectedMorphList removeAll.
	self selectionChanged
! !
