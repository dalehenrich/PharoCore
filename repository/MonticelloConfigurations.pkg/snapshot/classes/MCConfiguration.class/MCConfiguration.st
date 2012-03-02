
Object subclass: #MCConfiguration
	instanceVariableNames: 'name dependencies repositories log'
	classVariableNames: 'DefaultLog UpgradeIsMerge'
	poolDictionaries: ''
	category: 'MonticelloConfigurations'!

!MCConfiguration commentStamp: 'StephaneDucasse 11/29/2011 22:23' prior: 0!
An MCConfiguration specifies the configuration of a set of related Monticello packages. It maintains an ordered list of package versions and a list of repositories in which the packages may be found.

An MCConfiguration may be filed out for storage as an array specification, and new instances can be created from a stored array specification.
!
