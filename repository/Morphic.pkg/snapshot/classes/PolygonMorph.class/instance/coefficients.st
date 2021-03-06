
!PolygonMorph methodsFor: 'smoothing'!
coefficients
	"Compute an array for the coefficients."
	| verts vertXs vertYs slopeXs slopeYs coefficients |
	curveState
		ifNotNil: [^ curveState at: 1].
	verts := self vertices.
	verts size < 1
		ifTrue: [^ self].
	"Less than three points handled as segments by our 
	lineSegmentsDo:"
	(self isCurvier)
		ifFalse: [closed
				ifTrue: [verts := verts , verts first asOrderedCollection]].
	coefficients := {vertXs := verts
						collect: [:p | p x asFloat]. slopeXs := self slopes: vertXs. vertXs changeInSlopes: slopeXs. vertXs changeOfChangesInSlopes: slopeXs. vertYs := verts
						collect: [:p | p y asFloat]. slopeYs := self slopes: vertYs. vertYs changeInSlopes: slopeYs. vertYs changeOfChangesInSlopes: slopeYs. Array new: verts size withAll: 12}.
	coefficients
		at: 9
		put: ((1 to: verts size)
				collect: [:i | (coefficients cubicPointPolynomialAt: i) bestSegments]).
	(self isCurvier)
		ifFalse: [closed
				ifTrue: [coefficients := coefficients
								collect: [:each | each allButLast]]].
	curveState := {coefficients. nil. nil}.
	self computeNextToEndPoints.
	^ coefficients! !
