
!ScriptLoader methodsFor: 'pharo - updates'!
update14074
	"self new update14074"
	self withUpdateLog: 'Issue 4565:	Monticello workflow broken
	http://code.google.com/p/pharo/issues/detail?id=4565
Issue 4597:	StrikeFont aggressive cleanup should remove DejaVu source
	http://code.google.com/p/pharo/issues/detail?id=4597
'.
	self loadTogether: self script339 merge: false.
	self flushCaches.
! !
