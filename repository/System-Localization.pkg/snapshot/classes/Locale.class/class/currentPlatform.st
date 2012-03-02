
!Locale class methodsFor: 'accessing'!
currentPlatform
	"CurrentPlatform := nil"
	CurrentPlatform ifNil: [CurrentPlatform := self determineCurrentLocale].
	^CurrentPlatform! !
