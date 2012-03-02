
!ScriptLoader methodsFor: 'pharo - updates'!
update14197
	"self new update14197"
	SystemChangeNotifier uniqueInstance 
	noMoreNotificationsFor: SystemAnnouncer.
	self withUpdateLog: '- Issue 4905:	Clean SystemAnnouncement private/public.

- Issue 4912:	Float infinity and Float nan should print themselves. Float are self evaluating finally.
	

SystemChangeNotifier uniqueInstance 
	noMoreNotificationsFor: SystemAnnouncer'.
	self loadTogether: self script460 merge: false.
	SystemAnnouncer initialize.
	self flushCaches.
! !
