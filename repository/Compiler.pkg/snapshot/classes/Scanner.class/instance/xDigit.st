
!Scanner methodsFor: 'multi-character scans'!
xDigit
	"Form a number."

	tokenType := #number.
	aheadChar == DoItCharacter
		ifTrue: [source skip: -1 "Read off the end last time"]
		ifFalse: [source skip: -2].
	token := (SqNumberParser on: source)
		failBlock: [:errorString :position | self notify: errorString at:position];
		nextNumber.
	self step; step! !