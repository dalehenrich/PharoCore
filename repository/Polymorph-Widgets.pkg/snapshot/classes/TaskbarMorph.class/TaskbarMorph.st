
Morph subclass: #TaskbarMorph
	instanceVariableNames: 'tasks orderedTasks'
	classVariableNames: 'ShowTaskbar ShowWindowPreview'
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!TaskbarMorph commentStamp: 'AlainPlantec 1/7/2010 22:47' prior: 0!
Themed synchronous taskbar (not using #step to poll windows). The buttons provide visual feedback as to whether a window is active or minimised (collapsed) plus a popup menu with options to restore, minimise, maximise and close the associated window. Optional (via settings) preview of the window while mouse is over a taskbar button.
!
