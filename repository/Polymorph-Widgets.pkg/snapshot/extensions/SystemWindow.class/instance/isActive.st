
!SystemWindow methodsFor: '*Polymorph-Widgets'!
isActive
	"Answer active if no owner too to avoid color flickering."
	
	self owner ifNil: [^true].
	self activeOnlyOnTop ifTrue: [^self owner isWindowActive: self].
	^ true! !
