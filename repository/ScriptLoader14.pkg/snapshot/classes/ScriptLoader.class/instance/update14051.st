
!ScriptLoader methodsFor: 'pharo - updates'!
update14051
	"self new update14051"
	self withUpdateLog: '- Issue 4544:	Better vmVersion identification. Since now vm has attribute number 1009 we can trace back to the version control  system. Thanks Igor Stasenko and Eliot Miranda.
- Ring enhancements. Thanks Veronica Uquillas-Gomez'.
	self loadTogether: self script316 merge: false.
	self flushCaches.
! !
