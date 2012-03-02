
!Latin1Environment class methodsFor: 'language methods'!
nextPutRightHalfValue: ascii toStream: aStream withShiftSequenceIfNeededForTextConverterState: state

	^ self traditionalCharsetClass nextPutRightHalfValue: ascii toStream: aStream withShiftSequenceIfNeededForTextConverterState: state.
! !
