
Stream subclass: #ZnChunkedReadStream
	instanceVariableNames: 'stream chunk position limit atEnd totalSize extraHeaders'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnChunkedReadStream commentStamp: 'SvenVanCaekenberghe 1/18/2011 11:01' prior: 0!
I am ZnChunkedReadStream, implementing HTTP 1.1 chunked transfer encoding on a wrapped streams.

Clients should read me until I am atEnd.

After I am completely read, I can tell you my totalSize and optional extraHeaders.

Part of Zinc HTTP Components.!
