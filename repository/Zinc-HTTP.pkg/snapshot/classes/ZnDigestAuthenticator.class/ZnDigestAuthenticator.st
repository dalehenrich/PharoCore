
ZnBasicAuthenticator subclass: #ZnDigestAuthenticator
	instanceVariableNames: 'nonces'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnDigestAuthenticator commentStamp: 'SvenVanCaekenberghe 12/6/2010 12:47' prior: 0!
I am ZnDigestAuthenticator.
I help servers handle HTTP Digest Authentication.

I have a nonces dictionary with nonce->opaque associations. 
I generate a new nonce value for every 401 response I trigger.

Part of Zinc HTTP Components.!
