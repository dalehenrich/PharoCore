
!ZnEasy class methodsFor: 'operations'!
post: urlObject data: entity
	^ self client
		url: urlObject;
		entity: entity;
		post;
		response! !
