
!ScriptLoader methodsFor: 'pharo - updates'!
update14269
	"self new update14269"
	self withUpdateLog: '-  Issue 5127:	Zinc update
	http://code.google.com/p/pharo/issues/detail?id=5127

- last bit of  Issue 4688:	progress bar disappears on image save
	http://code.google.com/p/pharo/issues/detail?id=4688'.
	self loadTogether: self script532 merge: false.
	Smalltalk removeFromStartUpList: UITheme.
	self flushCaches.
! !
