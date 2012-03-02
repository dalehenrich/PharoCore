
!TimeProfiler class methodsFor: 'world menu'!
menuCommandOn: aBuilder 
	<worldMenu>
	(aBuilder item: #'Time profiler')
		parent: #Tools;  
		icon: self theme smallDebugIcon;
		action: [TimeProfiler new open]! !
