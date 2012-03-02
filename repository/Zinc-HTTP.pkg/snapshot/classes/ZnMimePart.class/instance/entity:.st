
!ZnMimePart methodsFor: 'accessing'!
entity: object
	entity := object.
	self headers isDescribingEntity ifFalse: [
		self headers acceptEntityDescription: object ]! !
