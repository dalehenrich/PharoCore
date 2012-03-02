
Object subclass: #Inspector
	instanceVariableNames: 'contents object selectionIndex timeOfLastListUpdate selectionUpdateTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Inspector'!

!Inspector commentStamp: '<historical>' prior: 0!
I represent a query path into the internal representation of an object. As a StringHolder, the string I represent is the value of the currently selected variable of the observed object.!
