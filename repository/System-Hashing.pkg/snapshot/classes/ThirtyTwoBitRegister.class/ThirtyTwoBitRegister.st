
Object subclass: #ThirtyTwoBitRegister
	instanceVariableNames: 'hi low'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Hashing-Core'!

!ThirtyTwoBitRegister commentStamp: '<historical>' prior: 0!
I represent a 32-bit register. An instance of me can hold any non-negative integer in the range [0..(2^32 - 1)]. Operations are performed on my contents in place, like a hardware register, and results are always modulo 2^32.

This class is primarily meant for use by the SecureHashAlgorithm class.
!
