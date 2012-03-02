
!HostWindowProxy class methodsFor: 'class initialization'!
initialize
"Add me to the system startup list and make sure to do a file-in init for first time loading"
"HostWindowProxy initialize"
	self startUp. "make sure we init on code load"
	Smalltalk addToStartUpList: self.! !
