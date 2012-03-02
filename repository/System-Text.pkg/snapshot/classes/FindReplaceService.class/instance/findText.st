
!FindReplaceService methodsFor: 'accessing'!
findText
	^ (findText ifNil: [findText := '' asText. findText]) asString! !
