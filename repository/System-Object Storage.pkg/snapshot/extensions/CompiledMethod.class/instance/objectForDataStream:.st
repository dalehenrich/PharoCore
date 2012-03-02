
!CompiledMethod methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	
	self primitive = 117 ifTrue: [self literals first at: 4 put: 0].
! !
