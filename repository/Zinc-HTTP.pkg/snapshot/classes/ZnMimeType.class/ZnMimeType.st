
Object subclass: #ZnMimeType
	instanceVariableNames: 'main sub parameters'
	classVariableNames: 'ExtensionsMap MimeTypes'
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnMimeType commentStamp: 'SvenVanCaekenberghe 12/6/2011 20:52' prior: 0!
I am ZnMimeType.

I know whether I am binary or not and know my charset when applicable.

My class side offers access to some common constants.
Note that for text types we default to UTF-8 encoding.

I started life as a copy of WAMineType.

Part of Zinc HTTP Components.!
