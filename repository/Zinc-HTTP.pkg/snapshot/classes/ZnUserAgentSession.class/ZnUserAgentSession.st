
Object subclass: #ZnUserAgentSession
	instanceVariableNames: 'cookiejar credentials currentRealm'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnUserAgentSession commentStamp: 'SvenVanCaekenberghe 12/6/2010 13:04' prior: 0!
I represent a session store for an HTTP client instance of ZnUserAgent. 

I hold the cookie jar for the session and any authentication credentials used by the client.

Part of Zinc HTTP Components.!
