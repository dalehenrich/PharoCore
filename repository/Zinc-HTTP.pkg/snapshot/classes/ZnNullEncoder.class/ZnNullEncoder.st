
ZnCharacterEncoder subclass: #ZnNullEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Streaming'!

!ZnNullEncoder commentStamp: 'SvenVanCaekenberghe 12/6/2010 12:53' prior: 0!
I am ZnNullEncoder, a concrete subclass of ZnCharacterEncoder.
I perform no encoding or decoding at all for all characters with a code value below 256.
I can only be used for ASCII and Latin1 (ISO-8859-1).

Part of Zinc HTTP Components.!
