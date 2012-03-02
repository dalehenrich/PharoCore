
!StandardFileStream class methodsFor: 'error handling'!
fileExistsUserHandling: fullFileName
	| dir localName choice newName newFullFileName |
	dir := FileDirectory forFileName: fullFileName.
	localName := FileDirectory localNameFor: fullFileName.
	choice := UIManager default chooseFrom:{
		'overwrite that file'.
		'choose another name'.
		'cancel'
	} title: localName, ' already exists.'.
 
	choice = 1 ifTrue: [
		dir deleteFileNamed: localName
			ifAbsent: [self error: 'Could not delete the old version of that file'].
		^ self new open: fullFileName forWrite: true].

	choice = 2 ifTrue: [
		newName := UIManager default request: 'Enter a new file name' initialAnswer: fullFileName.
		newName isNil ifTrue: [Abort signal].
		newFullFileName := self fullName: newName.
		^ self newFileNamed: newFullFileName].

	Abort signal: 'Please close this to abort file opening'! !
