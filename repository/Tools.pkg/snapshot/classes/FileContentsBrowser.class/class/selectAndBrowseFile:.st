
!FileContentsBrowser class methodsFor: 'file list services'!
selectAndBrowseFile: aFileList
	"When no file are selected you can ask to browse several of them"

	| selectionPattern files |
	selectionPattern := UIManager default request:'What files?' initialAnswer: '*.cs;*.st'.
	selectionPattern ifNil: [selectionPattern := String new].
	files := (aFileList directory fileNamesMatching: selectionPattern) 
				collect: [:each | aFileList directory fullNameFor: each].
	self browseFiles: files.


! !
