
!FileList methodsFor: 'file menu action'!
renameFile
	"Rename the currently selected file"
	| newName response |
	listIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	(response := UIManager default request: 'NewFileName?' translated
 					initialAnswer: reference basename)
		isEmptyOrNil ifTrue: [^ self].
	newName := response asFileName.
	newName = reference basename ifTrue: [^ self].
	reference renameAs: newName.
	self updateFileList.
	listIndex := list findFirst: [:item | (self fileNameFromFormattedItem: item) = newName].
	
	self halt.
	listIndex > 0 
		ifTrue: [reference := newName].
	self changed: #fileListIndex.
! !
