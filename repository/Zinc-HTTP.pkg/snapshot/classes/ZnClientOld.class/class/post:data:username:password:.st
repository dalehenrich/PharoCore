
!ZnClientOld class methodsFor: 'operations'!
post: urlObject data: entity username: username password: password
	self deprecated: 'Please use ZnEasy'.
	^ ZnEasy post: urlObject data: entity username: username password: password! !
