
FSAbstractEnumerationVisitor subclass: #FSCollectVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSCollectVisitor commentStamp: 'cwp 11/18/2009 12:32' prior: 0!
I am a visitor that collects objects from the nodes I visit. I take a block similar to those passed to Collection>>collect:. I evaluate the block with DirectoryEntries for the nodes I visit, and collect the objects answered into an array.

I can use any guide, and the objects in the array I produce will reflect the order imposed by the guide.!
