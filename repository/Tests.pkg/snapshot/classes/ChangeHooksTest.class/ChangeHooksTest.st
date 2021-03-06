
SystemChangeTestRoot subclass: #ChangeHooksTest
	instanceVariableNames: 'previousChangeSet testsChangeSet capturedEvents generatedTestClass generatedTestClassX createdMethodName createdMethod doItExpression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-SystemChangeNotification'!

!ChangeHooksTest commentStamp: 'rw 4/5/2006 17:14' prior: 0!
This class implements unit tests to verify that when the system changes, notification messages are sent around correctly.

Therefore the test messages make a system change, after registering to receive an event ater the change occured. In this event (sent immediately after the change), the actual assertions take place.

Note that the system changes are *really* made to the system, but in a change set that is created in the setUp method, while the previous one is restored in the tearDown method.!
