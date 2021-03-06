
Object subclass: #PseudoClass
	instanceVariableNames: 'name definition organization source metaClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-FilePackage'!

!PseudoClass commentStamp: '<historical>' prior: 0!
I provide an inert model of a Class, used by FileContentsBrowser to manipulate filedout code. Instead of a method dictionary or selectors onto CompiledMethods, I have a dictionary ("source") of selectors onto ChangeRecords, which were, in the case of FileContentsBrowser, parsed from a source or change set file.!
