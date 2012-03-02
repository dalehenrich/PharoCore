
!StandardFileStream methodsFor: 'finalization'!
finalize
	self primCloseNoError: fileID.! !
