
!ScriptLoader methodsFor: 'menu integration actions'!
checkImageIsUptodate

	| stream last number |
	self class checkImageInSyncWithUpdate 
		ifFalse: [^ true].	
	stream := FileDirectory default oldFileNamed: self updatesListFileName.
	stream contents linesDo: [ :each | last := each ].
	stream close.
	last isNil 
		ifTrue: [^ false]. "in case the file is empty"
	 (last copyUpTo: $-) isAllDigits
		ifFalse: [^ true].  			"for cases where we have #Pharo1.1rc1 starting the line"
	number := (last copyUpTo: $-) asNumber.
	^ number = self getLatestUpdateNumber.
	! !
