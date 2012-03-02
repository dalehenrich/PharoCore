
Object subclass: #ZnEntity
	instanceVariableNames: 'contentType contentLength'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Core'!

!ZnEntity commentStamp: 'SvenVanCaekenberghe 1/18/2011 11:03' prior: 0!
I am ZnEntity, an abstract HTTP Entity.

An entity has a content type (mime-type), a content length (byte length) and a contents.

Entities can encode and decode themselves to and from binary streams.

Part of Zinc HTTP Components.!
