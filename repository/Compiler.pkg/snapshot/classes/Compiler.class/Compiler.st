
Object subclass: #Compiler
	instanceVariableNames: 'sourceStream requestor class category context parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Kernel'!

!Compiler commentStamp: '<historical>' prior: 0!
The compiler accepts Smalltalk source code and compiles it with respect to a given class. The user of the compiler supplies a context so that temporary variables are accessible during compilation. If there is an error, a requestor (usually a kind of StringHolderController) is sent the message notify:at:in: so that the error message can be displayed. If there is no error, then the result of compilation is a MethodNode, which is the root of a parse tree whose nodes are kinds of ParseNodes. The parse tree can be sent messages to (1) generate code for a CompiledMethod (this is done for compiling methods or evaluating expressions); (2) pretty-print the code (for formatting); or (3) produce a map from object code back to source code (used by debugger program-counter selection). See also Parser, Encoder, ParseNode.!
