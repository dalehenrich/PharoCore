
!StandardWindow methodsFor: 'as yet unclassified'!
mouseMove: evt
	"Handle a mouse-move event"

	self isFullscreen ifTrue: [^self]. "do nothing if fullscreen"
	^super mouseMove: evt! !
