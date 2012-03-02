
InstructionClient subclass: #InstructionPrinter
	instanceVariableNames: 'method scanner stream oldPC innerIndents indent printPC indentSpanOfFollowingJump'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!InstructionPrinter commentStamp: 'md 4/8/2003 12:47' prior: 0!
My instances can print the object code of a CompiledMethod in symbolic format. They print into an instance variable, stream, and uses oldPC to determine how many bytes to print in the listing. The variable method  is used to hold the method being printed.!
