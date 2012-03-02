
!ScriptLoader methodsFor: 'pharo - updates'!
update14241
	"self new update14241"
	self withUpdateLog: 'Issue 5028:	failing MCPackageManager initialization
	http://code.google.com/p/pharo/issues/detail?id=5028
Issue 4914:	#14196 VM crash on #cleanUpForRelease
	http://code.google.com/p/pharo/issues/detail?id=4914
Issue 1817:	[etoy] Should remove project (Part I)
	http://code.google.com/p/pharo/issues/detail?id=1817
'.
	self loadTogether: self script504 merge: false.
	
MorphicUIManager classPool at: #UIProcess put: (
#FooBar
"Project classPool at: #UIProcess"
).
	self flushCaches.
! !
