
Object weakSubclass: #WeakAnnouncementSubscription
	instanceVariableNames: 'list next announcer announcementClass action'
	classVariableNames: 'FinalizationList'
	poolDictionaries: ''
	category: 'Announcements-Core'!

!WeakAnnouncementSubscription commentStamp: 'IgorStasenko 3/12/2011 20:43' prior: 0!
A WeakAnnouncementSubscription is a subscription which is removed automatically when the subscriber is unreferenced.

No support for ephemerons currently prevents this from working for Block actions (blocks hold their receiver, which is the default subscriber strongly). 

To switch between subscription types, use makeStrong/makeWeak on the subscription returned when initially registering with announcer.


Note, that list and next must be first instance variables.!
