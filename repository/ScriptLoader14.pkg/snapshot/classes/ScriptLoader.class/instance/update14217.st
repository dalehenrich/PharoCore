
!ScriptLoader methodsFor: 'pharo - updates'!
update14217
	"self new update14217"
	self withUpdateLog: '- Issue 4974:	better UUID comparison. Thanks Norbert Hartl.
	http://code.google.com/p/pharo/issues/detail?id=4974

-  Issue 4933:	When browsing Implementors of, removing methods does not work. Thanks Guillermo Polito. 
	http://code.google.com/p/pharo/issues/detail?id=4933

- Issue 4961:	Debugger displays Block in class instead of showing Classname class for class side methods. Thanks Benjamin van ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4961'.
	self loadTogether: self script480 merge: false.
	self flushCaches.
! !
