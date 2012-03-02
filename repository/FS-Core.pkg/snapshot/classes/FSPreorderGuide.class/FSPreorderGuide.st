
FSGuide subclass: #FSPreorderGuide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSPreorderGuide commentStamp: 'cwp 11/18/2009 12:18' prior: 0!
I traverse the filesystem in depth-first pre order. Given this hierarchy:

alpha
	beta
	gamma
delta
	epsilon

I would visit the nodes in the following order: alpha, beta, gamma, delta, epsilon.

I use my work instance variable as a stack. I push nodes to be visited and visit them in reverse order.!
