
!Delay methodsFor: 'private'!
unschedule
	AccessProtect critical:[
		FinishedDelay := self.
		TimingSemaphore signal.
	].! !
