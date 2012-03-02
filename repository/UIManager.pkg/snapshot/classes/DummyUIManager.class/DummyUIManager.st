
UIManager subclass: #DummyUIManager
	instanceVariableNames: ''
	classVariableNames: 'ProgressBarEnabled'
	poolDictionaries: ''
	category: 'UIManager'!

!DummyUIManager commentStamp: 'LaurentLaffont 2/23/2011 20:16' prior: 0!
I'm an alternative UIManager used to run an the image without GUI.  I redefine methods which requires user input as these requests are irrelevant in a headless environment. !
