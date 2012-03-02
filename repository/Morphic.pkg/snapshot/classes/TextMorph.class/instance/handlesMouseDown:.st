
!TextMorph methodsFor: 'event handling'!
handlesMouseDown: evt
	^ self innerBounds containsPoint: evt cursorPoint! !
