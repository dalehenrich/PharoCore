
HelpBuilder subclass: #ClassAPIHelpBuilder
	instanceVariableNames: 'addSubclasses addMethods subclassesAsSeparateTopic'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HelpSystem-Core-Builders'!

!ClassAPIHelpBuilder commentStamp: 'tbn 4/30/2010 15:37' prior: 0!
A builder to build the API Help for a class

Instance Variables
	addMethods:		<Boolean>
	addSubclasses:		<Boolean>
	subclassesAsSeparateTopic:		<Boolean>

addMethods
	- When true the builder will include method help

addSubclasses
	- When true the builder will recursively go through and add subclasses

subclassesAsSeparateTopic
	- xxxxx
!
