
!Finder methodsFor: 'accessing'!
selection: anObject
	"anObject is a selection holder"
	"Depending of the value of currentSearchMode, I fill selectedMethod and SelectedClass with the good items."
	"Then, I update the source code text area"

	| path method class |
	(anObject isNil or: [anObject selectedNodePath isNil]) ifTrue: [
		self selectedClass: nil.
		self selectedMethod: nil.
		^self].
	path := anObject selectedNodePath.
	self currentSearchMode = #Selectors
		ifTrue: [
			method := path first.
			class := path at: 2 ifAbsent:[nil]].
	self currentSearchMode = #Classes
		ifTrue: [
			class := path first.
			method := path at: 2 ifAbsent:[nil]].
	self currentSearchMode = #Source
		ifTrue: [
			method := path first.
			class := path at: 2 ifAbsent:[nil]].
	self currentSearchMode = #Examples
		ifTrue: [
			method := path first.
			class := path at: 2 ifAbsent:[nil]].
	self currentSearchMode = #Pragmas
		ifTrue: [
			method := path at:2 ifAbsent: [ nil ].
			class := path at: 3 ifAbsent:[nil]].		
	self selectedClass: (class
							ifNil: [nil] 
							ifNotNilDo: [:each | each item]).
	self selectedMethod: (method
							ifNil: [nil]
							ifNotNilDo: [:each | each item]).
	self triggerEvent: #updateSourceCode! !
