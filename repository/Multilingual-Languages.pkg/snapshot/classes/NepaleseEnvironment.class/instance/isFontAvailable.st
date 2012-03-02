
!NepaleseEnvironment methodsFor: 'as yet unclassified'!
isFontAvailable
	^ (Smalltalk globals classNamed: #RomePluginCanvas)
		ifNil: [ false ]
		ifNotNil: [ :canvasClass | canvasClass pangoIsAvailable ]! !
