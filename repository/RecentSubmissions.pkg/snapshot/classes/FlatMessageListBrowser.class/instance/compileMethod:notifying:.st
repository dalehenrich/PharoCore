
!FlatMessageListBrowser methodsFor: 'text'!
compileMethod: aString notifying: aController

	| method class |
	self textArea hasUnacceptedEdits: false.
	method := self 
				getMethod: selectedItem
				ifAbsent: ["use the information from the tree"
					class := self selectedNode getClass.
					nil].
	method ifNotNil: [:m | class := m realClass].
	class compile: aString notifying: aController.! !
