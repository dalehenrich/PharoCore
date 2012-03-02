
Notification subclass: #FSResolutionRequest
	instanceVariableNames: 'origin'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSResolutionRequest commentStamp: 'cwp 11/18/2009 11:38' prior: 0!
I represent a request for user assistance in resolving an origin. I am a resumable exception that gets raised when there is no way of automatically resolving a particular origin. !
