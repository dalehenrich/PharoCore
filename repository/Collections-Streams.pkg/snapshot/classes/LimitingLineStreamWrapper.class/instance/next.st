
!LimitingLineStreamWrapper methodsFor: 'accessing'!
next
	"Provide character-based access"

	position isNil ifTrue: [^nil].
	position < line size ifTrue: [^line at: (position := position + 1)].
	line := stream nextLine.
	self updatePosition.
	^ Character cr! !
