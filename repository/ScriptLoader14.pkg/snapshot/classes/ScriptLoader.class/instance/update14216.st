
!ScriptLoader methodsFor: 'pharo - updates'!
update14216
	"self new update14216"
	self withUpdateLog: '- Issue 4963:	Debugger crashes the image when the selector is > or >>. Thanks Benjamin van ryseghem and nicolas cellier.
	http://code.google.com/p/pharo/issues/detail?id=4963

- Issue 4906: crLog
	http://code.google.com/p/pharo/issues/detail?id=4906
	
- Issue 4953:	Toggle break on entry is broken. Thanks nicolas cellier.
	http://code.google.com/p/pharo/issues/detail?id=4953
	
- Issue 4962:	TaskList open on cmd+shift+letf/right. Thansk Benjamin van ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4962'.
	self loadTogether: self script479 merge: false.
	self flushCaches.
! !
