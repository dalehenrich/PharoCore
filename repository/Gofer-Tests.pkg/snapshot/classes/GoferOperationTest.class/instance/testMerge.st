
!GoferOperationTest methodsFor: 'testing'!
testMerge
	| initial |
	initial := gofer copy.
	initial version: 'GoferBar-jf.1'; load.
	gofer package: 'GoferBar'; load.
	(Smalltalk globals classNamed: #GoferBar) compile: 'foo'.
	self shouldnt: [ gofer merge ] raise: Error.
	self assert: (self hasClass: #GoferBar selector: #foo)! !
