
!ScriptLoader methodsFor: 'pharo - updates'!
update14324
	"self new update14324"
	self withUpdateLog: 'Issue 5269:	Add cmd-a/cmd-A on multiple selection PluggableListMorph for select/deselect all
	http://code.google.com/p/pharo/issues/detail?id=5269
Issue 5268:	CompiledMethod >> receiver:withArguments:executeMethod: should be in class side
	http://code.google.com/p/pharo/issues/detail?id=5268
Issue 5240:	[ENH]: Make PluggableButtonMorph more lively
	http://code.google.com/p/pharo/issues/detail?id=5240
Issue 5228:	MorphTreeMorph hide last element when horizontal scrollbar is shown
	http://code.google.com/p/pharo/issues/detail?id=5228'.
	self loadTogether: self script585 merge: false.
	self flushCaches.
! !
