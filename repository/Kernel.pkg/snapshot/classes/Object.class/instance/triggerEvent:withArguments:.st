
!Object methodsFor: 'events-triggering'!
triggerEvent: anEventSelector
withArguments: anArgumentList

    ^(self actionForEvent: anEventSelector)
        valueWithArguments: anArgumentList! !
