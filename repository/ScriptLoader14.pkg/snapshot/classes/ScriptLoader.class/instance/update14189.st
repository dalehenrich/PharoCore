
!ScriptLoader methodsFor: 'pharo - updates'!
update14189
	"self new update14189"
	self withUpdateLog: '- Issue 4903:	New version of Zinc
- Added a version of deprecated: in Object'.
	self loadTogether: self script452 merge: false.
	self flushCaches.
! !
