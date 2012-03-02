
Notification subclass: #TimedOut
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!TimedOut commentStamp: 'brp 10/21/2004 17:47' prior: 0!
I am signalled by #duration:timeoutDo: if the receiving block takes too long to execute.

I am signalled by a watchdog process spawned by #duration:timeoutDo: and caught in the same method. 

I am not intended to be used elsewhere.!
