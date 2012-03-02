
Object subclass: #AnnouncementLogger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SystemAnnouncements'!

!AnnouncementLogger commentStamp: 'StephaneDucasse 5/9/2011 17:17' prior: 0!
Use me to debug and log to the transcript annoncements.


AnnouncementLogger new subscribeTo: SystemAnnouncer announcer

To unsubscribe

AnnouncementLogger  allInstancesDo: [:each | SystemAnnouncer announcer unsubscribe: each ]!
