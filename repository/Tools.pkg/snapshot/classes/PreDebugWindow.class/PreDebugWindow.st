
SystemWindow subclass: #PreDebugWindow
	instanceVariableNames: 'proceedButton debugButton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Debugger'!

!PreDebugWindow commentStamp: 'LaurentLaffont 3/15/2011 20:51' prior: 0!
I am the window that shows up when the debugger is launched.  I show you the first lines of the stack trace that caused my apparition, and buttons to allow you to:
 - resume the execution
 - abandon the execution
 - debug this error
 - create the method if it is MessageNotUnderstood exception

To see me, evaluate:
2/0!
