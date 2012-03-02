
ParseNodeVisitor subclass: #OptimizedBlockLocalTempReadBeforeWrittenVisitor
	instanceVariableNames: 'inOptimizedBlock readBeforeWritten written'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Support'!

!OptimizedBlockLocalTempReadBeforeWrittenVisitor commentStamp: 'StephaneDucasse 11/29/2011 22:25' prior: 0!
Answer the set of temporary variables that are read before they are written in the visited parse tree.  Used by the compiler to detect those block-local temporaries of blocks in optimized loops that require nilling to prevent a value from a previous iteration persisting into a subsequent one.!
