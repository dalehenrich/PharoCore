
!SmalltalkEditor methodsFor: 'menu messages'!
browseClassFrom: aClassString
	"Launch a hierarchy browser for the class indicated by the current selection.  If multiple classes matching the selection exist, let the user choose among them."
	
	| selectedClass |
	self lineSelectAndEmptyCheck: [^ self].
	selectedClass := model systemNavigation 
				classFromPattern: aClassString
				withCaption: 'choose a class to browse...'.
				
	selectedClass isNil ifTrue: [^ self internalCallToImplementorsOf: aClassString ].
	
	model systemNavigation browseClass: selectedClass .! !
