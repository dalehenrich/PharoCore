
!HierarchyBrowser class methodsFor: 'instance creation'!
newFor: aClass
	"Open a new HierarchyBrowser on the given class"
	|  newBrowser |
	newBrowser := self new initHierarchyForClass: aClass.
	Smalltalk tools browser 
		openBrowserView: (newBrowser openSystemCatEditString: nil)
		label: newBrowser labelString

"HierarchyBrowser newFor: Boolean"! !
