
HistoryLeaf subclass: #UndoRedoRecord
	instanceVariableNames: 'redoMessage undoMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-History'!

!UndoRedoRecord commentStamp: 'AlainPlantec 12/14/2010 23:26' prior: 0!
An UndoRedoRecord is a leaf of an history tree. It  holds undo and redo commands. Such a command is represented by a MessageSend. 

Instance Variables
	redoMessage:		<MessageSend>
	undoMessage:		<MessageSend>

redoMessage
	- The command which is performed for redoing

undoMessage
	- The command which is performed for undoing
!
