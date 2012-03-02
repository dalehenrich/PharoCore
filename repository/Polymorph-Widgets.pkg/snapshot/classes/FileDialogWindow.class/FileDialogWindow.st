
DialogWindow subclass: #FileDialogWindow
	instanceVariableNames: 'directoryTreeMorph fileListMorph directories selectedDirectory selectedFileIndex fileSelectionBlock showDirectoriesInFileList fileSortBlock fileNameText defaultExtension actionSelector answer entryCache entryCacheDirectory previewType previewMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!FileDialogWindow commentStamp: 'gvc 5/18/2007 13:10' prior: 0!
Dialog based file chooser for selcting or saving files. Supports various types of answer (file stream, file name, directory path etc) with optional extension filters and image or text file preview.!
