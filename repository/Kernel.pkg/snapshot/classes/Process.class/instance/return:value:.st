
!Process methodsFor: 'changing suspended state'!
return: aContext value: value
	"Pop thread down to aContext's sender.  Execute any unwind blocks on the way.  See #popTo: comment and #runUntilErrorOrReturnFrom: for more details."

	suspendedContext == aContext ifTrue: [
		^ suspendedContext := aContext return: value from: aContext].
	self activateReturn: aContext value: value.
	^ self complete: aContext.
! !
