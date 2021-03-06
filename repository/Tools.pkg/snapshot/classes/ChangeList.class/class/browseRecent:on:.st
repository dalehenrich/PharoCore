
!ChangeList class methodsFor: 'public access'!
browseRecent: charCount on: origChangesFile 
	"Opens a changeList on the end of the specified changes log file"
	| changeList end changesFile |
	changesFile := origChangesFile readOnlyCopy.
	changesFile setConverterForCode.
	end := changesFile size.
	Cursor read
		showWhile: [changeList := self new
						scanFile: changesFile
						from: (0 max: end - charCount)
						to: end].
	changesFile close.
	self
		open: changeList
		name: 'Recent changes'
		multiSelect: true! !
