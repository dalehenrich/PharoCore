
!LanguageEnvironment class methodsFor: 'private'!
knownEnvironments
	"LanguageEnvironment knownEnvironments"
	"KnownEnvironments := nil"

	^KnownEnvironments ifNil: [KnownEnvironments := self initKnownEnvironments]! !
