
!Browser methodsFor: 'message category functions'!
showHomeCategory
	"Show the home category of the selected method.  This is only really useful if one is in a tool that supports the showing of categories.  Thus, it's good in browsers and hierarchy browsers but not in message-list browsers"

	| aSelector |
	self okToChange ifTrue:
		[(aSelector := self selectedMessageName) ifNotNil:
			[self selectOriginalCategoryForCurrentMethod.
			self selectedMessageName: aSelector]]! !
