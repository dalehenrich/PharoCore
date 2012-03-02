
Announcement subclass: #ZnLogEvent
	instanceVariableNames: 'timeStamp processId category message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Logging'!

!ZnLogEvent commentStamp: 'SvenVanCaekenberghe 3/29/2011 13:27' prior: 0!
I am ZnLogEvent, an Announcement sent by an HTTP server or client containing logging information.

A log event has a TimeStamp, a Process ID, a category and a message.
The following categories are used: #info (I), #debug (D) and #transaction (T).  

Part of Zinc HTTP Components.!
