
!ZnApplicationFormUrlEncodedEntity methodsFor: 'initialize-release'!
initialize
	super initialize.
	fields := ZnMultiValueDictionary new.
	self contentType: self class designatedMimeType ! !
