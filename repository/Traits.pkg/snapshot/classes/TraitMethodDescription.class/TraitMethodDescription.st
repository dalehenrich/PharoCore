
Object subclass: #TraitMethodDescription
	instanceVariableNames: 'selector locatedMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Traits-Composition'!

!TraitMethodDescription commentStamp: '<historical>' prior: 0!
Used by TraitComposition to encapsulates a collection of methods for one particular selector when querying for changes. According to the number and kind of those methods a provided method exists, there is a conflict or there are no provided nor conflicting methods at all. I provide the interface to query for those situations, e.g., effectiveMethod returns the provided method or the conflict marker method.
!
