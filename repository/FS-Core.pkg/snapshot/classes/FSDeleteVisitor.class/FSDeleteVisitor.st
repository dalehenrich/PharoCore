
FSVisitor subclass: #FSDeleteVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSDeleteVisitor commentStamp: 'cwp 11/18/2009 12:30' prior: 0!
I delete the directory tree that I visit. I use the PostorderGuide so that I can delete files before deleting their containing directories.!
