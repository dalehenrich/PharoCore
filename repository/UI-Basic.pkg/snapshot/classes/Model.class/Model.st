
Object subclass: #Model
	instanceVariableNames: 'dependents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Basic'!

!Model commentStamp: '<historical>' prior: 0!
Provides a superclass for classes that function as models.  The only behavior provided is fast dependents maintenance, which bypasses the generic DependentsFields mechanism.  1/23/96 sw!
