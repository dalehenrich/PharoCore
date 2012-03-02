
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFullNameFor
	"Hoping that you have 'C:' of course..."
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	self assert: (FileDirectory default fullNameFor: 'C:') = 'C:'.
	self assert: (FileDirectory default fullNameFor: 'C:\test') = 'C:\test'.
	self assert: (FileDirectory default fullNameFor: '\\share') = '\\share'.
	self assert: (FileDirectory default fullNameFor: '\\share\test') = '\\share\test'.
	self assert: (FileDirectory default fullNameFor: '\test') = (FileDirectory default pathParts first, '\test').
! !
