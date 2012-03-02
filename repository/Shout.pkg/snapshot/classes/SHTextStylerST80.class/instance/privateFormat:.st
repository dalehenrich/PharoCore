
!SHTextStylerST80 methodsFor: 'private'!
privateFormat: aText 
	aText asString = Object sourceCodeTemplate
		ifTrue: [^ self parseableSourceCodeTemplate asText].
	^ aText! !
