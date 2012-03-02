
Object subclass: #MCPatch
	instanceVariableNames: 'operations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Patching'!

!MCPatch commentStamp: 'StephaneDucasse 6/24/2011 14:11' prior: 0!
I represent a set of patch operations which can be applied by sending message applyTo: to my instances. !
