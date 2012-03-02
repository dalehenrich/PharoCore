
ZnMessage subclass: #ZnResponse
	instanceVariableNames: 'statusLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Core'!

!ZnResponse commentStamp: 'SvenVanCaekenberghe 1/18/2011 10:59' prior: 0!
I am ZnResponse, representing an HTTP Response 
consisting of a status line, headers and an optional entity (body).
I am a ZnMessage.
I can be used for generating and parsing.

Part of Zinc HTTP Components.!
