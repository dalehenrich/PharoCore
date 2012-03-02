
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFileDirectoryExists
	"Hoping that you have 'C:' of course..."
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	self assert: (FileDirectory root directoryExists: 'C:').! !
