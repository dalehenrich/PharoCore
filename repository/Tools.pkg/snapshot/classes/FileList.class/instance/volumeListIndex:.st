
!FileList methodsFor: 'volume list and pattern'!
volumeListIndex: index
	"Select the volume name having the given index."

	| delim path |
	volumeListIndex := index.
	index = 1 
		ifTrue: [self directory: FSFilesystem disk root ]
		ifFalse: [
			delim := reference delimiter.
			path := String streamContents: [:stream |
				2 to: index do: [:i |
					stream nextPutAll: (volumeList at: i) withBlanksTrimmed.
					i < index ifTrue: [stream nextPut: delim]]].
			self directory: (reference on: path)].
	brevityState := #FileList.
	self addPath: path.
	self changed: #fileList.
	self changed: #contents.
	self updateButtonRow! !
