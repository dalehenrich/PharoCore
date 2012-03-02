
!ContextPart methodsFor: 'controlling'!
send: selector to: rcvr with: args super: superFlag 
	"Simulate the action of sending a message with selector, selector, and 
	arguments, args, to receiver. The argument, superFlag, tells whether the 
	receiver of the message was specified with 'super' in the source method."

	| class meth val |
	class := superFlag
			ifTrue: [(self method literalAt: self method numLiterals) value superclass]
			ifFalse: [rcvr class].
	meth := class lookupSelector: selector.
	meth == nil
		ifTrue: [^ self send: #doesNotUnderstand:
					to: rcvr
					with: (Array with: (Message selector: selector arguments: args))
					super: superFlag]
		ifFalse: [val := self tryPrimitiveFor: meth
						receiver: rcvr
						args: args.
				val == PrimitiveFailToken ifFalse: [^ val].
				^ self activateMethod: meth
					withArgs: args
					receiver: rcvr
					class: class]! !
