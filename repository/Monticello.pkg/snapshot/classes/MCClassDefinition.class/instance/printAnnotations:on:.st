
!MCClassDefinition methodsFor: 'annotations'!
printAnnotations: requests on: aStream
	"Add a string for an annotation pane, trying to fulfill the CodeHolder annotationRequests"

	requests do: [ :aRequest |
		aRequest == #requirements ifTrue: [
			self requirements do: [ :req | aStream nextPutAll: req ] separatedBy: [ aStream space ]]
	] separatedBy: [ aStream space ].! !
