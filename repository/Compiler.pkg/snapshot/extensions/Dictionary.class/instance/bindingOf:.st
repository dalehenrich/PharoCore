
!Dictionary methodsFor: '*Compiler'!
bindingOf: varName
	^self associationAt: varName ifAbsent:[nil]! !
