
ZnParseError subclass: #ZnUnknownHttpMethod
	instanceVariableNames: 'method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Exceptions'!

!ZnUnknownHttpMethod commentStamp: 'SvenVanCaekenberghe 12/11/2011 18:09' prior: 0!
ZnUnknownHttpMethod is signalled when an unknown/unsupported HTTP method is found while parsing a request.

I am resumable to allow non-standard methods.

Part of Zinc HTTP Components. !
