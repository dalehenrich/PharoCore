
!TIncludesWithIdentityCheckTest methodsFor: 'tests - fixture'!
test0FixtureIncludeWithIdentityTest
	| anElement |
	self	shouldnt: [ self collectionWithCopyNonIdentical ]raise: Error.
	anElement := self collectionWithCopyNonIdentical anyOne.
	self deny: anElement == anElement copy.! !
