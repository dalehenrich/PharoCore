
!AbstractUserInput methodsFor: 'accessing by option'!
allArgumentsNoOption
	"Returns a copy of all arguments which are before any option
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then allArgumentstNoOptionwill return #(a1 a2.txt) "
	
	^ self allArgumentsAtOption: #*
! !
