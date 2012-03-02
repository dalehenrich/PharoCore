
Object subclass: #MCPackageManager
	instanceVariableNames: 'package modified'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Monticello-Versioning'!

MCPackageManager class
	instanceVariableNames: 'registry'!

!MCPackageManager commentStamp: 'StephaneDucasse 4/29/2011 20:42' prior: 0!
MCPackageManager is a kind of package wrapper knowing if the package is dirty or not.
The class side manages registered package managers.

Instance Variables:
	package	<MCPackage>
	modified	<Boolean>

Class Instance Variables:
	registry	<Dictionary>!
