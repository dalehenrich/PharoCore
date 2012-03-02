
!ScriptLoader methodsFor: 'pharo - updates'!
update14191
	"self new update14191"
	self withUpdateLog: '- Speed improvement: 10 to 12 times faster !! 
  the speed is now very near from what is possible with PluggableListMorph.
  the TimeProfiler is now very efficient.

- made MorphTreeModel composable (see MCSliceMaker which is not a MorphTreeModel subclass anymore)

- Start to use Annoucements instead of change/update (see MorphTreeSelectionChanged announcement)

- no item forgotten when sliding with the mouse for auto multiselection (as in the TestRunner, try to select items with the mouse, some items are not selected if the mouse slides too fast)

- no need for TickList* (8 classes) and no need for a CheckList class'.
	self loadTogether: self script454 merge: false.
	self flushCaches.
! !
