
Object subclass: #MessageTrap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StratifiedProxy'!

!MessageTrap commentStamp: 'StephaneDucasse 3/1/2011 15:06' prior: 0!
I am utility class, a basis for all message traps. I trap all the messages of my subclasses only if they have a nil method dictionary. I only work with MessageCatchingProxy.
 
See MessageCatchingProxy comment!
