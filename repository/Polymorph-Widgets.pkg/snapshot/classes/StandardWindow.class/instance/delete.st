
!StandardWindow methodsFor: 'as yet unclassified'!
delete
	"If fullscreen remove the owner too."
	
	self mustNotClose ifTrue: [^ self].
	self model okToChange ifFalse: [^ self].
	self model okToClose ifFalse: [^self].
	self isFullscreen
		ifTrue: [self owner delete]
		ifFalse: [super delete]! !
