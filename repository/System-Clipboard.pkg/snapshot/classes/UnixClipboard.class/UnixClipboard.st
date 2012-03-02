
Clipboard subclass: #UnixClipboard
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Clipboard'!

!UnixClipboard commentStamp: 'HenrikSperreJohansen 1/28/2011 15:15' prior: 0!
The Unix vm does not do line-ending conversion, thus this subclass which specifies we convert CR's to LF's when pasting to it!
