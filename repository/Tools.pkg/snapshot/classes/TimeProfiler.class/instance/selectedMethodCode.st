
!TimeProfiler methodsFor: 'as yet unclassified'!
selectedMethodCode
	^ self selectedNode 
		ifNil: [self helpMessage]
		ifNotNil: [ :currNode | | class selector |
			class := currNode methodClass.
			selector := currNode selector.
			(class ultimateSourceCodeAt: selector ifAbsent: ['error'])
				copy asText makeSelectorBoldIn: class]! !
