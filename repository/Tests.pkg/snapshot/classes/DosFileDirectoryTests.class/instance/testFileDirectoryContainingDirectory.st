
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFileDirectoryContainingDirectory
	"Hoping that you have 'C:' of course..."
	| fd |
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	fd := FileDirectory on: 'C:'.
	self assert: fd containingDirectory pathName = ''.
! !
