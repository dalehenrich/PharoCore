
!ScriptLoader methodsFor: 'pharo - updates'!
update14290
	"self new update14290"
	self withUpdateLog: '- Issue 5200:
Remove PluggableEventHandler and BlockEventHandler. http://code.google.com/p/pharo/issues/detail?id=5200

- Issue 5197:	All the methods in convenience-browsing in ToolRegistry should be deprecated. Thanks vonbecmann.
	http://code.google.com/p/pharo/issues/detail?id=5197

- Issue 5183:	Problem with PluggableListMorph. Thanks Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=5183'.
	self loadTogether: self script553 merge: false.
	self flushCaches.
! !
