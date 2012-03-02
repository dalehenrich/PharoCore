
!AbstractUserInput methodsFor: 'accessing by option'!
allArgumentsAtOption: aString
	"Returns a copy of all arguments which are after the option aString and before the next option.
	The implicit first option is #*.
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then allArgumentstAtOption: #option1 will return #(arg1 arg2 arg3.txt) and allArgumentsAtOption: #option4 will return nil. allArgumentsAtOption: #* will return #(a1 a2.txt)"
	
	(self hasOption: aString) ifFalse: [ ^ nil ].
	^ ((dataSortByOptions at: aString) isEmpty) 
		ifTrue: [ nil ]
		ifFalse: [ dataSortByOptions at: aString ]
! !
