
!Form methodsFor: 'bordering'!
borderWidth: anInteger 
	"Set the width of the border for the receiver to be anInteger and paint it 
	using black as the border color."

	self border: self boundingBox width: anInteger fillColor: Color black! !
