
!MCMczReader methodsFor: 'as yet unclassified'!
zip
	zip ifNil:
		[zip := ZipArchive new.
		zip readFrom: stream].
	^ zip! !
