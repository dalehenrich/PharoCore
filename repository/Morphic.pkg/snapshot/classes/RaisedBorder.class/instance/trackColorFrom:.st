
!RaisedBorder methodsFor: 'color tracking'!
trackColorFrom: aMorph
	baseColor ifNil:[self color: aMorph raisedColor].! !
