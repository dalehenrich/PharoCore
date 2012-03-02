
!ScriptLoader methodsFor: 'pharo - updates'!
update14291
	"self new update14291"
	self withUpdateLog: '- Issue 5183:	Problem with PluggableListMorph. Thanks Benjamin van Ryseghem. Thanks for the fix benjamin. 
	
-  Issue 5133:	Editor >> cursorEnd: and cursorHome: does not work properly. Reverted the code because it was not ok.'.
	self loadTogether: self script554 merge: false.
	self flushCaches.
! !
