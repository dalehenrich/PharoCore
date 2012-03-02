
CompilerNotifyingTest subclass: #CompilerSyntaxErrorNotifyingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CompilerTests'!

!CompilerSyntaxErrorNotifyingTest commentStamp: 'nice 2/23/2012 22:09' prior: 0!
A CompilerSyntaxErrorNotifyingTest is a specialization for testing correct handling of non interactive compiler notification.
Non interactive is a very relative notion in Smalltalk...
Here it means that user interaction will not happen directly in the TextEditor holding source code, but rather thru a SyntaxError window that will pop-up.
This test intercept the Notification before the pop-up is raised.
!
