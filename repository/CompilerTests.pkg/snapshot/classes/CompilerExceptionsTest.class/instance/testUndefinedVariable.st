
!CompilerExceptionsTest methodsFor: 'tests'!
testUndefinedVariable

	self
		compiling: 'griffle | goo | ^ goo' shouldRaise: UndefinedVariable;
		compiling: 'griffle [ | goo | ^ goo ] value' shouldRaise: UndefinedVariable! !
