
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopySearchAccept: aString
	aString isEmptyOrNil
		ifTrue: [ workingCopyPattern := nil ]
		ifFalse: [ 
			workingCopyPattern := [ aString asRegexIgnoringCase ] on: RegexSyntaxError do: [ aString ] ].
	self workingCopyListChanged.! !
