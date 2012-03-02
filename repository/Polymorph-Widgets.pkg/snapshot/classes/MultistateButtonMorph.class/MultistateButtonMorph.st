
Morph subclass: #MultistateButtonMorph
	instanceVariableNames: 'enabled active over down stateMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!MultistateButtonMorph commentStamp: 'gvc 10/21/2008 13:27' prior: 0!
A simple button that handles multiple fillstyle states:
	Normal
	Mouse-over
	Mouse-down-inside
	Mouse-down outside	
with variants being a combination of passive/active and enabled/disabled.!
