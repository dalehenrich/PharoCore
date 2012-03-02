
!ZipArchiveMember methodsFor: 'accessing'!
extractToFileNamed: aLocalFileName inDirectory: dir
	| fullName fullDir |
	self isEncrypted ifTrue: [ ^self error: 'encryption unsupported' ].
	fullName := dir fullNameFor: aLocalFileName.
	fullDir := FileDirectory forFileName: fullName.
	fullDir assureExistence.
	self isDirectory 
		ifFalse: [ fullDir 
					forceNewFileNamed: (FileDirectory localNameFor: fullName) 					do: [:stream |  self extractTo: stream]]
	ifTrue: [ fullDir assureExistence ]
! !
