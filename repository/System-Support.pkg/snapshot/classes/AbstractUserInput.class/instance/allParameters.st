
!AbstractUserInput methodsFor: 'accessing'!
allParameters
	"Returns all the parameters given to input:
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then allParameters will return #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)"
	
	data ifNil: [ ^ nil ].
	^ data  ! !
