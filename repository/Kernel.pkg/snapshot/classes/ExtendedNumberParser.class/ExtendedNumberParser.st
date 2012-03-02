
SqNumberParser subclass: #ExtendedNumberParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Numbers'!

!ExtendedNumberParser commentStamp: 'nice 2/13/2010 00:39' prior: 0!
An ExtendedNumberParser is extending Squeak number syntax with these rules

- allow partial specification of integer and fraction parts:
1.e2 .1e3 are both 100.0
- allow plus sign before number and in exponent

!
