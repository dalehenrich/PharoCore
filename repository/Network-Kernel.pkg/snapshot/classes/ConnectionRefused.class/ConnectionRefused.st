
NetworkError subclass: #ConnectionRefused
	instanceVariableNames: 'host port'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Kernel'!

!ConnectionRefused commentStamp: 'mir 5/12/2003 18:14' prior: 0!
Signals that a connection to the specified host and port was refused.

	host		host which refused the connection
	port		prot to which the connection was refused
!
