
!Morph methodsFor: 'text-anchor'!
hasInlineAnchorString
	^ (self textAnchorType == #inline
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'Inline' translated! !
