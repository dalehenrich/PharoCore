
!FileList class methodsFor: 'utility'!
suffixOf: aName
	"Answer the file extension of the given file"
	^ aName
		ifNil:
			['']
		ifNotNil:
			[(FileDirectory extensionFor: aName) asLowercase]! !
