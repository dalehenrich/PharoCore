
Stream subclass: #ZnBufferedWriteStream
	instanceVariableNames: 'stream buffer position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnBufferedWriteStream commentStamp: 'SvenVanCaekenberghe 12/8/2010 10:10' prior: 0!
I am ZnBufferedWriteStream.
I wrap a write stream and add buffering.

Make sure to always send me #flush or #close when you're done,
otherwise the last buffer might not yet have been written.

Part of Zinc HTTP Components.!
