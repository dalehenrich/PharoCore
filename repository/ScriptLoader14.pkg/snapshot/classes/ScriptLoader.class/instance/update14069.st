
!ScriptLoader methodsFor: 'pharo - updates'!
update14069
	"self new update14069"
	self withUpdateLog: '- fixed CommentReference missing backward compatibility methods. 

- fixed some methodSymbol references 
	http://code.google.com/p/pharo/issues/detail?id=4550
	
- fixed eval and execution of code in FlatMessageListBrowser

Issue 4580:	RGMethodDefinition protocol can be nil
	- fix results of protocolAt: and timeStampAt: of SourceFileArray.
	- add test to cover SourceFileArray utils methods
	http://code.google.com/p/pharo/issues/detail?id=4580
'.
	self loadTogether: self script334 merge: false.
	self flushCaches.
! !
