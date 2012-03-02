
!Object methodsFor: '*Tools-Inspector'!
doExpiredInspectCount
	self clearHaltOnce.
	self removeHaltCount.
	self inspect! !
