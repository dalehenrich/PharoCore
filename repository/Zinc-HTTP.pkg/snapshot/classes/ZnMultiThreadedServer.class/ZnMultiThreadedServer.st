
ZnSingleThreadedServer subclass: #ZnMultiThreadedServer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

!ZnMultiThreadedServer commentStamp: 'SvenVanCaekenberghe 12/15/2010 15:39' prior: 0!
I am ZnMultiThreadedServer.
I inherit most features from ZnSingleThreadedServer.

ZnMultiThreadedServer startDefaultOn: 1701.
ZnMultiThreadedServer default authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
ZnClient get: 'http://localhost:1701' username: 'foo' password: 'secret'.

I am multi threaded, I fork a new process for each incoming request.
I try to keep connections alive in each process.

Part of Zinc HTTP Components.!
