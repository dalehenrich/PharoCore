
!FindReplaceService methodsFor: 'accessing'!
caseSensitive
	^ caseSensitive ifNil: [caseSensitive := TextEditor caseSensitiveFinds]! !
