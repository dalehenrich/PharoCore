
!TimeProfiler methodsFor: 'as yet unclassified'!
reportOtherProcesses: aBoolean
	self reportOtherProcesses ~= aBoolean
		ifTrue: [
			reportOtherProcesses := aBoolean.
			self changed: #reportOtherProcesses.
			self changed: #rootNodes]
! !
