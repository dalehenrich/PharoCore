
Notification subclass: #HTTPProgress
	instanceVariableNames: 'total amount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Protocols'!

!HTTPProgress commentStamp: 'StephaneDucasse 3/28/2010 21:27' prior: 0!
A notification to show progress when using HTTP.
I include
- total: The total size of the download (if known)
- amount: The completed amount of the download (if known)
!
