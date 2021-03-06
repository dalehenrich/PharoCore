
Object subclass: #ConnectionQueue
	instanceVariableNames: 'portNumber maxQueueLength connections accessSema socket process'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Kernel'!

!ConnectionQueue commentStamp: '<historical>' prior: 0!
A ConnectionQueue listens on a given port number and collects a queue of client connections. In order to handle state changes quickly, a ConnectionQueue has its own process that: (a) tries to keep a socket listening on the port whenever the queue isn't already full of connections and (b) prunes stale connections out of the queue to make room for fresh ones.
!
