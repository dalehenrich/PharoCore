
!DialogWindow methodsFor: 'testing'!
isResizeable
	"Answer whether we are not we can be resized."

	^ isResizeable ifNil: [ isResizeable := false ]! !
