
!ScriptLoader methodsFor: 'pharo - updates'!
update14188
	"self new update14188"
	self withUpdateLog: '- Issue 4900:	CompiledMethod printString. Fixing Array >> #printOn:.
	http://code.google.com/p/pharo/issues/detail?id=4900
-  Issue 4896:	Small cleanup in PlugabbleListMorph. Thanks Benjamin van Ryseghem. Indeed there is no useless simple fixes. 
	http://code.google.com/p/pharo/issues/detail?id=4896
- Issue 4895:	Update of AbstractTool. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4895
- Issue Issue 4898:	Fix/Improve the drag and drop on PluggableListMorph
	http://code.google.com/p/pharo/issues/detail?id=4898'.
	self loadTogether: self script451 merge: false.
	self flushCaches.
! !
