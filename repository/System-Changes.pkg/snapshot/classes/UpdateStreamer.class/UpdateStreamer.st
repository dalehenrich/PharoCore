
Object subclass: #UpdateStreamer
	instanceVariableNames: 'applyChanges silent upToNumber saveLocally path pharoServer'
	classVariableNames: 'UpdateDownloader'
	poolDictionaries: ''
	category: 'System-Changes'!

!UpdateStreamer commentStamp: 'StephaneDucasse 9/1/2010 21:59' prior: 0!
I'm a little class inspired heavily from Utilities that download update.list and launch update.

you can tell me to update throw a given number of update or to be verbose.


UpdateStreamer new 
	beVerbose;
	updateFromServer
	
This will update all the updates available and show up dialogs
	!
