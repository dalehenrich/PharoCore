
!FileDirectory methodsFor: 'path access'!
/ aString 
	"Answer a FileDirectory on a subdirectory named aString, of the receiver."
	^ FileDirectory on: (self fullNameFor: aString)! !
