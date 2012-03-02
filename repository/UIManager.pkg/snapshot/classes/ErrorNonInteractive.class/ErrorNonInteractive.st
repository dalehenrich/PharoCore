
Error subclass: #ErrorNonInteractive
	instanceVariableNames: 'exception'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIManager'!

!ErrorNonInteractive commentStamp: 'IgorStasenko 1/25/2011 13:29' prior: 0!
This error thrown when image runs in non-interactive mode (no user intervention possible nor expected),
but application trying to use tools which require user's intervention.
For example, in headless image application trying to query a user name, or dialog to confirm with proceeding some action.!
