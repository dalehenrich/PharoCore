
Object subclass: #PluggableMenuSpec
	instanceVariableNames: 'label model items parentMenu'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Menus'!

!PluggableMenuSpec commentStamp: 'StephaneDucasse 6/6/2011 22:13' prior: 0!
I'm a spec for a menu. The World menu pragma based registration uses it for now. I'm moved in this package so that later the ToolBuilder package can be unloaded. 
We could probably avoid MenuSpec and just use MenuMorph instead. !
