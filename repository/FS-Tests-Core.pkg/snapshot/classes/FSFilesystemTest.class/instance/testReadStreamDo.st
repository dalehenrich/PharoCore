
!FSFilesystemTest methodsFor: 'tests-references'!
testReadStreamDo
	| reference |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	self 
		should: [ reference readStreamDo: [ :stream | self assert: false ] ] 
		raise: FSFileDoesNotExist.
	reference writeStreamDo: [ :ws | ws nextPutAll: 'griffle' ].
	self assert: (reference readStreamDo: [ :stream | stream contents asString ]) 
		= 'griffle'! !
