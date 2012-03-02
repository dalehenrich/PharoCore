
Error subclass: #OutOfMemory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Exceptions'!

!OutOfMemory commentStamp: 'StephaneDucasse 12/18/2009 12:01' prior: 0!
OutOfMemory is signaled when an allocation fails due to not having enough memory. Its default action signals the low-space semaphore.
Originally suggested by A. Raab.!
