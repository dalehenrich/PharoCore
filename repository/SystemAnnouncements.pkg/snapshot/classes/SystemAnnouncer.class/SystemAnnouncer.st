
Announcer subclass: #SystemAnnouncer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

SystemAnnouncer class
	instanceVariableNames: 'announcer privateAnnouncer'!

!SystemAnnouncer commentStamp: '<historical>' prior: 0!
This class plays the role of the announcer for events raised by the Pharo system.

Currently, it acts as a wrapper over the SystemChangeNotifier, but in the future it should be used for announcing the events directly from the system.!
