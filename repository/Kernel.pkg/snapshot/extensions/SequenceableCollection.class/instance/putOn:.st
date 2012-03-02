
!SequenceableCollection methodsFor: '*Kernel-Extensions'!
putOn: aStream

	self do: [ :each | each putOn: aStream ]! !
