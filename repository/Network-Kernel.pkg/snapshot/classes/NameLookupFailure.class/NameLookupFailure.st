
NetworkError subclass: #NameLookupFailure
	instanceVariableNames: 'hostName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Kernel'!

!NameLookupFailure commentStamp: 'mir 5/12/2003 18:16' prior: 0!
Signals that a name lookup operation failed.

	hostName	hostName for which the name loopup failed
!
