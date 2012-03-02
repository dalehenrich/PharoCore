
!FileList methodsFor: 'accessing'!
pattern: aString
	pattern := aString  asString trimBoth.
	pattern := pattern isEmptyOrNil
		ifTrue: [ nil ]
		ifFalse: [ pattern asRegex ].
		
	self updateFileList.
! !
