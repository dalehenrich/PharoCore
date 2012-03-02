
Object subclass: #MimeConverter
	instanceVariableNames: 'dataStream mimeStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-MIME'!

!MimeConverter commentStamp: 'LaurentLaffont 6/8/2011 22:18' prior: 0!
I'm the base class for converting some data from a MIME type to another. Subclasses should implement #mimeDecode and #mimeEncode.!
