
!ScriptLoader methodsFor: 'pharo - updates'!
update14287
	"self new update14287"
	self withUpdateLog: '- Issue 5146:	CodeHolder >> #decompiledSourceIntoContents not robust enough for handling unknown temps, making it impossible to debug certain methods. Thanks Stefan Marr.
	http://code.google.com/p/pharo/issues/detail?id=5146
	
- Issue 5189:	DNU when not using accessor in Slider and subclasses
	Thanks Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=5189

- Issue 5005:	#cleanUpForRelease is broken: MessageNotUnderstood: ByteSymbol>>run:with:in:. Thanks Henrik and Mariano. 
	http://code.google.com/p/pharo/issues/detail?id=5005.
	
 Issue 5190:	Add shouting to Inspector trash.
	Thanks Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=5190
	
'.
	self loadTogether: self script550 merge: false.
	self flushCaches.
! !
