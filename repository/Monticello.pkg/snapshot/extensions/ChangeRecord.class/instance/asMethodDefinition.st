
!ChangeRecord methodsFor: '*Monticello'!
asMethodDefinition
	self deprecated: 'use asMCMethodDefinition'.
	^ MCMethodDefinition 
		className: class
		classIsMeta: meta
		selector: self methodSelector
		category: category
		timeStamp: stamp
		source: self string! !
