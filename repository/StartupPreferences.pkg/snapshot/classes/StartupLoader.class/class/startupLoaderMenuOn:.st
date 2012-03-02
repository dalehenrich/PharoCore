
!StartupLoader class methodsFor: 'menu'!
startupLoaderMenuOn: aBuilder 
	<worldMenu>
	
	(aBuilder item: #startupLoader)
		action: [ self default loadStartupScript ];
		label: 'Run startup scripts';
		order: 20;
		parent: #Tools;
		help: 'Run startup "scripts';
		icon: UITheme current smallJustifiedIcon! !
