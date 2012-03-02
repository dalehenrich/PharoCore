
!Locale class methodsFor: 'private'!
knownLocales
	"KnownLocales := nil"
	^KnownLocales ifNil: [KnownLocales := self initKnownLocales]! !
