
!DictionaryInspector methodsFor: 'selecting'!
calculateKeyArray
	"Recalculate the KeyArray from the object being inspected"

	keyArray := object keysSortedSafely asArray.
	selectionIndex := 0.
! !
