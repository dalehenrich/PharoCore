
HistoryNode subclass: #UndoRedoGroup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-History'!

!UndoRedoGroup commentStamp: 'AlainPlantec 12/14/2010 23:30' prior: 0!
An UndoRedoGroup is a composite node of an history tree. It is made to allow redoing or undoing of several commands in one shot. See for example its use to record all text replacement when a "replace all" is performed from a FindReplaceService (see TextEditor>>replaceAll: with: startingAt:)

Instance Variables
!
