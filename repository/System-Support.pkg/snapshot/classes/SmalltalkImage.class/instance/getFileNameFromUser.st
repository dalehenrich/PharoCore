
!SmalltalkImage methodsFor: 'snapshot and quit'!
getFileNameFromUser

	| newName |
	newName := UIManager default
		request: 'New File Name?' translated
		initialAnswer: (FileDirectory localNameFor: self imageName).
	newName isEmptyOrNil ifTrue: [^nil].
	((FileDirectory default fileOrDirectoryExists: (self fullNameForImageNamed: newName)) or:
	 [FileDirectory default fileOrDirectoryExists: (self fullNameForChangesNamed: newName)]) ifTrue: [
		(self confirm: ('{1} already exists. Overwrite?' translated format: {newName})) ifFalse: [^nil]].
	^newName
! !
