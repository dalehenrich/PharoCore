
!SystemProgressMorph methodsFor: 'private'!
recenter
	| position |
	"Put ourself at the top left corner of the display"	
	self position: 100@20.	
	"Check to see if labels are wider than progress bars. In that case do
	a centered instead of the default left aligned layout."
	position :=	self width > (15 * 2 + (self borderWidth * 2) + BarWidth)
					ifTrue: [#topCenter]
					ifFalse: [#leftCenter].
	self cellPositioning: position! !
