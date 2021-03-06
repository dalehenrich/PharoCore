
!MirrorPrimitiveTests methodsFor: 'tests'!
testMirrorSize

	<expectedFailure>

	| stackpBefore stackpAfter |
	stackpBefore := thisContext stackPtr.
	self assert: (thisContext objectSize: #(1 2 3)) = 3.
	self assert: (thisContext objectSize: '123') = 3.
	self assert: (thisContext objectSize: nil) = 0.
	self assert: (thisContext objectSize: 1) = 0.
	stackpAfter := thisContext stackPtr.
	self assert: stackpBefore = stackpAfter. "Make sure primitives pop all their arguments"! !
