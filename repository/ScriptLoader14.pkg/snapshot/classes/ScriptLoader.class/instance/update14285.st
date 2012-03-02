
!ScriptLoader methodsFor: 'pharo - updates'!
update14285
	"self new update14285"
	self withUpdateLog: '- Issue 5178:	Unload RB packages'.
	self loadTogether: self script548 merge: false.
	#('AST-Core' 
'AST-Semantic'
'AST-Tests-Core' 
'AST-Tests-Semantic'
'Refactoring-Changes'
'Refactoring-Core'
'Refactoring-Critics'
'Refactoring-Environment'
'Refactoring-Extensions-Environment'
'Refactoring-Tests-Changes'
'Refactoring-Tests-Core'
'Refactoring-Tests-Critics'
'Refactoring-Tests-Environment') do: [:each | ScriptLoader new unloadPackageNamed: each ].
	self flushCaches.
! !
