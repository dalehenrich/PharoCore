
ZnBasicCredential subclass: #ZnDigestCredential
	instanceVariableNames: 'nonce opaque'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Support'!

!ZnDigestCredential commentStamp: 'SvenVanCaekenberghe 12/6/2010 12:59' prior: 0!
I am ZnDigestCredential, a concrete subclass of ZnCredential and subclass of ZnBasicCredential.
I implement digest HTTP authentication.
I hold a nounce and opaque.

Part of Zinc HTTP Components.!
