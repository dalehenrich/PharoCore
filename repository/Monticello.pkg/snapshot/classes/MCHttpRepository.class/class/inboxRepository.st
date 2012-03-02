
!MCHttpRepository class methodsFor: 'accessing'!
inboxRepository
	^ MCHttpRepository new 
	 	location: 'http://ss3.gemstone.com/ss/PharoInbox/';
		user: '';
		password: ''! !
