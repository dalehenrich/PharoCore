
!GoferOperationTest methodsFor: 'testing'!
testLocalChanges
	| changes |
	gofer package: 'GoferBar'; load.
	(Smalltalk globals classNamed: #GoferBar) compile: 'foo'.
	self shouldnt: [ changes := gofer localChanges ] raise: Error.
	self assert: changes operations size = 1! !
