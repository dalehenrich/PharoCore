
!WeakSubscriptionBuilder methodsFor: 'wrapped protocol'!
subscribe: anAnnouncementClass do: aValuable 
	
	^	announcer basicSubscribe: (
			WeakAnnouncementSubscription new 
				announcer: announcer;
				announcementClass: anAnnouncementClass;
				valuable: aValuable)! !
