
Object variableSubclass: #AdditionalMethodState
	instanceVariableNames: 'method selector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!AdditionalMethodState commentStamp: '<historical>' prior: 0!
I am class holding state for compiled methods. All my instance variables should be actually part of the CompiledMethod itself, but the current implementation of the VM doesn't allow this.  Currently I hold the selector and any pragmas or properties the compiled method has.  Pragmas and properties are stored in indexable fields; pragmas as instances of Pragma, properties as instances of Association.

I am a reimplementation of much of MethodProperties, but eliminating the explicit properties and pragmas dictionaries.  Hence I answer true to isMethodProperties.!
