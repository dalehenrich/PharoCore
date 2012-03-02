
!MorphTreeMorph methodsFor: 'accessing'!
nodeList
	^ nodeList ifNil: [nodeList := self getList]
! !
