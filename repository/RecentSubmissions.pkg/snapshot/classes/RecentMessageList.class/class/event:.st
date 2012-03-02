
!RecentMessageList class methodsFor: 'events'!
event: anEvent
	"Hook for SystemChangeNotifier"

	anEvent itemKind = SystemChangeNotifier classKind
		ifTrue:[ self classEvent: anEvent].
	anEvent itemKind = SystemChangeNotifier methodKind
		ifTrue:[ self methodEvent: anEvent].! !
