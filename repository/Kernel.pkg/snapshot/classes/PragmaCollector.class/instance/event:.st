
!PragmaCollector methodsFor: 'system changes'!
event: anEvent 
	"Hook for SystemChangeNotifier: 
	automatically updates the system settings when a
	method is added, removed or updated or when a
	class is removed
	"
	(anEvent itemKind = SystemChangeNotifier classKind
					and: [anEvent isRemoved])
				ifTrue: [^ self classRemovedEventOccurs: anEvent].
			anEvent itemKind = SystemChangeNotifier methodKind
				ifTrue: [anEvent isRemoved
						ifTrue: [^ self removedEventOccurs: anEvent]. 
					anEvent isAdded
						ifTrue: [^ self addedEventOccurs: anEvent].
					anEvent isModified
						ifTrue: [^ self modifiedEventOccurs: anEvent]]! !
