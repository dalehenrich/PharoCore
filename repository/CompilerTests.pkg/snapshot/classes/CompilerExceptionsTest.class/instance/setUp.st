
!CompilerExceptionsTest methodsFor: 'setUp'!
setUp

	self removeGeneratedMethods.
	status := Parser warningAllowed.
	Parser warnUser.! !
