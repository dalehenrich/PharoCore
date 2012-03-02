
WeakAnnouncementSubscription weakSubclass: #LegacyWeakSubscription
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Announcements-Core'!

!LegacyWeakSubscription commentStamp: 'IgorStasenko 3/12/2011 21:37' prior: 0!
I am a subclass which work when VM does not supports finalization lists.
I am about 3 times slower when it comes to finalizing items!
