
Object subclass: #ZnStatusLine
	instanceVariableNames: 'version code reason'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Core'!

!ZnStatusLine commentStamp: '<historical>' prior: 0!
I am an HTTP Status Line.
I consist of an HTTP protocol version, an integer HTTP status code and an HTTP reason string.
I can be used for generating and parsing.

Part of Zinc HTTP Components.!
