
Object subclass: #AnnouncementSubscription
	instanceVariableNames: 'announcer announcementClass subscriber action'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Announcements-Core'!

!AnnouncementSubscription commentStamp: 'IgorStasenko 3/12/2011 20:23' prior: 0!
The subscription is a single entry in a SubscriptionRegistry.
Several subscriptions by the same object is possible.

I know how to make myself weak or strong, only use this capability if it can't be determined at subscribe time though, as it uses become: (for thread-safety), which is quite slow.!
