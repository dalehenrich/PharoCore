
!RGCommentDefinition methodsFor: 'converting'!
asStringOrText

	| text |
	self realClass ifNil: [ ^self fullName ].
	text := self fullName asText.
	text addAttribute: TextEmphasis italic.
	^ text! !
