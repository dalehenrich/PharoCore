
MessageCatchingProxy subclass: #SimpleForwardingProxy
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StratifiedProxy'!

!SimpleForwardingProxy commentStamp: 'IgorStasenko 2/2/2011 21:52' prior: 0!
My instances are simply forwarding all messages to wrapped object, resulting in a fully transparent proxy behavior.


(SimpleForwardingProxy for: (1@2)) = (1@2)   --->> true
!
