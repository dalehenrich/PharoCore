
!PluggableButtonMorph methodsFor: 'accessing'!
enabled: aBoolean
	"Set the enabled state of the receiver."
	
	enabled = aBoolean ifTrue: [^self].
	enabled := aBoolean.
	(self labelMorph respondsTo: #enabled:) ifTrue: [
		self labelMorph enabled: aBoolean].
	self changed! !
