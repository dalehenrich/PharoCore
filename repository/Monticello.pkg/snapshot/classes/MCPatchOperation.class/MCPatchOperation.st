
Object subclass: #MCPatchOperation
	instanceVariableNames: 'isApplicable isConflict'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Patching'!

!MCPatchOperation commentStamp: 'StephaneDucasse 6/24/2011 14:15' prior: 0!
I'm an abstract class that represent an single delta element between two packages: removal, addition or modification.!
