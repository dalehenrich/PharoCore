
!Morph methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm 
	"I am being written out on an object file"

	self prepareToBeSaved.	"Amen"
	^self! !
