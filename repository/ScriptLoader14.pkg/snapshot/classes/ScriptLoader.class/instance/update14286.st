
!ScriptLoader methodsFor: 'pharo - updates'!
update14286
	"self new update14286"
	self withUpdateLog: '- Issue 5164:	use new #isCompact rather than indexIfCompact > 0. 
	Thanks Mariano Martinez-Peck. 
	http://code.google.com/p/pharo/issues/detail?id=5164	
		
- Issue 5186:	SymbolTest >> #testNumArgsKeyword2 broken	
		Thanks Camillo Bruni. 
	http://code.google.com/p/pharo/issues/detail?id=5186

- Issue 5180:	ConnectionQueue>>getConnectionOrNil not working
	Thanks Sven and  Boloomka. 
	http://code.google.com/p/pharo/issues/detail?id=5180

- Issue 5133:	Editor >> cursorEnd: and cursorHome: does not work properly. Thanks Guille and Deborah :)
		http://code.google.com/p/pharo/issues/detail?id=5133'.
	self loadTogether: self script549 merge: false.
	self flushCaches.
! !
