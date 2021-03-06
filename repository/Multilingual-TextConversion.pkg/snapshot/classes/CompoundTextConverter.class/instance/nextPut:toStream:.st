
!CompoundTextConverter methodsFor: 'conversion'!
nextPut: aCharacter toStream: aStream

	| ascii leadingChar class |
	aStream isBinary ifTrue: [^aCharacter storeBinaryOn: aStream].
	class := (EncodedCharSet charsetAt: aCharacter leadingChar) traditionalCharsetClass.
	ascii := (class charFromUnicode: aCharacter asUnicode) charCode.
	leadingChar := class leadingChar.
	self nextPutValue: ascii toStream: aStream withShiftSequenceIfNeededForLeadingChar: leadingChar.
! !
