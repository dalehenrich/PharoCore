
Object subclass: #CodeLoader
	instanceVariableNames: 'sourceFiles'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Download'!

!CodeLoader commentStamp: '<historical>' prior: 0!
CodeLoader provides a way to load smalltalk source file from local or disant Url.

Example: 

CodeLoader new 
	loadSourceFiles: (Array with: 
		(#file:, 
		FileDirectory default fullName, 
		'/useless.st')); 
	installSourceFiles !
