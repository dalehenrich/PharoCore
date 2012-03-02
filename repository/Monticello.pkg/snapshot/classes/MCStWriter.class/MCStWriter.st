
MCWriter subclass: #MCStWriter
	instanceVariableNames: 'initializers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Storing'!

!MCStWriter commentStamp: 'LaurentLaffont 3/31/2011 21:07' prior: 0!
I write Category/Classes/Methods/.... definitions into Monticello source.st file format found in .mcz packages.    

See also MCStReader

Example:

String streamContents: [:aStream| |writer|
    writer := MCStWriter on: aStream.
    writer writeDefinitions: {True asClassDefinition. False asClassDefinition}.
]!
