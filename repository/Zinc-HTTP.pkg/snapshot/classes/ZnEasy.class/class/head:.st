
!ZnEasy class methodsFor: 'operations'!
head: urlObject
	^ self client
		url: urlObject;
		head;
		response! !
