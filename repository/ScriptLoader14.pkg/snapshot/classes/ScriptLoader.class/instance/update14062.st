
!ScriptLoader methodsFor: 'pharo - updates'!
update14062
	"self new update14062"
	self withUpdateLog: 'Issue 4500:	Put SUnit-Help be put into a separate package
Issue 4558:	Test Runner UI is strange'.
	self loadTogether: self script327 merge: false.
	(MCPackage named: 'SUnit') workingCopy unregister.
ScriptLoader new addHomeRepositoryToAllPackages.
.
	self flushCaches.
! !
