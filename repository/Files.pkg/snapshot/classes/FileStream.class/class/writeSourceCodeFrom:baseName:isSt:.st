
!FileStream class methodsFor: 'file reader services'!
writeSourceCodeFrom: aStream baseName: baseName isSt: stOrCsFlag

	| extension converter fileName |
	extension :=  stOrCsFlag ifTrue: ['.st']  ifFalse: ['.cs'].
	converter := aStream contents isAsciiString 
		ifTrue: [MacRomanTextConverter new] 
		ifFalse: [UTF8TextConverter new].
	fileName := baseName, extension.
	fileName := FileDirectory default checkName: fileName fixErrors: true.
	[FileStream newFileNamed: fileName do: [:fileStream |
		(converter isMemberOf: UTF8TextConverter)
			ifTrue: [fileStream binary.
					UTF8TextConverter writeBOMOn: fileStream].
		fileStream
			text;
			converter: converter;
			nextPutAll: aStream contents;
			close]] on: Abort do: [:e | ]! !
