
!UpdateStreamer methodsFor: 'accessing'!
shouldApplyChanges
	"when true the changes are downloaded and executed in the image"
	
	^ applyChanges ifNil: [applyChanges := true ]! !
