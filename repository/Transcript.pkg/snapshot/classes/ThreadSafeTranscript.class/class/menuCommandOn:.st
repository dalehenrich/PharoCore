
!ThreadSafeTranscript class methodsFor: 'world menu'!
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Transcript')
		parent: #Tools;
		action:[Transcript open]; 
		icon: self taskbarIcon.! !
