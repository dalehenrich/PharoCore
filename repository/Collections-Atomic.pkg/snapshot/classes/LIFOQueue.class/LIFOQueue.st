
AtomicCollection subclass: #LIFOQueue
	instanceVariableNames: 'head'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Atomic'!

!LIFOQueue commentStamp: 'Igor.Stasenko 10/16/2010 03:58' prior: 0!
This is a thread-safe LIFO (last-in-first-out) queue (also known as stack) implementation,
 based on atomic operations.
!
