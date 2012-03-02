
!FindReplaceService methodsFor: 'accessing'!
findTextSilently: aStringOrText
	findText := aStringOrText asText.
	self changed: #findText! !
