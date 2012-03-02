
!TPureBehavior methodsFor: 'copying'!
postCopy
	super postCopy.
	self methodDictionary: self copyOfMethodDictionary! !
