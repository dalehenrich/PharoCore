
!FlatMessageListBrowser methodsFor: 'menus'!
buildMenu: aMenuMorph
	^ aMenuMorph
		defaultTarget: self;
		add: 'Browse full (b)' action: #browseSelectedItem;
		add: 'Inspect method' action: #inspectSelectedItem;
		addLine;
		add: 'Remove method (x)' target: self selector: #removeMethod:inClass: argumentList: {self selectedMethod. self selectedClassOrMetaClass};
		add: 'Toggle break on entry' action: #toggleBreakOnEntry;
		addLine;
		add: 'Senders of... (n)'		action: #browseSenders;
		add: 'Implementors of... (m)'	action:	#browseImplementors;
		add: 'Users of... (N)' action: #browseUsers;
		add: 'Versions (v)'	action:	#browseVersions;
		yourself! !
