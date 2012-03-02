
Object subclass: #ZnLineReader
	instanceVariableNames: 'stream buffer position limit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnLineReader commentStamp: 'SvenVanCaekenberghe 9/27/2010 17:31' prior: 0!
I am ZnLineReader and I help reading CRLF terminated lines from a stream.
I can work on ascii and binary streams doing conversions as necessary.
I limit lines to a maximum length.
I work with a reusable buffer.

Part of Zinc HTTP Components.!
