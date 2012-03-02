
!SystemNavigationTest methodsFor: 'testing'!
testNoUnusedBlocks
"issue 3193 - prevent unused blocks since there is a bug"
	self assert: self systemNavigationToTest unusedBlocks isEmpty! !
