
!SystemWindow methodsFor: '*Polymorph-Widgets'!
taskbarButtonLeft: aButton event: evt in: aMorph
	"The mouse has left our taskbar button.
	Remove our thumbnail."

	self
		valueOfProperty: #taskbarThumbnail
		ifPresentDo: [:thumb |
			thumb delete.
			self removeProperty: #taskbarThumbnail]! !
