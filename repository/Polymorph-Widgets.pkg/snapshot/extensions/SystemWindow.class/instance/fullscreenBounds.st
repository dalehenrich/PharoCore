
!SystemWindow methodsFor: '*Polymorph-Widgets'!
fullscreenBounds
	"Answer the bounds that the receiver would take if expanded to fullscreen."
	
	| left right |
	left := right := 0.
	self paneMorphs
		do: [:pane | ((pane isKindOf: ScrollPane)
					and: [pane retractableScrollBar])
				ifTrue: [pane scrollBarOnLeft
						ifTrue: [left := left max: pane scrollBarThickness]
						ifFalse: [right := right max: pane scrollBarThickness]]].
	^ ( (RealEstateAgent maximumUsableAreaInWorld: self world)
				insetBy: (left @ 0 corner: right @ 0)) insetBy: self fullscreenMargin 
! !
