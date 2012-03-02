
!PositionableStream methodsFor: '*Compression'!
asZLibReadStream
	^ZLibReadStream on: collection from: position+1 to: readLimit! !
