
Object subclass: #MIMEType
	instanceVariableNames: 'main sub parameters'
	classVariableNames: 'DefaultSuffixes StandardMIMEMappings'
	poolDictionaries: ''
	category: 'Network-MIME'!

!MIMEType commentStamp: 'LaurentLaffont 6/8/2011 22:18' prior: 0!
I guess and represent the content type of a file. For a description of what is MIME, see
http://en.wikipedia.org/wiki/Internet_media_type
http://en.wikipedia.org/wiki/MIME

Examples:

MIMEType forFileNameReturnMimeTypesOrDefault: 'index.html'.

MIMEType fromMIMEString: 'application/zip'.!
