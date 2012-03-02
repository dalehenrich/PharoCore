
Object subclass: #RootClassPoolUser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'PoolDefiner'
	category: 'KernelTests-Classes'!

!RootClassPoolUser commentStamp: 'StephaneDucasse 12/13/2011 15:57' prior: 0!
I'm a class using a single shared pool (which hides a system class). My subclasses should be able to 
access the class variable defined in the pool I use. !
