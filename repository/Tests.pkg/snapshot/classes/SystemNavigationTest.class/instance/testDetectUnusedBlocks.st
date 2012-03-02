
!SystemNavigationTest methodsFor: 'testing'!
testDetectUnusedBlocks
	
	| class detectedUnusedBlocks |
	class := self classFactory newClass.
	class compileSilently: 'm true ifTrue: [ [ code which never runs ] ]'.
	detectedUnusedBlocks :=  self systemNavigationToTest unusedBlocks.
	self assert: detectedUnusedBlocks size = 1.
	self assert: detectedUnusedBlocks first = (class name asString, ' m')
	! !
