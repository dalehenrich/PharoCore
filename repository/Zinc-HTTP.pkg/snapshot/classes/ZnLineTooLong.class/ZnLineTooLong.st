
ZnParseError subclass: #ZnLineTooLong
	instanceVariableNames: 'limit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Exceptions'!

!ZnLineTooLong commentStamp: 'SvenVanCaekenberghe 2/28/2011 14:15' prior: 0!
ZnLineTooLong is signalled when an HTTP CRLF terminated input line exceeds a predefined limit.

Part of Zinc HTTP Components. !
