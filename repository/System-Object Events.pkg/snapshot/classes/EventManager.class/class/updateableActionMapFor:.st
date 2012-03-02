
!EventManager class methodsFor: 'accessing'!
updateableActionMapFor: anObject

    ^self actionMaps
        at: anObject
        ifAbsentPut: [self createActionMap]! !
