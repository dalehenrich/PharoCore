
Object subclass: #ZnEntityReader
	instanceVariableNames: 'headers stream streaming allowReadingUpToEnd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnEntityReader commentStamp: 'SvenVanCaekenberghe 12/6/2010 12:59' prior: 0!
I am ZnEntityReader, I help reading ZnEntities from a stream given meta data in headers.

I deal with chunking and gzip decoding.

Part of Zinc HTTP Components.!
