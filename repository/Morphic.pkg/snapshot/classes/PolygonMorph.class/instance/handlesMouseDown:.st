
!PolygonMorph methodsFor: 'event handling'!
handlesMouseDown: evt

	^ (super handlesMouseDown: evt) or: [evt shiftPressed]! !
