
!ProgressInitiationException methodsFor: '*Morphic'!
defaultMorphicAction
	| result progress |
	progress := SystemProgressMorph label: progressTitle min: minVal max: maxVal.
	[[result := workBlock value: progress] on: ProgressNotification do: [:ex|
		ex extraParam isString 
			ifTrue: [SystemProgressMorph uniqueInstance labelAt: progress put: ex extraParam].
		ex resume]] ensure: [SystemProgressMorph close: progress].
	self resume: result! !
