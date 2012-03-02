
!SARInstaller methodsFor: 'client services'!
fileInMonticelloPackageNamed: memberName
	"This is to be used from preamble/postscript code to file in zip 
	members as Monticello packages (.mc)."

	| member file mcPackagePanel mcRevisionInfo mcSnapshot mcFilePackageManager mcPackage mcBootstrap newCS |
	mcPackagePanel := Smalltalk globals at: #MCPackagePanel ifAbsent: [  ].
	mcRevisionInfo := Smalltalk globals at: #MCRevisionInfo ifAbsent: [  ].
	mcSnapshot := Smalltalk globals at: #MCSnapshot ifAbsent: [  ].
	mcFilePackageManager := Smalltalk globals at: #MCFilePackageManager ifAbsent: [  ].
	mcPackage := Smalltalk globals at: #MCPackage ifAbsent: [  ].
	member := self memberNamed: memberName.
	member ifNil: [ ^ self errorNoSuchMember: memberName ].	"We are missing MCInstaller, Monticello and/or MonticelloCVS."
	member extractToFileNamed: member localFileName inDirectory: self directory.
	file := (Smalltalk globals at: #MCFile) name: member localFileName directory: self directory.
	self class
		withCurrentChangeSetNamed: file name
		do: [ :cs | 
			| info snapshot |
			newCS := cs.
			file
				readStreamDo: [ :stream | 
					info := mcRevisionInfo readFrom: stream nextChunk.
					snapshot := mcSnapshot fromStream: stream ].
			snapshot install.
			(mcFilePackageManager forPackage: (mcPackage named: info packageName)) file: file ].
	newCS isEmpty
		ifTrue: [ ChangeSet removeChangeSet: newCS ].
	mcPackagePanel allSubInstancesDo: [ :ea | ea refresh ].
	World doOneCycle.
	self installed: member! !
