
!ToolRegistry methodsFor: '*deprecated14'!
exploreViewHierarchy: aMorph
	"Open an explorer on the given object."
	self deprecated: 'UseSmalltalk tools viewHierarchyExplorer openOn: ... instead' on: '22 January 2012' in: 'Pharo1.4'.

	^ self viewHierarchyExplorer openOn: aMorph! !
