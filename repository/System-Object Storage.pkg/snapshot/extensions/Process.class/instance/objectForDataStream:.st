
!Process methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	"I am not allowed to be written on an object file."

	refStrm replace: self with: nil.
	^ nil! !
