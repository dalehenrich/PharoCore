
!ScriptLoader methodsFor: 'pharo - updates'!
update14200
	"self new update14200"
	self withUpdateLog: '- Issue 4918:	PluggableTextMorph>>styler is missing. Thanks Alain Plantec.
	http://code.google.com/p/pharo/issues/detail?id=4918
	
- Issue 4738:	Some icons missing from world menu
	http://code.google.com/p/pharo/issues/detail?id=4738
	
- Issue 4917:	FlatMessageListBrowser improvement. Thanks Benjamin.
	http://code.google.com/p/pharo/issues/detail?id=4917
	
	
'.
	self loadTogether: self script463 merge: false.
	self flushCaches.
! !
