
!ScriptLoader methodsFor: 'pharo - updates'!
update14220
	"self new update14220"
	self withUpdateLog: '- Issue 4978:	DNU: RGMethodDefinition>>first. Thanks Guillermo Polito and Benjmain van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4978
	
-  Issue 4909:	Fraction readFromString: 1/2 ---> 1. Thanks Nicolas Cellier. 
	http://code.google.com/p/pharo/issues/detail?id=4909
	Here is a restricted implementation (with tests) which
- does not handle parenthesis
- does not handle spaces
- does not modify Number class>>readFrom:

Number readFrom: 1/2 --> 1
Fraction readFrom: 1/2 --> 1/2

- Issue 4971:	adding author to compiledMethod and authors to class. 
	http://code.google.com/p/pharo/issues/detail?id=4871

- Issue 4975:	Some tests that verify system consistency. Thanks lukas Renggli. 
	http://code.google.com/p/pharo/issues/detail?id=4975'.
	self loadTogether: self script483 merge: false.
	self flushCaches.
! !
