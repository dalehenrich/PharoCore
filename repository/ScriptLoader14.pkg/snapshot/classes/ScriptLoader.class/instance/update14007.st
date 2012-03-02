
!ScriptLoader methodsFor: 'pharo - updates'!
update14007
	"self new update14007"
	self withUpdateLog: 'Issue 4437:	safer FreeTypeSettings>>#monitorType
	http://code.google.com/p/pharo/issues/detail?id=4437
Issue 4434:	CrLfFileStream>>#lineEndingConvention:
	http://code.google.com/p/pharo/issues/detail?id=4434
Issue 4129:	#assert:equals: is the opposite as expected
	http://code.google.com/p/pharo/issues/detail?id=4129
'.
	self loadTogether: self script272 merge: false.
	self flushCaches.
! !
