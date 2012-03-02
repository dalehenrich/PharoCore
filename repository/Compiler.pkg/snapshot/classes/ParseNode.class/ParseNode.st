
Object subclass: #ParseNode
	instanceVariableNames: 'comment pc'
	classVariableNames: 'Bfp BtpLong CodeBases CodeLimits DblExtDoAll Dup EndMethod EndRemote Jmp JmpLimit JmpLong LdFalse LdInstLong LdInstType LdLitIndType LdLitType LdMinus1 LdNil LdSelf LdSuper LdTempType LdThisContext LdTrue LoadLong LongLongDoAll NodeFalse NodeNil NodeSelf NodeSuper NodeThisContext NodeTrue Pop Send SendLimit SendLong SendLong2 SendPlus SendType ShortStoP StdLiterals StdSelectors StdVariables Store StorePop'
	poolDictionaries: 'TextConstants'
	category: 'Compiler-ParseNodes'!

!ParseNode commentStamp: '<historical>' prior: 0!
This superclass of most compiler/decompiler classes declares common class variables, default messages, and the code emitters for jumps. Some of the class variables are initialized here; the rest are initialized in class VariableNode.!
