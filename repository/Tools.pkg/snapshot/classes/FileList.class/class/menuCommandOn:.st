
!FileList class methodsFor: 'world menu'!
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'File Browser')
		parent: #Tools;
		action:[self open]; 
		icon: self taskbarIcon.! !
