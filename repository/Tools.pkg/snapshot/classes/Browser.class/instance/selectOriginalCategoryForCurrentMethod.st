
!Browser methodsFor: 'message category list'!
selectOriginalCategoryForCurrentMethod
	"private - Select the message category for the current method. 
	 
	 Note:  This should only be called when somebody tries to save  
	 a method that they are modifying while ALL is selected. 
	 
	 Returns: true on success, false on failure."
	| aSymbol selectorName |
	aSymbol := self categoryOfCurrentMethod.
	selectorName := self selectedMessageName.
	(aSymbol notNil and: [aSymbol ~= ClassOrganizer allCategory])
		ifTrue: 
			[messageCategoryListIndex := (self messageCategoryList indexOf: aSymbol).
			messageListIndex := (self messageList indexOf: selectorName).
			self changed: #messageCategorySelectionChanged.
			self changed: #messageCategoryListIndex.	"update my selection"
			self changed: #messageList.
			self changed: #messageListIndex.
			^ true].
	^ false! !
