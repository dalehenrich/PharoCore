
!AbstractUserInput methodsFor: 'accessing by option'!
hasOption: aString
	"Test if the option aString exists
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then hasOption: #option4 will return true and hasOption: #foo will return false"
	
	^ dataSortByOptions includesKey: aString! !
