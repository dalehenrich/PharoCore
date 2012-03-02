
!SARInstaller methodsFor: 'client services'!
getMCBootstrapLoaderClass
	^ Smalltalk globals
		at: #MCBootstrapLoader
		ifAbsent: [ 
			(self memberNamed: 'MCBootstrapLoader.st')
				ifNotNil: [ :m | 
					self fileInMemberNamed: m.
					Smalltalk globals at: #MCBootstrapLoader ifAbsent: [  ] ] ]! !
