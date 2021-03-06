
!SystemReporter methodsFor: 'reporting'!
reportVM: aStream

	self header: 'Virtual Machine' on: aStream.
	aStream
		nextPutAll: (Smalltalk vm vmFileName); cr;
		nextPutAll: (Smalltalk vm version); cr.
	Smalltalk vm buildDate
		ifNotNilDo: [:string | aStream nextPutAll: string; cr].
	[Smalltalk vm platformSourceVersion
		ifNotNilDo: [:v | aStream nextPutAll: 'platform sources revision ', v; cr]]
			on: Warning do: ["unsupported primitive"].
	[Smalltalk vm interpreterSourceVersion
		ifNotNilDo: [:v | aStream nextPutAll: 'VMMaker versionString ', v; cr]]
			on: Warning do: ["unsupported primitive"].
	[Smalltalk vm interpreterClass
		ifNotNilDo: [:string | aStream nextPutAll: string; cr].
	Smalltalk vm cogitClass
		ifNotNilDo: [:string | aStream nextPutAll: string; cr]
	] on: Error do: ["unsupported primitives"]
! !
