
!MorphTreeMorph methodsFor: 'expanding-collapsing'!
expandAll
	"Expand all of the roots!!"
	Cursor wait showWhile: [
		self roots reverseDo: [:m | self expandAllSilently: m].
		self innerWidgetChanged]! !
