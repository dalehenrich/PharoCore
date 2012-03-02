
EventManager subclass: #SystemEventManager
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Change Notification'!

!SystemEventManager commentStamp: 'tlk 5/7/2006 20:10' prior: 0!
A SystemEventManager is EventManager that overrides Object>>actionSequenceForEvent: anEventSelector to supply WeakActionSequenceTrappingErrors as the default event.

!
