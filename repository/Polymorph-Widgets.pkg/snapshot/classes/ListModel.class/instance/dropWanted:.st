
!ListModel methodsFor: 'drag and drop'!
dropWanted: anObject
	"If specified for the list, allow only things that are in the list to
	be dropped (reordering)."

	^self list includes: anObject! !
