
!Debugger methodsFor: 'tally support'!
getTextMorph
	^ (self dependents select: [:m| m class == PluggableTextMorph]) first! !
