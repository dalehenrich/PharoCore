
!Object methodsFor: 'events-accessing'!
hasActionForEvent: anEventSelector
    "Answer true if there is an action associated with anEventSelector"

    ^(self actionForEvent: anEventSelector) notNil! !
