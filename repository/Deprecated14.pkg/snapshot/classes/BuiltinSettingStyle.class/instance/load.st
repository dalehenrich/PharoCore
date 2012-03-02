
!BuiltinSettingStyle methodsFor: 'loading'!
load
	"assign a particular value to a set of preferences.
	Subclasses may redefine it for a particular style (i.e. demo style)"
	SettingBrowser refreshAllSettingBrowsers
! !
