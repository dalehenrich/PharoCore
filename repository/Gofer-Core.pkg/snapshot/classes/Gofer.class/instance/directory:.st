
!Gofer methodsFor: 'repositories'!
directory: aDirectoryOrString
	"Add a file-system repository at aDirectoryOrString."

	| repository |
	repository := (aDirectoryOrString isString and: [ aDirectoryOrString endsWith: '*' ])
		ifTrue: [ 
			((Smalltalk globals
				at: #MCSubDirectoryRepository
				ifAbsent: [ self error: aDirectoryOrString printString , ' is an unsupported repository type' ]) new)
				directory: (FileDirectory on: aDirectoryOrString allButLast);
				yourself ]
		ifFalse: [ 
			(MCDirectoryRepository new)
				directory:
						(aDirectoryOrString isString
								ifTrue: [ FileDirectory on: aDirectoryOrString ]
								ifFalse: [ aDirectoryOrString ]);
				yourself ].
	self repository: repository! !
