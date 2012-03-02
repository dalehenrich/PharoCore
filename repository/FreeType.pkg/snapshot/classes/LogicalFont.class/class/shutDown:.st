
!LogicalFont class methodsFor: 'shutdown'!
shutDown: quitting 

	self  allSubInstances do: [:i | i clearRealFont].! !
