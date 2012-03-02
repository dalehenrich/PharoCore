
Object subclass: #TTKernPair
	instanceVariableNames: 'left right value mask'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrueType-Fonts'!

!TTKernPair commentStamp: '<historical>' prior: 0!
A TTKernPair represents a TrueType kerning pair.

Instance variables:
	left	<Integer>	The glyph index for the left character.
	right <Integer>	The glyph index for the right character.
	value <Integer>	The amount of kerning.
	mask <Integer>	An efficient representation for the left and the right value.!
