
!PluggableTabButtonMorph methodsFor: 'private - access'!
arcLengths
	arcLengths ifNil: [ self calculateArcLengths ].
	^ arcLengths! !
