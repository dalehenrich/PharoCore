
!Finder class methodsFor: 'menu'!
finderMenuOn: aBuilder 
	"I build a menu"
	<worldMenu>
	(aBuilder item: #Finder)
		action: [self open];
		order: 0;
		parent: #Tools;
		help: 'Looking for something ?';
		icon: self icon! !
