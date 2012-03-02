
!ScriptLoader methodsFor: 'pharo - updates'!
update14047
	"self new update14047"
	self withUpdateLog: '- Issue 4527:	serialPort enh.
	Thanks Bill Schwab.

- Fixing getPreamble: '.
	self loadTogether: self script312 merge: false.
	self flushCaches.
! !
