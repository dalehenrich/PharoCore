
!TextHighlight methodsFor: 'as yet unclassified'!
position: aPoint
	"Set the bounds top left."
	
	self bounds: (aPoint extent: self bounds extent)! !
