
!SetTest methodsFor: 'tests - with nil'!
testAllowInclusionOfNils
	| set |
	
	set := self classToBeTested  new.
	
	self shouldnt: [ set add: nil ] raise: Error.
	
	self assert: ( set includes: nil ).

	self shouldnt: [ set remove: nil ] raise: Error.

	self deny: ( set includes: nil ).
! !
