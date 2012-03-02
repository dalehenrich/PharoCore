
WaitfreeQueue subclass: #AtomicSharedQueue
	instanceVariableNames: 'availSema'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Atomic'!

!AtomicSharedQueue commentStamp: 'IgorStasenko 2/28/2011 15:33' prior: 0!
I am using semaphore to signal/wait for new items available in queue

I am introducing extra protocol - #next,
which blocks the sender until it can successfully fetch next item from queue.
!
