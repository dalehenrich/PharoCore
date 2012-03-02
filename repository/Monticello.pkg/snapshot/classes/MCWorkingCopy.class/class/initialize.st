
!MCWorkingCopy class methodsFor: 'initialize'!
initialize
	"self initialize"
	
	Smalltalk globals at: #MczInstaller ifPresent: [ :installer | self adoptVersionInfoFrom: installer ].
	self updateInstVars.	"Temporary conversion code -- remove later"
	registry ifNotNil: [ registry rehash ].	"changed #="
	self allInstancesDo: [ :each | 
			"moved notifications"
			Smalltalk globals at: #SystemChangeNotifier 
						ifPresent: [ :cls | cls uniqueInstance noMoreNotificationsFor: each ] ].
	self registerForNotifications.
	Smalltalk addToStartUpList: self.! !
