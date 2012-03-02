
Object subclass: #FT2Handle
	instanceVariableNames: 'handle'
	classVariableNames: 'KnownHandles Registry'
	poolDictionaries: 'FT2Constants'
	category: 'FreeType-Base'!

!FT2Handle commentStamp: '<historical>' prior: 0!
handle holds a (typically 32-bit) pointer to an externally managed object.!
