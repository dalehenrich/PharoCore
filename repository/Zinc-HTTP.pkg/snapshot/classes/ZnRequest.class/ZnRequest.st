
ZnMessage subclass: #ZnRequest
	instanceVariableNames: 'requestLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Core'!

!ZnRequest commentStamp: 'SvenVanCaekenberghe 1/18/2011 10:58' prior: 0!
I am ZnRequest, representing an HTTP Request, 
consisting of a request line, headers and an optional entity (body).
I am a ZnMessage.
I can be used for generating and parsing.

Part of Zinc HTTP Components.!
