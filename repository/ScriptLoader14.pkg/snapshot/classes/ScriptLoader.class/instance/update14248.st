
!ScriptLoader methodsFor: 'pharo - updates'!
update14248
	"self new update14248"
	self withUpdateLog: 'Issue 5066:	Sync VM version from image side
	http://code.google.com/p/pharo/issues/detail?id=5066
	
Issue 5065:	[ENH]: Clean up Mail code (Part 2)
	http://code.google.com/p/pharo/issues/detail?id=5065
	
Issue 4994:	Two failing test in ProcessTest
	http://code.google.com/p/pharo/issues/detail?id=4994'.
	self loadTogether: self script511 merge: false.
		
ScriptLoader new deletePackage: 'Network-MailSending'.
ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
