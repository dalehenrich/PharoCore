
!UrlCodeFileLoader class methodsFor: 'accessing'!
default
	DefaultLoader ifNil: [
		DefaultLoader := UrlCodeFileLoader new].
	^DefaultLoader! !
