
!AbstractUserInput methodsFor: 'accessing by option'!
firstArgumentAtOption: aString
	"Returns a copy of the first argument which is after the option aString and before the next option
	ex: If the input was #(a1 a2.txt -option1 arg1 arg2 arg3.txt -option2 arg4 -option3 arg5.avi -option4)
	Then firstArgumentAtOption: #option1 will return #arg1 and allArgumentsAtOption: #option4 will return nil"
		
	(self hasOption: aString) 
		ifFalse: [ ^ nil ].
	^ ((dataSortByOptions at: aString) isEmpty) 
		ifTrue: [ nil ] 
		ifFalse: [ (dataSortByOptions at: aString) first ]
! !
