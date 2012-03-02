
!GZipReadStream class methodsFor: 'filein/out'!
services

	^ Array 
		with: self serviceViewDecompress
		with: self serviceDecompressToFile
	! !
