
!WorldState class methodsFor: 'world menu items'!
screenShotCommandOn: aBuilder 
	<worldMenu>
	(aBuilder item: #Screenshot) parent: #Tools;
		 target: World;
		 selector: #makeAScreenshot;
		 label: 'Screenshot' translated;
		 icon: self theme smallScreenshotIcon! !
