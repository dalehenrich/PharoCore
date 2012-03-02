
!SettingBrowser class methodsFor: 'accessing'!
regexpSearch
	"Is the regexp filtering used"
	^ regexpSearch ifNil: [regexpSearch := false]! !
