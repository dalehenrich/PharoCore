
!Morph methodsFor: 'menu'!
hasYellowButtonMenu
	"Answer true if I have any items at all for a context (yellow  
	button) menu."
	^ self wantsYellowButtonMenu
			or: [self modelOrNil
				ifNil: [false]
				ifNotNilDo: [:aModel | aModel hasModelYellowButtonMenuItems]]! !
