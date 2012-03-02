
Object subclass: #ZnBasicAuthenticator
	instanceVariableNames: 'credentials realm'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnBasicAuthenticator commentStamp: 'SvenVanCaekenberghe 9/30/2010 15:37' prior: 0!
I am ZnBasicAuthenticator.
I help servers handle HTTP Basic Authentication.
I implement the required #authenticateRequest:do:

I have a credentials dictionary with username->password associations.

Part of Zinc HTTP Components.!
