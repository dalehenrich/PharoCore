
QuotedPrintableMimeConverter subclass: #RFC2047MimeConverter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-MIME'!

!RFC2047MimeConverter commentStamp: '<historical>' prior: 0!
I do quoted printable MIME decoding as specified in RFC 2047 ""MIME Part Three: Message Header Extensions for Non-ASCII Text". See String>>decodeMimeHeader!
