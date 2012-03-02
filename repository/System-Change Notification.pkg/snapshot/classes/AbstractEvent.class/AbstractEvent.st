
Object subclass: #AbstractEvent
	instanceVariableNames: 'item itemKind environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Change Notification'!

!AbstractEvent commentStamp: 'StephaneDucasse 2/10/2011 16:05' prior: 0!
I'm a generic event raised by the system (SystemChangeNotifier unique instance) when anything (both classes or methods) changes in the system. Each one of my children represents a specific kind of event the system can notify. 

Now I will soon fade away and be replaced by announcements. !
