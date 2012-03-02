
!MailComposition methodsFor: 'interface'!
addAttachment
	| file fileResult fileName fileSelected|
	textEditor
		ifNotNil: [self hasUnacceptedEdits ifTrue: [textEditor accept]].
	
	fileSelected := UIManager default chooseFileMatching: nil.
	fileSelected
		ifNil: [^ self].
		
	(fileResult := FileStream fileNamed: fileSelected)
		ifNotNil: 
			[fileName := fileResult directory fullNameFor: fileResult name.
			file := FileStream readOnlyFileNamed: fileName.
			file ifNotNil:
				[file binary.
				self messageText:
						((MailMessage from: self messageText asString)
							addAttachmentFrom: file withName: fileResult name; text).
				file close]] ! !
