
Object subclass: #AtomicQueueItem
	instanceVariableNames: 'next object'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Atomic'!

!AtomicQueueItem commentStamp: 'Igor.Stasenko 10/16/2010 02:29' prior: 0!
i am a queue item , used by atomic queues.
All my new instances are circular i.e. next=self!
