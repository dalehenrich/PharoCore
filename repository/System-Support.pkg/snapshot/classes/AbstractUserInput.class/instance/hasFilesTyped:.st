
!AbstractUserInput methodsFor: 'accessing by file type'!
hasFilesTyped: aString
	"Test if there is at least one filed of type aString
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then hasFilesTyped: #txt will return true and hasFilesTyped: #foo will return false"
	
	^ dataSortByTypes includesKey: aString! !
