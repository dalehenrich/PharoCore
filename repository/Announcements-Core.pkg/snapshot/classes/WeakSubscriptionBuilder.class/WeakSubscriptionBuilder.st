
Object subclass: #WeakSubscriptionBuilder
	instanceVariableNames: 'announcer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Announcements-Core'!

!WeakSubscriptionBuilder commentStamp: 'IgorStasenko 3/12/2011 20:37' prior: 0!
I am a wrapper around an Announcer, used to create weak subscriptions at subscription time.

Use me like this:

anAnnouncer weak subscribe: Announcement send: #foo to: barObject.

I raise an error for block subscriptions, as they require non-existing Ephemeron support to function correctly.!
