
RGNamedDefinition subclass: #RGAbstractContainer
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring-Core-Containers'!

!RGAbstractContainer commentStamp: 'VeronicaUquillas 5/12/2011 10:59' prior: 0!
This is the abstract class for container-based elements.
Elements are separated in groups by kind (e.g classes, methods, pools, etc.)
Subclasses have to define the kind of collection for a particular group of entities.
For a container the use of a dictionary or another collection (e.g. SortedCollection) to store group of elements is independent.

!
