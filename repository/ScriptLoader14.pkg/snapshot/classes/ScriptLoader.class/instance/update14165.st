
!ScriptLoader methodsFor: 'pharo - updates'!
update14165
	"self new update14165"
	self withUpdateLog: 'Issue 4858:	Fix some undeclareds in Scriptloader
	http://code.google.com/p/pharo/issues/detail?id=4858
Issue 4857:	Move Finder to Tools package
	http://code.google.com/p/pharo/issues/detail?id=4857
Issue 4859:	Ballon package contains tests
	http://code.google.com/p/pharo/issues/detail?id=4859'.
	self loadTogether: self script429 merge: false.
	ScriptLoader new deletePackage: 'Finder'.
ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
