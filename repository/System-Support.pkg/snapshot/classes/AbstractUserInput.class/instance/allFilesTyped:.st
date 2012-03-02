
!AbstractUserInput methodsFor: 'accessing by file type'!
allFilesTyped: aString
	"Returns a copy of all files which are of the type aString
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then allFilesTyped: #txt will return #(a2.txt arg3.txt)"
	
	^ dataSortByTypes at: aString ifAbsent: [ ^ nil ]! !
