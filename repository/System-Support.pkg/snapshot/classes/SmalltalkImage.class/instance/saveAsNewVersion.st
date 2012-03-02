
!SmalltalkImage methodsFor: 'saving'!
saveAsNewVersion
	"Save the image/changes using the next available version number."
	"SmalltalkImage current saveAsNewVersion"
	
	| newName changesName aName anIndex |
	aName := FileDirectory baseNameFor: (FileDirectory default localNameFor: self imageName).
	anIndex := aName lastIndexOf: FileDirectory extensionDelimiter ifAbsent: [nil].
	(anIndex notNil and: [(aName copyFrom: anIndex + 1 to: aName size) isAllDigits])
		ifTrue:
			[aName := aName copyFrom: 1 to: anIndex - 1].

	newName := FileDirectory default nextNameFor: aName extension: FileDirectory imageSuffix.
	changesName := self fullNameForChangesNamed: newName.

	"Check to see if there is a .changes file that would cause a problem if we saved a new .image file with the new version number"
	(FileDirectory default fileOrDirectoryExists: changesName)
		ifTrue:
			[^ self inform:
'There is already .changes file of the desired name,
', newName, '
curiously already present, even though there is
no corresponding .image file.   Please remedy
manually and then repeat your request.'].

	^self saveAs: newName


! !
