
!ScriptLoader methodsFor: 'pharo - updates'!
update14237
	"self new update14237"
	self withUpdateLog: 'Issue 5010:	Testing GUI widgets
	http://code.google.com/p/pharo/issues/detail?id=5010
	
Issue 5027:	rename _log.txt to PharoDebug.log
	http://code.google.com/p/pharo/issues/detail?id=5027
	
Issue 5026:	update Pharo-Kernel and Pharo-Core package sets
	http://code.google.com/p/pharo/issues/detail?id=5026'.
	self loadTogether: self script500 merge: false.
	self flushCaches.
! !
