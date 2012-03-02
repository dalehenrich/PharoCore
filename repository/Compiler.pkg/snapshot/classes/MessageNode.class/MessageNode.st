
ParseNode subclass: #MessageNode
	instanceVariableNames: 'receiver selector precedence special arguments sizes equalNode caseErrorNode originalSelector originalArguments'
	classVariableNames: 'MacroEmitters MacroPrinters MacroSelectors MacroSizers MacroTransformers StdTypers ThenFlag'
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!MessageNode commentStamp: '<historical>' prior: 0!
I represent a receiver and its message.
	
Precedence codes:
	1 unary
	2 binary
	3 keyword
	4 other
	
If special>0, I compile special code in-line instead of sending messages with literal methods as remotely copied contexts.!
