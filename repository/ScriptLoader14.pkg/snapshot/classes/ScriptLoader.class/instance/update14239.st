
!ScriptLoader methodsFor: 'pharo - updates'!
update14239
	"self new update14239"
	self withUpdateLog: '- Issue 5038:	Optimization in list wrapping. Thanks Benjamin van ryseghem.
http://code.google.com/p/pharo/issues/detail?id=5038

- Issue 5034:	Harvest class comments from Squeak. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=5034
	
-  Issue 5033:	ReferenceStream Comment: Remove underscore assignment. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=5033
	
 Issue 5039:	FlatMessageListBrowser improvement. Thanks Benjamin van ryseghem.
http://code.google.com/p/pharo/issues/detail?id=5039'.
	self loadTogether: self script502 merge: false.
	self flushCaches.
! !
