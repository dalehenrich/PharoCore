
!ZipArchiveMember methodsFor: 'accessing'!
contentStream
	"Answer my contents as a text stream.
	Default is no conversion, since we don't know what the bytes mean."

	| s |
	s := MultiByteBinaryOrTextStream on: (String new: self uncompressedSize).
	s converter: Latin1TextConverter new.
	self extractTo: s.
	s reset.
	^ s.
! !
