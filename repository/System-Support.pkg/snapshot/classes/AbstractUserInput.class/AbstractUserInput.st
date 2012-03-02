
Object subclass: #AbstractUserInput
	instanceVariableNames: 'data dataSortByOptions dataSortByTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Support'!

AbstractUserInput class
	instanceVariableNames: 'registrations'!

!AbstractUserInput commentStamp: 'MarcusDenker 5/28/2011 21:46' prior: 0!
Im responsible for handling what to do when an argument is passed on the command line. I'm an abstract class. The following comments only are valid for my subclasses.

Instance side
--------------------
I take a collection of string and sort them. The idea is that this collection represents the  input given by a
 user on a command line format.

For example if the  user passes the following : #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4),
this class offers different ways to access these arguments. The strings are accessible either by options or by file types.

For example: 
1. By option: 

allArgumentsAtOption: aSymbol
	#* -> #(a1 a2.txt)
	#option1 -> #(arg1 arg2 arg3.txt)
	#option2 -> #(arg4)
	#option3 -> #(arg5.avi)
	#option4 -> #()
	
2. By file type:

allFilesTyped: aSymbol
	#txt -> #(a2.txt arg3.txt)
	#avi -> #(arg5.avi)
	
Take a look to the method comments.


Class side:
----------------

It is possible to register things to do to the class. These things will be done when the dispatch message will be thrown.

To register a new extension and its associated action, you should change 
	register: actionBlock if: conditionBlock name: aString.

The argument of name is the name of the registration and it should be unique. All the conditionBlocks will be evaluated, and the ones returning true will get their corresponding actionBlock evaluated.

Here is an example: 
	register: [ :o | Transcript show: o allParameters ] if: [ :o | o allParameters isEmpty not ] name: #demo
As you can see, the blocks take a parameter. It is an instance of the class on which the block is registered.


Note that you can use the dumpRegistrations and dumpRegistrationsInTranscript messages to know what is registered on the class or to know the name of a registration ou want to delete (with the message removeRegistrationNamed: aString).!
