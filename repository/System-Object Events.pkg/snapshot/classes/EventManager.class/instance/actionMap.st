
!EventManager methodsFor: 'accessing'!
actionMap

    ^actionMap == nil
        ifTrue: [self createActionMap]
        ifFalse: [actionMap]! !
