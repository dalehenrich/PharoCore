
!MCScriptDefinition class methodsFor: 'as yet unclassified'!
script: aString packageName: packageString
	^ self instanceLike: (self new initializeWithScript: aString packageName: packageString)! !
