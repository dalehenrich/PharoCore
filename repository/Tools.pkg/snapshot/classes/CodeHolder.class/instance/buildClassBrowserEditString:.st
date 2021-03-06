
!CodeHolder methodsFor: 'construction'!
buildClassBrowserEditString: aString 
	"Create and schedule a new class browser for the current selection, with initial textual contents set to aString.  This is used specifically in spawning where a class is established but a method-category is not."

	| newBrowser  |
	newBrowser := Smalltalk tools browser new.
	newBrowser setClass: self selectedClassOrMetaClass selector: nil.
	newBrowser editSelection: #newMessage.
	Smalltalk tools browser openBrowserView: (newBrowser openOnClassWithEditString: aString)
			label: 'Class Browser: ', self selectedClassOrMetaClass name
! !
