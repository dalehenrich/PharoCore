
!SmalltalkEditor methodsFor: 'menu messages'!
internalCallToBrowse: aSelector
	"Launch a browser for the class indicated by the given selector. 
	If multiple classes matching the selection exist, let the user choose among them."
	| aClass |
	aClass := model systemNavigation 
				classFromPattern: aSelector
				withCaption: 'choose a class to browse...'.
	aClass ifNil: [^ self].
	model systemNavigation browseClass: aClass .! !
