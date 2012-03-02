
ZnCharacterEncoder subclass: #ZnByteEncoder
	instanceVariableNames: 'byteToUnicode unicodeToByte'
	classVariableNames: 'ByteTextConverters'
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnByteEncoder commentStamp: 'SvenVanCaekenberghe 1/25/2011 11:02' prior: 0!
I am ZnByteEncoder, a concrete subclass of ZnCharacterEncoder.
I handle single byte encodings where byte values 0 to 127 map to ASCII
and 128 to 255 are a permutation to Unicode characters.

I am reusing the specifications from the subclasses of ByteTextEncoder.

Part of Zinc HTTP Components.!
