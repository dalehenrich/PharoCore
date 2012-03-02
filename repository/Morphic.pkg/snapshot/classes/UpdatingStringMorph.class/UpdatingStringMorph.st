
StringMorph subclass: #UpdatingStringMorph
	instanceVariableNames: 'format target lastValue getSelector putSelector floatPrecision growable stepTime autoAcceptOnFocusLoss minimumWidth maximumWidth'
	classVariableNames: ''
	poolDictionaries: 'TextConstants'
	category: 'Morphic-Widgets'!

!UpdatingStringMorph commentStamp: 'marcus.denker 9/14/2008 19:03' prior: 0!
A StringMorph that constantly tries to show the current data from the target object.  When sent #step, it shows what the target objects has (target perform: getSelector).  When edited (with shift-click), it writes back to the target.

floatPrecision = 1. to round to integer.
floatPrecision = .1 to round to 1 decimal place, etc.

Even when ((target isNil) or: [getSelector == nil]), the user would still like to edit the string with shift-click.!
