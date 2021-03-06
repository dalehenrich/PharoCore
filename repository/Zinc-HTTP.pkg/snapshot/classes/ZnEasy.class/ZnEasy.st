
Object subclass: #ZnEasy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

!ZnEasy commentStamp: 'SvenVanCaekenberghe 9/15/2011 16:27' prior: 0!
I am ZnEasy, a simplified HTTP client for occasional use.

My class side implements a number of convenience methods to do common HTTP client operations.

	ZnEasy get: 'http://zn.stfx.eu/zn/small.html'.

For most requests, I return a response object.

For my implementation I use ZnNeoClient, a full featured HTTP client.

Part of Zinc HTTP Components.!
