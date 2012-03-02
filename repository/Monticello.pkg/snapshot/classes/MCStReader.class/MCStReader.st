
MCSnapshotReader subclass: #MCStReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Storing'!

!MCStReader commentStamp: 'LaurentLaffont 3/31/2011 21:07' prior: 0!
I read Category/Classes/Methodes/.... definitions from Monticello source.st file format.

See also MCStWriter.

Example:

|source|
source := String streamContents: [:aStream| |writer|
    writer := MCStWriter on: aStream.
    writer writeDefinitions: {True asClassDefinition. False asClassDefinition}.
].

(MCStReader on: source readStream) definitions explore.!
