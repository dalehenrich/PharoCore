
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFileDirectoryEntryFor
	"Hoping that you have 'C:' of course..."
	| fd |
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	fd := FileDirectory root directoryEntryFor: 'C:'.
	self assert: (fd name sameAs: 'C:').! !
