
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFileDirectoryNamed
	"Hoping that you have 'C:' of course..."
	| fd |
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	fd := FileDirectory root directoryNamed: 'C:'.
	self assert: fd pathName = 'C:'.! !
