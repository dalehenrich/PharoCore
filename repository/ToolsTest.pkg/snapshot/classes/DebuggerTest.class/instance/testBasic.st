
!DebuggerTest methodsFor: 'testing'!
testBasic
	| context process debugger indice|
	context := [ 20 factorial ] asContext.
	indice := 1.

	process := Process 
		forContext: context
		priority: Processor userInterruptPriority.

	debugger := Smalltalk tools debugger new
						process: process
						controller: nil
						context: context.
	debugger expandStack.
	debugger toggleContextStackIndex: 1.
	"The index of the message list is 1 "
	self assert: debugger messageListIndex = 1.
"	debugger openFullNoSuspendLabel: 'hello'."
"	debugger down."
"	debugger up."
	self assert: debugger messageListIndex = 1.
"	debugger toggleContextStackIndex: 1."
	self assert: debugger selectedContext printString = '[20 factorial] in DebuggerTest>>testBasic'.
"	self assert: debugger selectedMessage = self."	
"	debugger openFullNoSuspendLabel: 'Text'."
	debugger send.
	debugger send.
	self assert: debugger contents = (Integer>>#factorial) getSourceFromFile.
	self assert: debugger selectedContext printString =  'SmallInteger(Integer)>>factorial'.! !
