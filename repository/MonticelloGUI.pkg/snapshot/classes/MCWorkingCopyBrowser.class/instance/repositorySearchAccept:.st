
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
repositorySearchAccept: aString
	aString isEmptyOrNil
		ifTrue: [ repositoryPattern := nil ]
		ifFalse: [ repositoryPattern := [ aString asRegexIgnoringCase ] on: RegexSyntaxError do: [ aString ]].
	self repositoryListChanged.! !
