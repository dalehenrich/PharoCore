
!ScriptLoader methodsFor: 'pharo - updates'!
update14314
	"self new update14314"
	self withUpdateLog: '- Issue 5233:	Support Semantic Source Links. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5233
	
Pay attention that this change should really be changed on windows and linux. So please give us feedback.'.
	self loadTogether: self script575 merge: false.
	self flushCaches.
! !
