
!MessageNames class methodsFor: '*Deprecated14'!
openMessageNames
	"Open a new instance of the receiver in the active world"

	self deprecated: 'issue 4576' on: '14 August, 2011' in: 'Pharo1.4'.	
	self new openAsMorphNamed: 'Message Names' inWorld: self currentWorld

	"MessageNames openMessageNames"
! !
