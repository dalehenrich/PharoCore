
ZnEntity subclass: #ZnStringEntity
	instanceVariableNames: 'string encoder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Core'!

!ZnStringEntity commentStamp: 'SvenVanCaekenberghe 1/18/2011 11:05' prior: 0!
I am ZnStringEntity, a concrete HTTP Entity based on a String.
It is used to hold textual (non-binary) data.
I am a ZnEntity.

Optionally, an encoding is used to convert to and from bytes.
The default encoding it UTF-8.

Part of Zinc HTTP Components.!
