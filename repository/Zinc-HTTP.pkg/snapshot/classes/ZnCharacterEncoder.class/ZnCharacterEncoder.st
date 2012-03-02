
Object subclass: #ZnCharacterEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnCharacterEncoder commentStamp: 'SvenVanCaekenberghe 12/6/2010 12:52' prior: 0!
I am ZnCharacterEncoder, I encode and decode Character objects to and from a binary stream.
I am an abstract class with following protocol:

#nextFromStream:
#nextPut:toStream:
#encodedByteCountFor:

The first two are compatible with TextConverter and subclasses.

Part of Zinc HTTP Components.!
