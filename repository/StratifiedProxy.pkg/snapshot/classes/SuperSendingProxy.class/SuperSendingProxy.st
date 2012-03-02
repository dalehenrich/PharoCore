
SimpleForwardingProxy subclass: #SuperSendingProxy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StratifiedProxy'!

!SuperSendingProxy commentStamp: 'IgorStasenko 2/21/2011 16:16' prior: 0!
All messages sent to my proxy are handled in specific manner, as if all
methods implemented for receiver (wrapped object) is in a form like:

foo
  ^ super foo

First i doing manual lookup for the wrapped object class that implements given message,
and then sending a message to wrapped object but telling that lookup should start from a superclass of 
the class which were first who implements given message in receiver's inheritance chain.

For example: 

Behavior isBehavior -> true
(SuperSendingProxy for: Behavior) isBehavior  -> false

If there is no implementation for given message, a wrapped object will receive #doesNotUnderstand: message as usual.
!
