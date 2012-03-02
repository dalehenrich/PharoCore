
ArithmeticError subclass: #FloatingPointException
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Exceptions'!

!FloatingPointException commentStamp: 'SvenVanCaekenberghe 4/21/2011 12:39' prior: 0!
I am FloatingPointException, an ArithmeticError indicating a problem in a floating point calculation.

Precision underflow or overflow could be considered FloatingPointExceptions.

ZeroDivide, DomainError and NaNException are examples of more specific ArithmeticErrors that can be signaled before an operation is actually attempted.!
