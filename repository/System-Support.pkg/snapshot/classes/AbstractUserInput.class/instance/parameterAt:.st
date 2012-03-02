
!AbstractUserInput methodsFor: 'accessing'!
parameterAt: anIndex
	"returns the parameter at the specified index
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then parametersAt:3 will return -option1"
	
	anIndex ifNil: [ ^ nil ].
	^ self allParameters at: anIndex ifAbsent: [ nil ]! !
