
!ScriptLoader methodsFor: 'pharo - updates'!
update14196
	"self new update14196"
	self withUpdateLog: '- Issue 4900:	CompiledMethod printString.
- Fixing FlatListBrowser (not to use third from event but second).
- Issue 4912:	Float infinity and Float nan should print themselves
- Fix users ot tools registry>>browse:selector: to use now Smalltalk tools browser'.
	self loadTogether: self script459 merge: false.
	self flushCaches.
! !
