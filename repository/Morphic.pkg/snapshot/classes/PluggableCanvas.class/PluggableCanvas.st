
Canvas subclass: #PluggableCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Support'!

!PluggableCanvas commentStamp: '<historical>' prior: 0!
An abstract canvas which modifies the behavior of an underlying canvas in some way.  Subclasses should implement apply:, which takes a one argument block and an actual canvas to draw on.  See apply: for the specific definition.!
