
!Object methodsFor: 'events-accessing'!
actionSequenceForEvent: anEventSelector

    ^(self actionMap
        at: anEventSelector asSymbol
        ifAbsent: [^WeakActionSequence new])
            asActionSequence! !
