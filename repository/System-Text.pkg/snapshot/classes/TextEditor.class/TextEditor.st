
Editor subclass: #TextEditor
	instanceVariableNames: 'model editingState'
	classVariableNames: 'CaseSensitiveFinds UseFindReplaceSelection UseSecondarySelection UseSelectionBar WalkAlongDisplayedLine'
	poolDictionaries: ''
	category: 'System-Text'!

TextEditor class
	instanceVariableNames: 'cmdActions shiftCmdActions'!

!TextEditor commentStamp: '<historical>' prior: 0!
See comment in Editor.

My instances edit Text, this is, they support multiple lines and TextAttributes.
They have no specific facilities for editing Smalltalk code. Those are found in SmalltalkEditor.!
