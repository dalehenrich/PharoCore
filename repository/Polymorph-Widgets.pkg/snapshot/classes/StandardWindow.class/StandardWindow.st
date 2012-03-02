
SystemWindow subclass: #StandardWindow
	uses: TEasilyThemed - {#theme}
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!StandardWindow commentStamp: 'AlainPlantec 10/17/2009 18:59' prior: 0!
Themed SystemWindow that avoids being picked up except via the title bar. Supports opening in "fullscreen" mode, taking docking bars into account.
Prevents yellow button menu.
Uses TEasilyThemed for easy theme access to subclasses.!
