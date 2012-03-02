
Object subclass: #ZnFixedClient
	instanceVariableNames: 'scheme host port connection username password lastUsed log'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Deprecated'!

!ZnFixedClient commentStamp: 'SvenVanCaekenberghe 10/4/2011 19:02' prior: 0!
I am ZnFixedClient.
I implement the client part of the HTTP protocol. 

DEPRECATED: Please use ZnNeoClient

I talk to one fixed host:port combination, reusing the same connection for each request.
If I lose the connection, I simply reconnect. 
If something goes wrong, I do one retry.
I optionally use basic authentication.

(ZnFixedClient host: 'caretaker.wolf359.be')
	get: 'index.html';
	get: 'small.html'

Part of Zinc HTTP Components.!
