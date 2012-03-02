
Morph subclass: #SVColorSelectorMorph
	instanceVariableNames: 'selectedColor locationMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!SVColorSelectorMorph commentStamp: 'gvc 8/8/2007 14:36' prior: 0!
A colour selector that displays an area with saturation on the x axis and volume on the y axis. Provides interactive selection of colour by mouse. For the moment it is event rather than model based.
Setting the color will specify the hue and setting the selectedColor will specify the saturation and volume (may have a different hue to that displayed if not in sync).!
