
Announcement subclass: #PragmaAnnouncement
	instanceVariableNames: 'pragma'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Pragmas'!

!PragmaAnnouncement commentStamp: 'alain.plantec 10/20/2009 11:34' prior: 0!
A PragmaAnnouncement is announced by a PragmaCollector when it adds, removes or updates a PragmaHandler.

Instance Variables
	pragma:		<Pragma>

pragma
	- the pragma which has been added, removed or updated
!
