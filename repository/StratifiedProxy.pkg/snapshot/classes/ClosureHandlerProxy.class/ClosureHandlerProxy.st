
MessageCatchingProxy subclass: #ClosureHandlerProxy
	instanceVariableNames: 'closure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StratifiedProxy'!

!ClosureHandlerProxy commentStamp: 'IgorStasenko 2/2/2011 21:14' prior: 0!
I can instantiate a proxy which allows to use a block closure to handle all messages 
sent to the proxy.

| p |
p := ClosureHandlerProxy messageHandler: [:message :proxy |
	Transcript show: 'my proxy received ' , message selector printString , ' message '; cr
].

p yourself.
p isNumber.
p isString.!
