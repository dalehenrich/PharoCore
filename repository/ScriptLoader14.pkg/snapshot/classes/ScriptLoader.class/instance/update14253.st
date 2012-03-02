
!ScriptLoader methodsFor: 'pharo - updates'!
update14253
	"self new update14253"
	self withUpdateLog: 'Issue 5073:	DateAndTime>>asEmailString reports wrong day
	http://code.google.com/p/pharo/issues/detail?id=5073
Issue 5072:	Remove calls to SmalltalkImage>>associationAt:
	http://code.google.com/p/pharo/issues/detail?id=5072
Issue 4944:	Failing Test: RBSmalllintTest
	http://code.google.com/p/pharo/issues/detail?id=4944
Issue 4940:	Failing Test: MessageTallyTest
	http://code.google.com/p/pharo/issues/detail?id=4940
Issue 2688:	watchIt method should not be in PluggableTextMorph
	http://code.google.com/p/pharo/issues/detail?id=2688'.
	self loadTogether: self script516 merge: false.
	self flushCaches.
! !
