
Object subclass: #Clipboard
	instanceVariableNames: 'contents recent'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'System-Clipboard'!

!Clipboard commentStamp: 'AlainPlantec 1/15/2010 11:42' prior: 0!
The Clipboard class is the abstract superclass for the concrete platform specific clipboard. The legacy clipboard support using the VM supplied primitives is implemented by Clipboard/ExternalClipboard.

The Clipboard implements a basic buffering scheme for text. The currently selected text is also exported to the OS so that text can be copied from and to other applications. Commonly only a single instance is used (the default clipboard) but applications are free to use other than the default clipboard if necessary.!
