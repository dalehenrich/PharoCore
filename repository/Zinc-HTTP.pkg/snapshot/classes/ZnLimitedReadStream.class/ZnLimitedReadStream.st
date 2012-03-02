
Stream subclass: #ZnLimitedReadStream
	instanceVariableNames: 'stream position limit binary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnLimitedReadStream commentStamp: 'SvenVanCaekenberghe 1/18/2011 11:02' prior: 0!
I am ZnLimitedReadStream, wrapping another read stream delegating to it 
but limiting reading to a fixed number of elements.

I can be atEnd while my wrapped stream is not.

My contentSpecies can be forced to be ByteArray (binary) or ByteString (ascii).

I do byte/char conversions on the fly (support bivalent access).

This implementation is really a kludge.

Part of Zinc HTTP Components.!
