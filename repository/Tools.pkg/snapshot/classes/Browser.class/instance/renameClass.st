
!Browser methodsFor: 'class functions'!
renameClass
	| oldName newName obs  okToRename |
	classListIndex = 0
		ifTrue: [ ^ self ].
	self okToChange 
		ifFalse: [ ^ self ].
	oldName := self selectedClass name.
	newName := self request: 'Please type new class name' initialAnswer: oldName.
	newName isEmptyOrNil
		ifTrue: [ ^ self ].	"Cancel returns ''"
	newName := newName asSymbol.
	newName = oldName
		ifTrue: [ ^ self ].
	(Smalltalk globals includesKey: newName)
		ifTrue: [ ^ self inform: newName , ' already exists' ].
	okToRename := [ClassBuilder new validateClassName: newName] 
		on: Error 
		do: [ :ex | ^ self inform: ex printString].
	okToRename
		ifTrue: [
			self selectedClass rename: newName.
			self changed: #classList.
			self classListIndex: ((systemOrganizer listAtCategoryNamed: self selectedSystemCategoryName) indexOf: newName).
			obs := self systemNavigation allReferencesTo: (self selectedClass environment associationAt: newName).
			obs isEmpty
				ifFalse: [ self systemNavigation browseMessageList: obs name: 'Obsolete References to ' , oldName autoSelect: oldName ]]! !
