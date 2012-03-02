
Exception subclass: #IllegalResumeAttempt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Exceptions'!

!IllegalResumeAttempt commentStamp: '<historical>' prior: 0!
This class is private to the EHS implementation.  An instance of it is signaled whenever an attempt is made to resume from an exception which answers false to #isResumable.!
