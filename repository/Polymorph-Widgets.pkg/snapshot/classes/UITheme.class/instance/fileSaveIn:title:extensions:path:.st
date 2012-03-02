
!UITheme methodsFor: 'services'!
fileSaveIn: aThemedMorph title: title extensions: exts path: path
	"Answer the result of a file save dialog with the given title, extensions and path."

	|fd|
	fd := FileDialogWindow new
		title: title;
		answerSaveFile.
	exts ifNotNil: [fd validExtensions: exts].
	path ifNotNil: [fd selectPathName: path].
	^(aThemedMorph openModal: fd) answer! !
