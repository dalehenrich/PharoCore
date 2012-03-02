
SystemAnnouncement subclass: #ClassRenamed
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

!ClassRenamed commentStamp: 'cyrilledelaunay 1/18/2011 11:44' prior: 0!
the annoucement will be emitted when renaming a class or a trait using:  
	=> RenameClassRefactoring >> rename:to:
	=> class>>rename:
The corresponding event is raised in: SystemDictionary>>renameClass:from:to:!
