
!SystemNavigation methodsFor: '*Tools-Browser'!
hierarchyBrowserClass

	hierarchyBrowserClass ifNil: [hierarchyBrowserClass := self defaultHierarchyBrowserClass].
	^ hierarchyBrowserClass! !
