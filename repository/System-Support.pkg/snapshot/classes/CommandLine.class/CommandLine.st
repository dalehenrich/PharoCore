
AbstractUserInput subclass: #CommandLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Support'!

CommandLine class
	instanceVariableNames: 'singleton'!

!CommandLine commentStamp: 'StephaneDucasse 3/14/2011 14:14' prior: 0!
CommandLine represents the arguments given on the CommandLine.
CommandLine is a singleton, so it can not be instantiated.

If you run pharo by:
	pharo a b c d e
then, at start up, the unique instance of CommandLine will be created, and will receive #(a b c d e) as parameter for its input: message.

---
All blocks you register on this class will be evaluated at the start up.
Please note that CommandLine DO NOT REPLACE the start up list (in SmalltalkImage).

Finally even if the condition block is always true, it does not mean that the action block will be executed; for example, when there is no
 parameter on the command line, it will not be. If there is no command line argument the following will not be executed. 

	CommandLine register: [ :commandLine | "anything"] if: [ :commandLine | true ]  name: #smth.!
