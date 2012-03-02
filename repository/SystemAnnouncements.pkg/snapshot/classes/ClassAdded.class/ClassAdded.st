
SystemAnnouncement subclass: #ClassAdded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

!ClassAdded commentStamp: 'cyrilledelaunay 1/18/2011 11:56' prior: 0!
This announcement will be emitted when a class or a trait is added, using:
	=> Trait >> named: (the notification is done in Trait >> named:uses:category:env:)
	=> Class >> subclass:
	!
