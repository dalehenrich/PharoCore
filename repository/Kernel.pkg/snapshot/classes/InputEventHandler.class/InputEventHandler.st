
Object subclass: #InputEventHandler
	instanceVariableNames: 'eventFetcher'
	classVariableNames: ''
	poolDictionaries: 'EventSensorConstants'
	category: 'Kernel-Processes'!

!InputEventHandler commentStamp: 'michael.rueger 4/22/2009 11:56' prior: 0!
An InputEventHandler is the abstract superclass for all input event handlers.
Subclasses need to implement handleEvent:.

Instance Variables
	eventFetcher:		<InputEventFetcher>

eventFetcher
	- the event fetcher I'm registered with and receiving my events from.
!
