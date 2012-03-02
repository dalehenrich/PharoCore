
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFileDirectoryLocalName
	"Hoping that you have 'C:' of course..."
	| fd |
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	fd := FileDirectory on: 'C:'.
	self assert: fd localName = 'C:'.
! !
