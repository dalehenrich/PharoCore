
InstructionStream subclass: #ContextPart
	instanceVariableNames: 'stackp'
	classVariableNames: 'PrimitiveFailToken QuickStep TryNamedPrimitiveTemplateMethod'
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!ContextPart commentStamp: '<historical>' prior: 0!
To the instruction parsing ability of InstructionStream I add the actual semantics for execution. The execution state is stored in the indexable fields of my subclasses. This includes temporary variables and a stack of values used in evaluating expressions. The actual semantics of execution can be found in my category "system simulation" and "instruction decode". These methods exactly parallel the operation of the Smalltalk machine itself.
	
The simulator is a group of my methods that do what the Smalltalk interpreter does: execute Smalltalk bytecodes. By adding code to the simulator, you may take statistics on the running of Smalltalk methods. For example,
	Transcript show: (ContextPart runSimulated: [3 factorial]) printString.!
