
Object subclass: #ZnLogListener
	instanceVariableNames: 'enabled filter lock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Logging'!

!ZnLogListener commentStamp: 'SvenVanCaekenberghe 8/18/2011 14:47' prior: 0!
I am ZnLogListener.

I am an abstract class, subclasses should implement #event:.
I add filtering and monitor for exclusive access.

Part of Zinc HTTP Components.!
