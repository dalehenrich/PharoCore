
!TTFontDescription methodsFor: '*System-Object Storage'!
objectForDataStream: refStrm
	| dp |
	"I am about to be written on an object file.  Write a reference to a known Font in the other system instead.  "

	"A path to me"
	(TextSharedInformation at: #forceFontWriting ifAbsent: [false]) ifTrue: [^ self].
		"special case for saving the default fonts on the disk.  See collectionFromFileNamed:"

	dp := DiskProxy global: #TTFontDescription selector: #descriptionFullNamed:
			args: {self fullName}.
	refStrm replace: self with: dp.
	^ dp.
! !
