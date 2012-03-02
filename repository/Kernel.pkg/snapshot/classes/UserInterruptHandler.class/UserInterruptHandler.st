
InputEventHandler subclass: #UserInterruptHandler
	instanceVariableNames: 'interruptKey'
	classVariableNames: 'CmdDotEnabled'
	poolDictionaries: 'EventSensorConstants'
	category: 'Kernel-Processes'!

!UserInterruptHandler commentStamp: 'michael.rueger 4/22/2009 12:01' prior: 0!
An UserInterruptHandler watches incoming input events and checks for the user interrupt key.
If encountered it interrupts the current process and opens a notifier..

Instance Variables
	interruptKey:		<Object>

interruptKey
	- definition of the user interrupt key
!
