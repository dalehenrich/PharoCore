
!ScriptLoader methodsFor: 'pharo - updates'!
update14129
	"self new update14129"
	self withUpdateLog: 'Issue 3750:	The desktop logo should be changeable from the SettingBrowser
	http://code.google.com/p/pharo/issues/detail?id=3750
	
Issue 4699:	Selected list item color in Vistary, W2K, Watery and Watery 2
	http://code.google.com/p/pharo/issues/detail?id=4699'.
	self loadTogether: self script393 merge: false.
	self flushCaches.
! !
