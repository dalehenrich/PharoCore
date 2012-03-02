
!ShiftJISTextConverter methodsFor: 'private'!
toUnicode: aChar

	^ Character leadingChar: JapaneseEnvironment leadingChar code: aChar asUnicode.
! !
