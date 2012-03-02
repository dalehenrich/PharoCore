
!AbstractTool class methodsFor: 'world menu'!
menuCommandOn: aBuilder  
	<worldMenu>
	(aBuilder item: #Tools)
		order: 1.0;
		target: self;
		icon: self theme smallDoItIcon.! !
