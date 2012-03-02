
ArithmeticError subclass: #DomainError
	instanceVariableNames: 'from to'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Exceptions'!

!DomainError commentStamp: 'HenrikSperreJohansen 1/19/2012 13:53' prior: 0!
I am DomainError, an ArithmeticException indicating that some argument falls outside an expected domain, [from, to]

When my valid interval is left- or right-open, use signal: creation protocol to provide a custom messageText rather than the default [from, to] notation!
