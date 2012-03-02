
!ZipWriteStream class methodsFor: 'regression test'!
regressionTestFrom: fd using: tempName stats: stats
	| files |
	files := fd fileNames asSortedCollection.
	files do:[:fName| | fullName file |
		file := nil.
		fullName := fd fullNameFor: fName.
		fullName = tempName ifFalse:[
			file := StandardFileStream new open: fullName forWrite: false].
		self compressAndDecompress: file using: tempName stats: stats].
	stats at: #numFiles put: (stats at: #numFiles ifAbsent:[0]) + files size.
	files := nil.
	self printRegressionStats: stats from: fd.
	fd directoryNames asSortedCollection do:[:dName|
		self regressionTestFrom: (fd directoryNamed: dName) using: tempName stats: stats.
	].! !
