
!SystemProgressBarMorph methodsFor: 'accessing'!
drawOn: aCanvas
	"Draw the receiver with the fill style for the bar, clipping to the inner bounds."
	
	| area |
	area := self innerBounds.
	aCanvas fillRectangle: area fillStyle: self fillStyle.
	barSize > 0 ifTrue: [
		area := area origin extent: (barSize min: area width) @ area height.
		aCanvas fillRectangle: area fillStyle: self barFillStyle].
	self borderStyle frameRectangle: self bounds on: aCanvas
! !
