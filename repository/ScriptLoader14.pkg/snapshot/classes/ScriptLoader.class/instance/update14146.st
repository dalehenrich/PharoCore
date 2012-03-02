
!ScriptLoader methodsFor: 'pharo - updates'!
update14146
	"self new update14146"
	self withUpdateLog: 'Issue 4810:	Fix in PluggableListMorph selection on drag
	http://code.google.com/p/pharo/issues/detail?id=4810
Issue 4803:	MNU: receiver of on:list:primarySelection:changePrimarySelection:listSelection:changeListSelection:menu: is nil
	http://code.google.com/p/pharo/issues/detail?id=4803
Issue 4573:	Should deprecate TimeProfileBrowser	
	http://code.google.com/p/pharo/issues/detail?id=4573'.
	self loadTogether: self script410 merge: false.
	Smalltalk resetTools.
.
	self flushCaches.
! !
