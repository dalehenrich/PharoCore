
FSGuide subclass: #FSBreadthFirstGuide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSBreadthFirstGuide commentStamp: 'cwp 11/18/2009 12:13' prior: 0!
I traverse the filesystem in breadth-first order. Given this hierarchy:

alpha
	beta
	gamma
delta
	epsilon

I would visit the nodes in the following order:  alpha, delta, beta, gamma, epsilon.

I use my work instance variable as a queue, adding nodes to be visited to the end and retrieving them from the beginning.
!
