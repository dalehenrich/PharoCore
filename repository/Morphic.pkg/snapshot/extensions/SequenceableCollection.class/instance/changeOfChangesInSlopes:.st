
!SequenceableCollection methodsFor: '*Morphic-Basic'!
changeOfChangesInSlopes: slopes 
	"A message to knots of a spline. Returns an array with the 4rd 
	cubic coeff."
	"The last nth item is correct iff this is a closed cubic. 
	Presumably that is the only time we care. 
	We always return the same sized array as self."
	| n changes |
	n := self size.
	n = slopes size
		ifFalse: [^ self error: 'vertices and slopes differ in number'].
	changes := Array new: n.
	1 to: n do: [:i | changes at: i put: (self at: i)
					- (self atWrap: i + 1) * 2
					+ (slopes at: i)
					+ (slopes atWrap: i + 1)].
	^ changes! !
