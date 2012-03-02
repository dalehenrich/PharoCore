
Error subclass: #ZnUnexpectedContentType
	instanceVariableNames: 'expectedContentType actualContentType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Exceptions'!

!ZnUnexpectedContentType commentStamp: 'SvenVanCaekenberghe 12/20/2011 12:52' prior: 0!
ZnUnexpectedContentType is signalled when a different content type (mime type) was expected.

I hold the expected and actual content types.

Part of Zinc HTTP Components. !
