
!AbstractTool methodsFor: 'package'!
addPackagesAsGroup: aCollection named: aString

	aCollection
		ifNotEmpty: [:packages || blocks | 
			blocks := OrderedCollection new.
			packages do: [:package | blocks add: [ package orderedClasses]].
			^ (self groupsManager	
					addADynamicGroupSilentlyNamed: aString 
					blocks: blocks)]! !
