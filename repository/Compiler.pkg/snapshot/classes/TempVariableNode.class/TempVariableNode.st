
VariableNode subclass: #TempVariableNode
	instanceVariableNames: 'argType hasRefs hasDefs scope definingScope readingScopes writingScopes remoteNode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!TempVariableNode commentStamp: '<historical>' prior: 0!
I am a parse tree leaf representing a temporary variable!
