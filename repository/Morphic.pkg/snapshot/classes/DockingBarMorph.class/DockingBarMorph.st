
AlignmentMorph subclass: #DockingBarMorph
	instanceVariableNames: 'originalColor gradientRamp fillsOwner avoidVisibleBordersAtEdge autoGradient selectedItem activeSubMenu'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-DockingBar'!

!DockingBarMorph commentStamp: 'LaurentLaffont 3/4/2011 22:42' prior: 0!
I'm a kind of container which adhere to one edge of the screen. See me in action with: 

DockingBarMorph new 
	addMorph: (SimpleButtonMorph new
                                           label: 'Say hello';
                                           target: [UIManager inform: 'Hello'];
                                           actionSelector: #value);
	addMorph: (SimpleButtonMorph new
                                           label: 'Say bonjour';
                                           target: [UIManager inform: 'Bonjour'];
                                           actionSelector: #value);
	addMorph: (SimpleButtonMorph new
                                           label: 'Close';
                                           target: [DockingBarMorph allInstances last delete];
                                           actionSelector: #value);
	adhereToBottom;
	openInWorld.!
