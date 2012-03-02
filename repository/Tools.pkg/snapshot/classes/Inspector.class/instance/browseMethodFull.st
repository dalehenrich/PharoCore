
!Inspector methodsFor: 'menu commands'!
browseMethodFull

	self selectedClassOrMetaClass 
		ifNotNil: [:selectedClass | SystemNavigation default browseClass: selectedClass]! !
