
!MethodReference methodsFor: 'queries'!
asStringOrText
	| text |
	self actualClass ifNil: [ ^stringVersion ].
	text := (self stringVersion,' {',self category asString,'} ') asText.
	self isLocalSelector ifFalse: [ text addAttribute: TextEmphasis italic ].
	^ text! !
