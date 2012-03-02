
!RxMatcher methodsFor: 'testing'!
atEndOfLine

	^self atEnd or: [stream peek = Cr]! !
