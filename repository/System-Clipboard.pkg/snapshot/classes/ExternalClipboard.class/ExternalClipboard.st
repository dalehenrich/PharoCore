
Clipboard subclass: #ExternalClipboard
	instanceVariableNames: 'clipboard'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Clipboard'!

!ExternalClipboard commentStamp: 'michael.rueger 3/2/2009 13:25' prior: 0!
An ExternalClipboard is the abstract superclass for the platform specific clipboards based on the clipboard plugin (former ExtendedClipboardInterface originally developed for Sophie).

Instance Variables
	clipboard:		SmallInteger

clipboard
	- handle for the external clipboard. If 0 the external clipboard is invalid
!
