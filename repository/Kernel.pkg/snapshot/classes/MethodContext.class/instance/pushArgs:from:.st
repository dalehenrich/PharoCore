
!MethodContext methodsFor: 'system simulation'!
pushArgs: args "<Array>" from: sendr "<ContextPart>" 
	"Helps simulate action of the value primitive for closures.
	 This is used by ContextPart>>runSimulated:contextAtEachStep:"

	closureOrNil
		ifNil: [self error: 'context needs a closure!!']
		ifNotNil:
			["See BlockClosure>>asContextWithSender:"
			 stackp ~= (closureOrNil numArgs + closureOrNil numCopiedValues) ifTrue:
				[self error: 'stack pointer is incorrect!!'].].

	1 to: closureOrNil numArgs do:
		[:i| self at: i put: (args at: i)].
	sender := sendr! !
