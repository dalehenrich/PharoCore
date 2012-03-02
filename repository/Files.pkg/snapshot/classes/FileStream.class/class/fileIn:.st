
!FileStream class methodsFor: 'file reader services'!
fileIn: fullName
	"File in the entire contents of the file specified by the name provided"

	| ff fn |
	fullName ifNil: [^ Beeper beep].
	fn := (Smalltalk hasClassNamed: #GZipReadStream) 
		ifTrue: [(Smalltalk classNamed:  #GZipReadStream) uncompressedFileName: fullName]
		ifFalse: [fullName].
	ff := self readOnlyFileNamed: fn.
	ff fileIn.
! !
