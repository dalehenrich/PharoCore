
!ScriptLoader methodsFor: 'pharo - updates'!
update14147
	"self new update14147"
	self withUpdateLog: 'Issue 4816:	Really cleaning messageSet and subclasses.'.
	self loadTogether: self script411 merge: false.
	Smalltalk tools  register: FlatMessageListBrowser as: #messageList.
Smalltalk tools  remove: #changedMessageSet.
	self flushCaches.
! !
