
!ScriptLoader methodsFor: 'pharo - updates'!
update14227
	"self new update14227"
	self withUpdateLog: 'Issue 4976:	MessageNotUnderstood: SolidFillStyle>>addFillStyleMenuItems:hand:from:
	http://code.google.com/p/pharo/issues/detail?id=4976
Issue 4972:	NullStream breaks the debugger
	http://code.google.com/p/pharo/issues/detail?id=4972'.
	self loadTogether: self script490 merge: false.
	self flushCaches.
! !
