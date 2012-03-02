
!Morph methodsFor: 'user interface'!
doFastReframe: ptName

	| newBounds |
	"For fast display, only higlight the rectangle during loop"
	newBounds := self boundsInWorld newRectButtonPressedDo: [:f | 
		f 
			withSideOrCorner: ptName
			setToPoint: Sensor cursorPoint
			minExtent: self minimumExtent].
	Display deferUpdatesIn: Display boundingBox while: [
		self bounds: newBounds].

	^newBounds.! !
