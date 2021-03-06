
!SettingTree methodsFor: 'checking'!
checkForUnknownParent
	self unclassified ifNotEmpty: [:nodesWithUnknownParent | | builder g |
		builder := SettingTreeBuilder new.
		g := (builder group: #nodesWithUnknownParent) node.
		self nodeList addFirst: g.
		g model: self.
		g item label: '*** Unclassified ***'.
		g item icon:  self theme  smallDebugIcon.
		g item order: 0.0.
		nodesWithUnknownParent do: [:node | node parentName: #nodesWithUnknownParent]]! !
