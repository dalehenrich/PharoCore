
!FileList class methodsFor: 'modal dialogs'!
modalFileSelectorForSuffixes: aList

	| window aFileList |

	window := self morphicViewFileSelectorForSuffixes: aList.
	aFileList := window valueOfProperty: #fileListModel.
	World openModal: window.
	^aFileList getSelectedFile! !
