
Notification subclass: #ProgressNotification
	instanceVariableNames: 'amount done extra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIManager-Support'!

!ProgressNotification commentStamp: '<historical>' prior: 0!
Used to signal progress without requiring a specific receiver to notify. Caller/callee convention could be to simply count the number of signals caught or to pass more substantive information with #signal:.!
