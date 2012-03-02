
Delay subclass: #DelayWaitTimeout
	instanceVariableNames: 'process expired'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Processes'!

!DelayWaitTimeout commentStamp: '<historical>' prior: 0!
DelayWaitTimeout is a special kind of Delay used in waitTimeoutMSecs: to avoid signaling the underlying semaphore when the wait times out.!
