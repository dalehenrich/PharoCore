
!ScriptLoader methodsFor: 'pharo - updates'!
update14356
	"self new update14356"
	self withUpdateLog: 'Issue 5376:	AbstractTool fix removeMethods method
	http://code.google.com/p/pharo/issues/detail?id=5376
	
Issue 5371:	XTableForUnicodeFont is not used anywhere (and an internal class)
	http://code.google.com/p/pharo/issues/detail?id=5371
	
Issue 5372:	Remove old Mac font reading in StrikeFont
	http://code.google.com/p/pharo/issues/detail?id=5372
	
Issue 5370:	AppRegistry class >> #default: dependent on Morphic
	http://code.google.com/p/pharo/issues/detail?id=5370'.
	self loadTogether: self script617 merge: false.
	self flushCaches.
! !
