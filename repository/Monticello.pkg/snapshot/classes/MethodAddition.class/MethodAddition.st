
Object subclass: #MethodAddition
	instanceVariableNames: 'text category changeStamp requestor logSource myClass methodAndNode selector compiledMethod priorMethodOrNil'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Loading'!

!MethodAddition commentStamp: 'rej 2/25/2007 19:30' prior: 0!
I represent the addition of a method to a class.  I can produce the CompiledMethod, install it, and then notify the system that the method has been added.  This allows Monticello to implement atomic addition.  A loader can compile all classes and methods first and then install all methods only after they have been all compiled, and in a way that executes little code.ß!
