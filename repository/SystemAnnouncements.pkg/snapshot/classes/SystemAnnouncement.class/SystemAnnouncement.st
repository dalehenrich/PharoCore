
Announcement subclass: #SystemAnnouncement
	instanceVariableNames: 'event timeStamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

!SystemAnnouncement commentStamp: '<historical>' prior: 0!
The root announcement for the events coming from the Pharo system.

Currently, it wraps the event that comes from the SystemChangeNotifier.!
