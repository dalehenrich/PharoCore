
!Inspector methodsFor: 'menu commands'!
classHierarchy
	"Create and schedule a class list browser on the receiver's hierarchy."

	self systemNavigation
		browseHierarchy: self selectedClassOrMetaClass ! !
