
!Morph methodsFor: 'layout-menu'!
hasProportionalLayoutString
	| layout |
	^ (((layout := self layoutPolicy) notNil
			and: [layout isProportionalLayout])
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'proportional layout' translated! !
