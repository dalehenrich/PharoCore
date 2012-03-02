
FSVisitor subclass: #FSCopyVisitor
	instanceVariableNames: 'source dest'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSCopyVisitor commentStamp: 'cwp 11/18/2009 12:30' prior: 0!
I create a copy of the directory tree that I visit. I use the PreorderGuide so that I can create directories before creating their contents. !
