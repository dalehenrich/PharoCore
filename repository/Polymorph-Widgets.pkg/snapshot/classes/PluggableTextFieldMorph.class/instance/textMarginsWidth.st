
!PluggableTextFieldMorph methodsFor: 'accessing'!
textMarginsWidth
	| tm |
	"hack to get the margins width 
	because textMorph margins can 
	be an integer, a point or a rectangle"
	tm := self textMorph margins.
	^ tm isRectangle
		ifTrue: [tm left]
		ifFalse: [tm isPoint
				ifTrue: [tm x]
				ifFalse: [tm]]! !
