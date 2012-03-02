
!ScriptLoader methodsFor: 'pharo - updates'!
update14094
	"self new update14094"
	self withUpdateLog: '- Issue 4649:	Limit the use of Smalltalk getSystemAttribute:. Thanks Camillo Bruni and Igor Stasenko for the first draft :)'.
	self loadTogether: self script358 merge: false.
	self flushCaches.
! !
