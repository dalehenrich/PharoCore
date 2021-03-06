
!StandardFileStream class methodsFor: 'error handling'!
readOnlyFileDoesNotExistUserHandling: fullFileName

	| dir files choices selection newName fileName |
	dir := FileDirectory forFileName: fullFileName.
	files := dir fileNames.
	fileName := FileDirectory localNameFor: fullFileName.
	choices := fileName correctAgainst: files.
	choices add: 'Choose another name'.
	choices add: 'Cancel'.
	selection := UIManager default chooseFrom: choices lines: (Array with: 5)
		title: (FileDirectory localNameFor: fullFileName), ' does not exist.'.
	selection = choices size ifTrue:["cancel" ^ nil "should we raise another exception here?"].
	selection < (choices size - 1) ifTrue: [
		newName := (dir pathName , FileDirectory slash , (choices at: selection))].
	selection = (choices size - 1) ifTrue: [
		newName := UIManager default 
							request: 'Enter a new file name' 
							initialAnswer: fileName].
	newName = '' ifFalse: [^ self readOnlyFileNamed: (self fullName: newName)].
	^ self error: 'Could not open a file'! !
