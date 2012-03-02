
Object subclass: #MCRepositoryGroup
	instanceVariableNames: 'repositories useCache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Versioning'!

MCRepositoryGroup class
	instanceVariableNames: 'default'!

!MCRepositoryGroup commentStamp: '<historical>' prior: 0!
A singleton class, holds the list of repositories. Can look for a requested VersionInfo among its repositories.!
