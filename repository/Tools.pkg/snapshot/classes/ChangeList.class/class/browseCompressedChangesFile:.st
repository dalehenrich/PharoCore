
!ChangeList class methodsFor: 'filein/out'!
browseCompressedChangesFile: fullName 
	"Browse the selected file in fileIn format."

	| unzipped stream |
	fullName ifNil: [^Beeper beep].
	stream := FileStream readOnlyFileNamed: fullName.
	[ | zipped |
	stream converter: Latin1TextConverter new.
	zipped := GZipReadStream on: stream.
	unzipped := zipped contents asString]
		ensure: [stream close].
	stream := (MultiByteBinaryOrTextStream with: unzipped) reset.
	self browseStream: stream! !
