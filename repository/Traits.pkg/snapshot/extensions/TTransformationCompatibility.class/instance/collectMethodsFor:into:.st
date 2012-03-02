
!TTransformationCompatibility methodsFor: 'enquiries'!
collectMethodsFor: aSelector into: methodDescription
	(self includesSelector: aSelector) ifTrue: [ 
		methodDescription addLocatedMethod: (
			RGMethodDefinition
				realClass: self
				selector: aSelector)]! !
