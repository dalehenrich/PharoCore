
Object subclass: #SubscriptionRegistry
	instanceVariableNames: 'subscriptions monitor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Announcements-Core'!

!SubscriptionRegistry commentStamp: 'IgorStasenko 3/12/2011 18:43' prior: 0!
The subscription registry is a threadsafe storage for the subscriptions to an Announcer.

In Pharo, subscriptionsFor: protocol is not implemented.
This is because Announcer does not provide public access to its registery for encapsulation reasons.
(We do not want access to the announcer from action blocks to break encapsulation to other subscribers)!
