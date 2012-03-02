
!ScriptLoader methodsFor: 'pharo - updates'!
update14259
	"self new update14259"
	self withUpdateLog: 'Issue 5107:	Warning: The method DialogItemsChooser>>openInWorld has been deprecated.
	http://code.google.com/p/pharo/issues/detail?id=5107
Issue 4949:	Integer should be polymorphic with Fraction
	http://code.google.com/p/pharo/issues/detail?id=4949'.
	self loadTogether: self script522 merge: false.
	self flushCaches.
! !
